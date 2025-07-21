import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gearpizza/common/styles/text_styles.dart';

class CustomTextArea extends StatefulWidget {
  final String labelText;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final bool? enabled;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final int minLines;
  final int maxLines;

  const CustomTextArea({
    super.key,
    required this.labelText,
    this.validator,
    this.controller,
    this.enabled,
    this.focusNode,
    this.inputFormatters,
    this.minLines = 3,
    this.maxLines = 6,
  });

  @override
  CustomTextAreaState createState() => CustomTextAreaState();
}

class CustomTextAreaState extends State<CustomTextArea> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
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
        keyboardType: TextInputType.multiline,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        inputFormatters: widget.inputFormatters,
        textInputAction: TextInputAction.newline,
        style: TextStyle(color: colorScheme.onSurface),
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
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
              color: Colors.black,
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
        ),
      ),
    );
  }
}
