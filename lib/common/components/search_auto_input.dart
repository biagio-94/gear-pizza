import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/model/marca.dart';
import 'package:gearpizza/common/model/modello.dart';
import 'package:gearpizza/common/styles/text_styles.dart';

class SearchAutoInput extends StatefulWidget {
  final ValueChanged<dynamic> onItemSelected;
  final BuiltList<dynamic> initialItems;
  final String labelText;
  final bool isModelli;
  final FormFieldValidator<String> validator;
  final dynamic initialValue;
  final bool isEnabled;

  const SearchAutoInput(
      {super.key,
      required this.onItemSelected,
      required this.initialItems,
      required this.validator,
      this.labelText = 'Cerca',
      this.isEnabled = true,
      this.isModelli = false,
      this.initialValue});

  @override
  State<SearchAutoInput> createState() => _SearchAutoInputState();
}

class _SearchAutoInputState extends State<SearchAutoInput> {
  late TextEditingController _searchController;
  BuiltList<dynamic> _filteredItems = BuiltList<dynamic>();
  BuiltList<dynamic> _allItems = BuiltList<dynamic>();
  String? _selectedValue;

  @override
  void initState() {
    super.initState();

    _searchController = TextEditingController(
      text: widget.initialValue != null
          ? widget.isModelli
              ? (widget.initialValue as Modello).descrizione
              : (widget.initialValue as Marca).descrizioneMarca
          : '',
    );

    _selectedValue = widget.initialValue != null
        ? widget.isModelli
            ? (widget.initialValue as Modello).modello
            : (widget.initialValue as Marca).codiceMarca
        : null;

    _searchController.addListener(_filterItems);

    if (widget.initialValue != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onItemSelected(_selectedValue);
      });
    }

    // Prepara i dati iniziali
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _prepareData();
    });
  }

  @override
  void didUpdateWidget(SearchAutoInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Controlla se initialItems è cambiato e aggiorna i dati
    if (!identical(widget.initialItems, oldWidget.initialItems)) {
      _prepareData();
    }

    // Controlla se initialValue è cambiato e aggiorna i campi
    if (widget.initialValue != oldWidget.initialValue) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _searchController.text = widget.initialValue != null
              ? widget.isModelli
                  ? (widget.initialValue as Modello).descrizione ?? ''
                  : (widget.initialValue as Marca).descrizioneMarca ?? ''
              : '';
          _selectedValue = widget.initialValue != null
              ? widget.isModelli
                  ? (widget.initialValue as Modello).modello ?? ''
                  : (widget.initialValue as Marca).codiceMarca ?? ''
              : null;
        });
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _prepareData() {
    if (widget.isModelli) {
      _allItems = widget.initialItems.cast<Modello>().toBuiltList();
    } else {
      _allItems = widget.initialItems.cast<Marca>().toBuiltList();
    }
    _filteredItems = _allItems;
  }

  void _filterItems() {
    final query = _searchController.text.toLowerCase();

    setState(() {
      _filteredItems = _allItems.where((item) {
        final descrizione = widget.isModelli
            ? (item as Modello).descrizione?.toLowerCase()
            : (item as Marca).descrizioneMarca?.toLowerCase();
        return descrizione?.contains(query) ?? false;
      }).toBuiltList();
    });
  }

  void _selectItem(dynamic item) {
    setState(() {
      _selectedValue = widget.isModelli
          ? (item as Modello).descrizione.toString()
          : (item as Marca).descrizioneMarca;
      _searchController.text = _selectedValue ?? '';
    });

    widget.onItemSelected(widget.isModelli
        ? (item as Modello).modello
        : (item as Marca).codiceMarca);

    FocusScope.of(context).unfocus();
  }

  void _clearSelection() {
    setState(() {
      _selectedValue = null;
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: TextFormField(
            enabled: widget.isEnabled,
            readOnly: _selectedValue != null,
            controller: _searchController,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: colorScheme.onSurface,
            cursorWidth: 2.0,
            style: TextStyle(color: colorScheme.onSurface),
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: AppTextStyles.inputLabelStyle,
              floatingLabelStyle: AppTextStyles.inputFloatingLabelStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              errorStyle: AppTextStyles.inputErrorStyle,
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: colorScheme.error.withOpacity(0.8),
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
              filled: true,
              fillColor: colorScheme.onPrimary,
              suffixIcon: _selectedValue == null
                  ? Icon(
                      Icons.search,
                      size: 20,
                      color: colorScheme.primaryContainer,
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.clear,
                        size: 20,
                        color: colorScheme.primaryContainer,
                      ),
                      onPressed: _clearSelection,
                    ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        if (_searchController.text.isNotEmpty && _selectedValue == null)
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.4,
            ),
            decoration: BoxDecoration(
              color: colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: _filteredItems.isEmpty
                ? const Center(child: Text('Nessun elemento trovato'))
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = _filteredItems[index];
                      final descrizione = widget.isModelli
                          ? (item as Modello).descrizione
                          : (item as Marca).descrizioneMarca;

                      return ListTile(
                        leading: Icon(
                          Icons.directions_car,
                          color: colorScheme.onSurface,
                        ),
                        title: Text(
                          descrizione ?? '',
                          style: AppTextStyles.inputLabelStyle.copyWith(
                            color: colorScheme.onSurface,
                          ),
                        ),
                        onTap: () => _selectItem(item),
                      );
                    },
                  ),
          ),
      ],
    );
  }
}
