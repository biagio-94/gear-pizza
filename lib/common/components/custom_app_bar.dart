import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/features/notifications/bloc/notification_bloc.dart';
import 'package:gearpizza/features/notifications/bloc/notification_state.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool? hasNotifications;
  const CustomAppBar({super.key, this.hasNotifications});
  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _searchActive = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleSearch() {
    setState(() => _searchActive = !_searchActive);
    if (_searchActive)
      _controller.forward();
    else
      _controller.reverse();
  }

  void _openProfile() {
    GoRouter.of(context).go('/dashboard/profile', extra: {});
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final bgDefault = cs.primaryContainer.withOpacity(0.95);
    final bgSearch = cs.surface;
    final fgIcon = _searchActive ? cs.onSurface : cs.secondary;

    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: SafeArea(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: _searchActive ? bgSearch : bgDefault,
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 4))
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Search icon or close
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _searchActive
                        ? IconButton(
                            key: const ValueKey('close'),
                            icon: Icon(Icons.close, size: 28, color: fgIcon),
                            onPressed: _toggleSearch,
                          )
                        : IconButton(
                            key: const ValueKey('search'),
                            icon: Icon(Icons.search, size: 28, color: fgIcon),
                            onPressed: _toggleSearch,
                          ),
                  ),
                  // Title or Search field
                  Expanded(
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: _searchActive
                          ? TextField(
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'Cerca...',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    borderSide: BorderSide.none),
                                fillColor: cs.surface,
                                filled: true,
                                prefixIcon: Icon(Icons.search, color: fgIcon),
                              ),
                            )
                          : Center(
                              child: Image.asset(
                                  'assets/icon/hyperfit_logo.png',
                                  height: 70,
                                  fit: BoxFit.contain),
                            ),
                    ),
                  ),
                  // Actions
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: _searchActive ? 0 : 1,
                    child: Row(children: [
                      BlocBuilder<NotificationBloc, NotificationState>(
                          builder: (c, s) {
                        final cnt = s.unreadCount;
                        return Stack(alignment: Alignment.center, children: [
                          IconButton(
                            icon: Icon(Icons.notifications_none,
                                size: 28, color: fgIcon),
                            onPressed: () => GoRouter.of(context)
                                .go('/dashboard/notifications'),
                          ),
                          if (cnt > 0)
                            Positioned(
                              right: 8,
                              top: 8,
                              child: Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: cs.error,
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: bgDefault, width: 1)),
                                child: Text('$cnt',
                                    style: TextStyle(
                                        color: bgDefault,
                                        fontSize: AppFontSizes.bodyTextSmall,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                        ]);
                      }),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: _openProfile,
                        child: Hero(
                          tag: 'profile-hero',
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/download.jpeg'),
                            backgroundColor: cs.onSurface.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
