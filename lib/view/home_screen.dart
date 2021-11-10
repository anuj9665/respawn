import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:respawn/controller/mission_provider.dart';
import 'package:respawn/utils/colors.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';
import 'package:respawn/view/widgets/mission_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MissionProvider missionProvider;
  

  @override
  void didChangeDependencies() {
    missionProvider = Provider.of<MissionProvider>(context,listen: false);
    // missionProvider.addTask(1, "First", "firstone", Level.easy, 100);
    // missionProvider.addTask(2, "Second", "secondone", Level.medium, 200);
    // missionProvider.addTask(1, "Third", "thirdone", Level.hard, 300);
    // missionProvider.addTask(1, "Fourth", "last", Level.superHard, 400);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kBackgroundWhiteColor,
        height: size.height,
        width: size.width,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MissionCards(
              index: index,
              serialNumber: missionProvider.missionList[index].serialNumber,
              title: missionProvider.missionList[index].title,
              desc: missionProvider.missionList[index].desc,
              rating: missionProvider.missionList[index].level,
              reward: missionProvider.missionList[index].reward,
            );
          },
          itemCount: missionProvider.missionList.length,
        ),
      ),
    );
  }
}
