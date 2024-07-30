import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final VoidCallback? onPressed;

  const CircularButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.containerColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.0,
      width: 27.0,
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 24.0,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
