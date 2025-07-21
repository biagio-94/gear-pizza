import 'package:flutter/material.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/utils/validator.dart';

class RestaurantNameInput extends StatefulWidget {
  final String initial;
  final ValueChanged<String> onChanged;
  const RestaurantNameInput({
    Key? key,
    required this.initial,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RestaurantNameInput> createState() => _RestaurantNameInputState();
}

class _RestaurantNameInputState extends State<RestaurantNameInput> {
  late final TextEditingController _controller;
  late final FocusNode _focus;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initial);
    _focus = FocusNode()..addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (!_focus.hasFocus) {
      widget.onChanged(_controller.text.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: CustomTextInput(
        labelText: 'Nome del ristorante',
        focusNode: _focus,
        controller: _controller,
        enabled: true,
        validator: (val) => validateName(val),
      ),
    );
  }
}
