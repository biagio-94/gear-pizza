import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/text_styles.dart';

/// SocialButton personalizzato per tema chiaro e scuro
class SocialButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = cs.brightness == Brightness.dark;
    final bgColor = isDark ? cs.onSurface : cs.surface;
    final fgColor = isDark ? cs.surface : cs.onSurface;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            color: isDark ? cs.surface : cs.onSurface,
            width: 1,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          icon,
          Expanded(
            child: Center(
              child: Text(
                label,
                style: AppTextStyles.body(context)
                    .copyWith(color: fgColor, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          // Per mantenere l'icona a sinistra e testo centrato, lascia spazio a destra vuoto
          SizedBox(width: 24),
        ],
      ),
    );
  }
}

/// Gruppo di bottoni social riutilizzabile con espansione/collasso animata
class SocialButtonsGroup extends StatefulWidget {
  final VoidCallback onGoogle;
  final VoidCallback onFacebook;
  final VoidCallback onEmail;

  const SocialButtonsGroup({
    Key? key,
    required this.onGoogle,
    required this.onFacebook,
    required this.onEmail,
  }) : super(key: key);

  @override
  State<SocialButtonsGroup> createState() => _SocialButtonsGroupState();
}

class _SocialButtonsGroupState extends State<SocialButtonsGroup> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final buttons = [
      SocialButton(
        icon: Image.asset('assets/icon/google.png', width: 24, height: 24),
        label: 'Google',
        onPressed: widget.onGoogle,
      ),
      SizedBox(height: 10),
      SocialButton(
        icon: Icon(Icons.facebook, size: 24, color: Color(0xFF1877F2)),
        label: 'Facebook',
        onPressed: widget.onFacebook,
      ),
      SizedBox(height: 10),
      SocialButton(
        icon: Icon(Icons.email, size: 24),
        label: 'E-mail',
        onPressed: widget.onEmail,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedCrossFade(
          firstChild: buttons.first,
          secondChild: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons,
          ),
          crossFadeState:
              isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
          firstCurve: Curves.easeOut,
          secondCurve: Curves.easeIn,
        ),
        const SizedBox(height: 8),
        TextButton.icon(
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          icon: Icon(
            isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: Theme.of(context).colorScheme.secondary,
          ),
          label: Text(
            isExpanded ? 'Mostra meno' : 'Altri metodi',
            style: AppTextStyles.body(context).copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
