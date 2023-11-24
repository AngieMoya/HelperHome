import 'package:flutter/material.dart';
import '../theme/my_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5, left: 160),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 122,
              decoration: const BoxDecoration(color: MyMaterialColor.myColor),
              child: const Text(
                'Marisol Gutierrez',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 5, left: 160),
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: 122,
              child: Column(children: const [
                Text(
                  'Trabajadora domestica',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Text(
                  'Barranquilla / Atlantico',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF9B9999),
                  ),
                )
              ]),
            ),
          ],
        ),
        Positioned(
          top: 55,
          left: 20,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 216, 216),
                border: Border.all(color: Colors.white, width: 4),
                borderRadius: BorderRadius.circular(100)),
          ),
        )
      ],
    );
  }
}
