import 'package:flutter/material.dart';
import 'package:helperhome/theme/my_colors.dart';
import 'package:helperhome/widgets/input.dart';
import 'package:helperhome/widgets/primary_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static String id = 'login';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: size.width * 0.8,
        child: ListView(
          children: <Widget>[
            //logo
            Image.asset('assets/images/Logo.png'),
            //texto
            Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 22),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Inicia sesión',
                        style: TextStyle(
                          color: MyMaterialColor.myColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Enterate de las mejores ofertas',
                        style: TextStyle(
                          color: Color(0xFF9B9999),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )),
            //email
            const Input(
              text: 'Correo electrónico',
              visibilityText: false,
              icon: Icon(Icons.alternate_email),
              type: TextInputType.emailAddress,
            ),
            //password
            const Input(
              text: 'Contraseña',
              visibilityText: true,
              icon: Icon(Icons.lock),
              type: TextInputType.visiblePassword,
            ),
            //button
            const PrimaryButton(text: 'Iniciar sesión'),
            //texto
            Column(
              children: [
                TextButton(
                  child: const Text(
                    'Olvide mi contraseña',
                    style: TextStyle(
                      color: MyMaterialColor.myColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Aún no tienes cuenta?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                        child: const Text(
                          ' Registrate',
                          style: TextStyle(
                            color: MyMaterialColor.myColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () => {
                              Navigator.pushReplacementNamed(
                                  context, '/register')
                            })
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
