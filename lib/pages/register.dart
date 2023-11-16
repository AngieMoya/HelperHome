import 'package:flutter/material.dart';

import '../theme/my_colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
          child: Center(
        child: SizedBox(
            width: size.width * 0.8,
            child: ListView(
              children: [
                Image.asset('assets/images/Logo.png'),
                const Text(
                  'Registrate',
                  style: TextStyle(
                    color: MyMaterialColor.myColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
