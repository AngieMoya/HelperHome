import 'package:flutter/material.dart';

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
        drawer: const Drawer(),
        body: Center(
          child: SizedBox(
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
