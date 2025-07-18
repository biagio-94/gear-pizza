import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.background,
        border: const Border(
          top: BorderSide(color: Colors.grey, width: 0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            index: 0,
            selectedIndex: selectedIndex,
            icon: Icons.home,
            label: 'Home',
            onTap: onItemTapped,
            colorScheme: colorScheme,
          ),
          _NavItem(
            index: 1,
            selectedIndex: selectedIndex,
            icon: Icons.shopping_cart_outlined,
            label: 'Cart',
            onTap: onItemTapped,
            colorScheme: colorScheme,
          ),
          _NavItem(
            index: 2,
            selectedIndex: selectedIndex,
            icon: Icons.person_outline,
            label: 'Profile',
            onTap: onItemTapped,
            colorScheme: colorScheme,
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final IconData icon;
  final String label;
  final ValueChanged<int> onTap;
  final ColorScheme colorScheme;

  const _NavItem({
    required this.index,
    required this.selectedIndex,
    required this.icon,
    required this.label,
    required this.onTap,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == selectedIndex;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10), // padding sopra l’icona
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? colorScheme.primary.withOpacity(0.3)
                    : Colors.transparent,
              ),
              child: Icon(
                icon,
                color: isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
                size: 22,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: colorScheme.onSurfaceVariant,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 10), // padding sotto la label
          ],
        ),
      ),
    );
  }
}
