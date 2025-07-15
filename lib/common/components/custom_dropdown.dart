import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomDropdown extends StatefulWidget {
  final List<DropdownMenuItem<String>>? items;
  final String label;
  final bool isEnabled;
  final ValueChanged<String?> onChanged;
  final String? initialValue;
  final FormFieldValidator<String>? validator;

  const CustomDropdown({
    super.key,
    required this.items,
    this.label = 'Seleziona un\'opzione',
    this.initialValue,
    required this.onChanged,
    this.isEnabled = true,
    this.validator,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedItem;
  final FocusNode _focusNode = FocusNode();
  bool _hasValue = false;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.initialValue;
    _hasValue = selectedItem != null;
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void didUpdateWidget(covariant CustomDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      selectedItem = widget.initialValue;
      _hasValue = selectedItem != null;
    }
  }

  List<DropdownMenuItem<String>> _uniqueItems() {
    if (widget.items == null) return [];
    final seen = <String>{};
    return widget.items!.where((item) => seen.add(item.value!)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = colorScheme.brightness == Brightness.dark;
    final items = _uniqueItems();

    if (selectedItem != null &&
        !items.any((item) => item.value == selectedItem)) {
      selectedItem = null;
      _hasValue = false;
    }

    // Stili copiati da CustomTextInput
    final fillColor =
        isDark ? colorScheme.primary : colorScheme.primary.withOpacity(0.1);
    final borderSide = BorderSide(
      color: _hasValue
          ? colorScheme.onSurface
          : colorScheme.onSurface.withOpacity(0.4),
      width: _hasValue ? 2.0 : 1.0,
    );

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: DropdownButtonFormField<String>(
        focusNode: widget.isEnabled ? _focusNode : null,
        isExpanded: true,
        decoration: InputDecoration(
          labelText: widget.label,
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
          fillColor: fillColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: borderSide,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: borderSide,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: colorScheme.onSurface, width: 2.0),
          ),
          errorStyle: TextStyle(
            color: colorScheme.error,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: colorScheme.error, width: 2.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: colorScheme.error, width: 2.0),
          ),
        ),
        value: selectedItem,
        items: items,
        onChanged: widget.isEnabled
            ? (val) {
                widget.onChanged(val);
                setState(() {
                  selectedItem = val;
                  _hasValue = val != null;
                });
              }
            : null,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        dropdownColor: fillColor,
        style: TextStyle(color: colorScheme.onSurface),
        icon: Icon(
          Icons.arrow_drop_down,
          color: colorScheme.onSurface,
        ),
        borderRadius: BorderRadius.circular(12),
        menuMaxHeight: items.length > 30 ? 300 : 200,
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
