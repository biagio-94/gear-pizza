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
        children: List.generate(3, (index) {
          IconData icon;
          String label;
          switch (index) {
            case 0:
              icon = Icons.home;
              label = 'Home';
              break;
            case 1:
              icon = Icons.shopping_cart_outlined;
              label = 'Cart';
              break;
            default:
              icon = Icons.person_outline;
              label = 'Profile';
          }
          return _NavItem(
            index: index,
            selectedIndex: selectedIndex,
            icon: icon,
            label: label,
            onTap: onItemTapped,
            colorScheme: colorScheme,
          );
        }),
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
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
  __NavItemState createState() => __NavItemState();
}

class __NavItemState extends State<_NavItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0.9, // meno ridotto
      upperBound: 1.0,
      value: widget.index == widget.selectedIndex ? 1.0 : 0.9,
    );
  }

  @override
  void didUpdateWidget(covariant _NavItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.index == widget.selectedIndex) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.index == widget.selectedIndex;

    return Expanded(
      child: GestureDetector(
        onTap: () => widget.onTap(widget.index),
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            ScaleTransition(
              scale: _controller,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected
                      ? widget.colorScheme.primary
                      : Colors.transparent,
                ),
                child: Icon(
                  widget.icon,
                  color: isSelected
                      ? widget.colorScheme.onPrimary
                      : widget.colorScheme.onSurfaceVariant,
                  size: 24, // dimensione base più grande
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              widget.label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected
                    ? widget.colorScheme.onPrimary
                    : widget.colorScheme.onSurfaceVariant,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
