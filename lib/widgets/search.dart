import 'package:flutter/material.dart';

import '../theme/my_colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 320,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
                prefixIcon: const Icon(
                  Icons.search,
                  color: MyMaterialColor.myColor,
                ),
                labelText: 'Que estas buscando?',
                labelStyle: const TextStyle(
                  color: MyMaterialColor.myColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onChanged: (value) {}),
        ));
  }
}
