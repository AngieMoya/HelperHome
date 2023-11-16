import 'package:flutter/material.dart';
import '../theme/my_colors.dart';

class Input extends StatelessWidget {
  final String text;
  final bool visibilityText;
  final Icon icon;
  final TextInputType type;
  const Input(
      {super.key,
      required this.text,
      required this.visibilityText,
      required this.icon,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        child: TextField(
            obscureText: visibilityText,
            keyboardType: type,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: icon,
                labelText: text,
                labelStyle: const TextStyle(
                  color: Color(0xFF9B9999),
                  fontWeight: FontWeight.w400,
                ),
                floatingLabelStyle:
                    const TextStyle(color: MyMaterialColor.myColor)),
            onChanged: (value) {}),
      ),
    );
  }
}
