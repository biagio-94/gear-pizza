import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInput extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final bool password;
  final FocusNode? focusNode;
  final bool? enabled;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextInput({
    super.key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    required this.validator,
    this.password = false,
    this.controller,
    this.enabled,
    this.textCapitalization,
    this.focusNode,
    this.inputFormatters,
  });

  @override
  CustomTextInputState createState() => CustomTextInputState();
}

class CustomTextInputState extends State<CustomTextInput> {
  late TextEditingController _controller;
  bool _passwordVisible = false;
  bool _hasValue = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = !widget.password;
    _controller = widget.controller ?? TextEditingController();

    _controller.addListener(() {
      setState(() {
        _hasValue = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: TextFormField(
        focusNode: widget.focusNode,
        enabled: widget.enabled,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        cursorColor: colorScheme.onSurface,
        cursorWidth: 2.0,
        controller: _controller,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        textInputAction: TextInputAction.next,
        style: TextStyle(color: colorScheme.onSurface),
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.password ? !_passwordVisible : false,
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
          suffixIcon: widget.password
              ? IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: colorScheme.onSurface,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
