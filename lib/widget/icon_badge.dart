import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
  const IconBadge({
    super.key,
    required this.icon,
    this.size,
    this.color,
  });

  final IconData icon;
  final double? size;
  final Color? color;

  @override
  State<IconBadge> createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  int countter = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Icon(
          widget.icon,
          size: widget.size,
          color: widget.color,
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(6),
            ),
            height: 12,
            width: 12,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.circular(6),
              ),
              height: 7,
              width: 7,
            ),
          ),
        ),
      ],
    );
  }
}
