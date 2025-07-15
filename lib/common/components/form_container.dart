import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final Widget child;

  const FormContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final horizontalPadding = screenWidth < 375 ? 16.0 : 35.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: child,
    );
  }
}
