import 'package:flutter/material.dart';
import 'package:helperhome/widgets/drawer.dart';
import 'package:helperhome/widgets/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(right: 70, top: 10),
              child: Image.asset(
                'assets/images/Logo_variant.png',
                width: 116,
              ),
            )),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(98), child: Search()),
      ),
      drawer: const DrawerHome(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hola',
            ),
          ],
        ),
      ),
    );
  }
}
