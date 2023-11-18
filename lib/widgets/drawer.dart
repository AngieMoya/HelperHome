import 'package:flutter/material.dart';
import '../theme/my_colors.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyMaterialColor.myColor,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40),
        children: <Widget>[
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.white,
            ),
            title: const Text(
              'Perfil',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text('Configuración',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.edit_note,
              color: Colors.white,
            ),
            title: const Text('Crear publicación',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {},
          ),
          const Divider(
            height: 80,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: const Text('Buscar solicitudes',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            title: const Text('Mis favoritos',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: const Text('Notificaciones',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {},
          ),
          const Divider(
            height: 80,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text('Cerrar sesión',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
