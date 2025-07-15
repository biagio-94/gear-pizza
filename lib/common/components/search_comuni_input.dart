import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:gearpizza/common/model/comune.dart';
import 'package:gearpizza/common/model/provincia.dart';

class SearchComuniInput extends StatefulWidget {
  final ValueChanged<Map<String, String>> onItemSelected;
  final String labelText;
  final bool isProvince;
  final FormFieldValidator<String> validator;
  final Map<String, dynamic>? initialValue;

  const SearchComuniInput({
    super.key,
    required this.onItemSelected,
    required this.validator,
    this.labelText = 'Cerca',
    this.isProvince = true,
    this.initialValue,
  });

  @override
  State<SearchComuniInput> createState() => _SearchComuniInputState();
}

class _SearchComuniInputState extends State<SearchComuniInput> {
  late TextEditingController _searchController;
  BuiltList<dynamic> _filteredItems = BuiltList<dynamic>();
  BuiltList<dynamic> _allItems = BuiltList<dynamic>();
  String? _selectedValue;

  bool get _hasValue => _searchController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    // pre-fill from OCR initialValue
    if (widget.initialValue != null && !widget.isProvince) {
      final comune = widget.initialValue!['comune'] as String?;
      if (comune != null) {
        _selectedValue = comune;
        _searchController.text = comune;
      }
    }
    _searchController.addListener(_filterItems);
    WidgetsBinding.instance.addPostFrameCallback((_) => _prepareData());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _prepareData() async {
    final jsonStr =
        await rootBundle.loadString('assets/elencoProvEComuni/comuni.json');
    final List<dynamic> data = jsonDecode(jsonStr);

    if (widget.isProvince) {
      final provMap = <String, Provincia>{};
      for (final elem in data) {
        final p = elem['provincia'] as Map<String, dynamic>;
        final codice = p['codice'] as String;
        final nome = p['nome'] as String;
        provMap.putIfAbsent(
          codice,
          () => Provincia((b) => b
            ..codice = codice
            ..descrizione = nome
            ..comuni.replace(BuiltList<Comune>())),
        );
      }
      _allItems = provMap.values.toBuiltList();
    } else {
      _allItems = data.map((e) {
        return Comune((b) => b
          ..codice = e['codice'] as String
          ..descrizione = e['nome'] as String);
      }).toBuiltList();
    }

    setState(() {
      // se c'era un valore selezionato, mostra solo quell'item per placeholder
      _filteredItems =
          _selectedValue != null ? BuiltList<dynamic>() : _allItems;
    });
  }

  void _filterItems() {
    if (_selectedValue != null) return; // non filtrare se già selezionato
    final q = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = _allItems.where((item) {
        final descr = widget.isProvince
            ? (item as Provincia).descrizione!
            : (item as Comune).descrizione!;
        return descr.toLowerCase().contains(q);
      }).toBuiltList();
    });
  }

  void _selectItem(dynamic item) {
    if (widget.isProvince) {
      final prov = item as Provincia;
      _selectedValue = prov.codice;
      _searchController.text = prov.descrizione!;
      widget.onItemSelected({'provincia': prov.codice!});
    } else {
      final comune = item as Comune;
      _selectedValue = comune.descrizione;
      _searchController.text = comune.descrizione!;
      widget.onItemSelected({
        'comune': comune.descrizione!,
        'codice': comune.codice!,
      });
    }
    setState(() {
      _filteredItems = BuiltList<dynamic>();
    });
  }

  void _clearSelection() {
    setState(() {
      _selectedValue = null;
      _searchController.clear();
      _filteredItems = _allItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: TextFormField(
            controller: _searchController,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            enabled: true,
            readOnly: _selectedValue != null,
            cursorColor: colorScheme.onSurface,
            cursorWidth: 2.0,
            style: TextStyle(color: colorScheme.onSurface),
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: TextStyle(
                color: colorScheme.onSurface.withOpacity(0.8),
                fontSize: 16,
              ),
              floatingLabelStyle: TextStyle(
                color: colorScheme.onSurface,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              filled: true,
              fillColor: isDark
                  ? colorScheme.primary
                  : colorScheme.primary.withOpacity(0.1),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: _hasValue
                      ? colorScheme.onSurface
                      : colorScheme.onSurface.withOpacity(0.4),
                  width: _hasValue ? 2.0 : 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: _hasValue
                      ? colorScheme.onSurface
                      : colorScheme.onSurface.withOpacity(0.4),
                  width: _hasValue ? 2.0 : 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: colorScheme.onSurface,
                  width: 2.0,
                ),
              ),
              errorStyle: TextStyle(
                color: colorScheme.error,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: colorScheme.error,
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: colorScheme.error,
                  width: 2.0,
                ),
              ),
              prefixIcon: _selectedValue == null
                  ? Icon(Icons.search, color: colorScheme.onSurface)
                  : null,
              suffixIcon: _selectedValue != null
                  ? IconButton(
                      icon: Icon(Icons.clear, color: colorScheme.onSurface),
                      onPressed: _clearSelection,
                    )
                  : null,
            ),
          ),
        ),
        if (_searchController.text.isNotEmpty && _selectedValue == null) ...[
          const SizedBox(height: 8),
          _buildDropdown(context),
        ]
      ],
    );
  }

  Widget _buildDropdown(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: colorScheme.onSurface.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.onSurface.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: _filteredItems.isEmpty
          ? Center(
              child: Text(
                'Nessun elemento trovato',
                style: TextStyle(color: colorScheme.onSurface.withOpacity(0.7)),
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: _filteredItems.length,
              separatorBuilder: (_, __) => Divider(
                height: 1,
                color: colorScheme.onSurface.withOpacity(0.1),
              ),
              itemBuilder: (ctx, i) {
                final item = _filteredItems[i];
                final descr = widget.isProvince
                    ? (item as Provincia).descrizione
                    : (item as Comune).descrizione;
                return ListTile(
                  leading: Icon(Icons.location_on,
                      color: colorScheme.onSurface.withOpacity(0.8)),
                  title: Text(
                    descr!,
                    style: TextStyle(color: colorScheme.onSurface),
                  ),
                  onTap: () => _selectItem(item),
                );
              },
            ),
    );
  }
}
