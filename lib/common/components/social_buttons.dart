import 'package:flutter/material.dart';

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
    // Su sfondo principale (background) se dark: background bianco, testo nero
    // Se light: background nero, testo bianco
    final isDark = cs.brightness == Brightness.dark;
    final bgColor = isDark ? cs.onSurface : cs.onBackground;
    final fgColor = isDark ? cs.surface : cs.background;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: icon,
      label: Text(label),
      onPressed: onPressed,
    );
  }
}

/// Gruppo di bottoni social riutilizzabile
class SocialButtonsGroup extends StatelessWidget {
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
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SocialButton(
            icon: Image.asset('assets/icon/google.png', width: 24, height: 24),
            label: 'Accedi con Google',
            onPressed: onGoogle,
          ),
          const SizedBox(height: 10),
          SocialButton(
            icon: Icon(Icons.facebook, size: 24, color: Color(0xFF1877F2)),
            label: 'Accedi con Facebook',
            onPressed: onFacebook,
          ),
          const SizedBox(height: 10),
          SocialButton(
            icon: Icon(Icons.email, size: 24),
            label: 'Registrati con email',
            onPressed: onEmail,
          ),
        ],
      );
}
