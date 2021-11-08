import 'package:flutter/material.dart';
import 'package:respawn/view/home_page.dart';

void main() {
  runApp(const Respawn());
}

class Respawn extends StatelessWidget {
  const Respawn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
