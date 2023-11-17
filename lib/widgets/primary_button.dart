import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final String route;
  const PrimaryButton({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {Navigator.pushReplacementNamed(context, route)},
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.only(top: 16, bottom: 16)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
