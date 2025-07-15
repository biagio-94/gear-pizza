import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomDatePicker extends StatefulWidget {
  final String label;
  final DateTime? initialValue;
  final FormFieldValidator<DateTime>? validator;
  final ValueChanged<DateTime>? onDateSelected;

  const CustomDatePicker({
    super.key,
    this.initialValue,
    this.label = 'Seleziona una data',
    this.validator,
    this.onDateSelected,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? selectedDate;
  bool _hasFocus = false;
  bool get _hasValue => selectedDate != null;

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialValue;
    _focusNode
        .addListener(() => setState(() => _hasFocus = _focusNode.hasFocus));
  }

  @override
  void didUpdateWidget(covariant CustomDatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      selectedDate = widget.initialValue;
      if (widget.onDateSelected != null && widget.initialValue != null) {
        widget.onDateSelected!(widget.initialValue!);
      }
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _openDatePicker(BuildContext context) async {
    _focusNode.requestFocus();
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? now,
      firstDate: DateTime(1900),
      lastDate: DateTime(2300),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: Theme.of(ctx).colorScheme,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(ctx).colorScheme.primary,
            ),
          ),
        ),
        child: child!,
      ),
    );
    if (picked != null) {
      setState(() => selectedDate = picked);
      widget.onDateSelected?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final errorText = widget.validator?.call(selectedDate);

    // Stili da CustomTextInput
    final fillColor = isDark ? cs.primary : cs.primary.withOpacity(0.1);
    final labelStyle = TextStyle(
      color: cs.onSurface.withOpacity(0.8),
      fontSize: 16,
    );
    final floatingLabelStyle = TextStyle(
      color: cs.onSurface,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
    final contentPadding = EdgeInsets.symmetric(vertical: 12, horizontal: 16);
    final borderSide = BorderSide(
      color: _hasValue ? cs.onSurface : cs.onSurface.withOpacity(0.4),
      width: _hasValue ? 2.0 : 1.0,
    );

    return InkWell(
      onTap: () => _openDatePicker(context),
      child: Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: labelStyle,
            floatingLabelStyle: floatingLabelStyle,
            filled: true,
            fillColor: fillColor,
            contentPadding: contentPadding,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: borderSide),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: borderSide),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: cs.onSurface, width: 2.0)),
            errorText: errorText,
            errorStyle: TextStyle(
              color: cs.error,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: cs.error, width: 2.0)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: cs.error, width: 2.0)),
          ),
          child: Text(
            _hasValue
                ? '${selectedDate!.day.toString().padLeft(2, '0')}/${selectedDate!.month.toString().padLeft(2, '0')}/${selectedDate!.year}'
                : widget.label,
            style: TextStyle(
              color: _hasValue ? cs.onSurface : cs.onSurface.withOpacity(0.6),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
