import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:respawn/controller/mission_provider.dart';
import 'package:respawn/controller/parallel_provider.dart';
import 'package:respawn/model/missions.dart';
import 'package:respawn/view/home_page.dart';

void main() {
  runApp(const Respawn());
}

class Respawn extends StatelessWidget {
  const Respawn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MissionProvider>(
          create: (context) => MissionProvider(),
        ),
        ChangeNotifierProvider<ParallelMissionProvider>(
          create: (context) => ParallelMissionProvider(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
