import 'package:flutter/material.dart';
import 'package:helperhome/widgets/drawer.dart';
import 'package:helperhome/widgets/profile_header.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
          ],
        ),
        drawer: const DrawerHome(),
        body: Center(
          child: SizedBox(
            child: ListView(
              children: const [
                ProfileHeader(),
              ],
            ),
          ),
        ));
  }
}
