import 'package:flutter/material.dart';

class ActionItemsDto {
  final int id;
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ActionItemsDto({
    required this.id,
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
