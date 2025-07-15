import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gearpizza/common/styles/text_styles.dart';

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

  @override
  void initState() {
    super.initState();
    _passwordVisible = !widget.password;
    _controller = widget.controller ?? TextEditingController();
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

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: TextFormField(
        focusNode: widget.focusNode,
        enabled: widget.enabled,
        controller: _controller,
        keyboardType: widget.keyboardType,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        inputFormatters: widget.inputFormatters,
        textInputAction: TextInputAction.next,
        style: TextStyle(color: colorScheme.onSurface),
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.password ? !_passwordVisible : false,
        decoration: InputDecoration(
          labelText: widget.labelText,
          floatingLabelStyle: AppTextStyles.inputFloatingLabelStyle(context),
          labelStyle: AppTextStyles.inputLabelStyle(context),
          filled: true,
          fillColor: colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: colorScheme.onSurface.withOpacity(0.4),
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.black, // <-- Nero quando attivo
              width: 2.0,
            ),
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
          errorStyle: TextStyle(
            color: colorScheme.error,
            fontSize: 13,
            fontWeight: FontWeight.w500,
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
