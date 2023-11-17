import 'package:flutter/material.dart';
import 'package:helperhome/widgets/input.dart';

import '../theme/my_colors.dart';
import '../widgets/primary_button.dart';

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
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Image.asset('assets/images/Logo.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Registrate',
                    style: TextStyle(
                      color: MyMaterialColor.myColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    children: const [
                      Input(
                          text: 'Correo electrónico',
                          visibilityText: false,
                          icon: Icon(Icons.alternate_email),
                          type: TextInputType.emailAddress),
                      Input(
                          text: 'Contraseña',
                          visibilityText: true,
                          icon: Icon(Icons.lock),
                          type: TextInputType.visiblePassword),
                      Input(
                          text: 'Confirmar contraseña',
                          visibilityText: true,
                          icon: Icon(Icons.check_circle_outline),
                          type: TextInputType.visiblePassword)
                    ],
                  ),
                ),
                const PrimaryButton(
                  text: 'Registrate',
                  route: '',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Ya tienes cuenta registrada?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                        child: const Text(
                          'Inicia sesión',
                          style: TextStyle(
                            color: MyMaterialColor.myColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () =>
                            {Navigator.pushReplacementNamed(context, '/')})
                  ],
                )
              ],
            )),
      )),
    );
  }
}
