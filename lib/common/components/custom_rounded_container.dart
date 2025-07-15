import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  final Widget child;

  const CustomRoundedContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              border: Border.all(
                width: 0,
                color: Theme.of(context).primaryColor,
              ),
            ),
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          child: SafeArea(child: child),
        ),
      ],
    );
  }
}
