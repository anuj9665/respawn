import 'package:flutter/material.dart';
import 'package:respawn/view/home_page.dart';
import 'package:respawn/view/home_screen.dart';
import 'package:respawn/view/parallel_screen.dart';
import 'package:respawn/view/sub_mission_screen.dart';

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
