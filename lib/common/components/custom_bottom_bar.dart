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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(24),
        color: colorScheme.primaryContainer.withOpacity(0.95),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            iconSize: 28,
            backgroundColor: colorScheme.primaryContainer.withOpacity(0.95),
            elevation: 0,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: colorScheme.secondary,
            unselectedItemColor: colorScheme.onSurfaceVariant,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: selectedIndex == 0
                      ? colorScheme.secondary
                      : colorScheme.onSurfaceVariant,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: selectedIndex == 2
                      ? colorScheme.secondary
                      : colorScheme.onSurfaceVariant,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: selectedIndex == 3
                      ? colorScheme.secondary
                      : colorScheme.onSurfaceVariant,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
