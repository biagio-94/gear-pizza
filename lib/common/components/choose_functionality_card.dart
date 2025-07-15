import 'package:flutter/material.dart';
import 'package:gearpizza/common/model/funzionalita.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';

class ChooseFunctionalityCard extends StatelessWidget {
  final Funzionalita funzionalita;
  final VoidCallback onTap;

  const ChooseFunctionalityCard({
    super.key,
    required this.funzionalita,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.lightBackground,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            funzionalita.titolo!,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: AppColors.lightBackground,
              fontSize: AppFontSizes.bodyText,
            ),
          ),
        ),
      ),
    );
  }
}
