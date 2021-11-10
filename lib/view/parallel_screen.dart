import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:respawn/controller/mission_provider.dart';
import 'package:respawn/controller/parallel_provider.dart';
import 'package:respawn/model/parallel_mission.dart';
import 'package:respawn/utils/colors.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';
import 'package:respawn/view/widgets/goal_cards.dart';

class ParallelScreen extends StatefulWidget {
  const ParallelScreen({Key? key}) : super(key: key);

  @override
  State<ParallelScreen> createState() => _ParallelScreenState();
}

class _ParallelScreenState extends State<ParallelScreen> {
  late ParallelMissionProvider parallelMissionProvider;

  @override
  void didChangeDependencies() {
    parallelMissionProvider =
        Provider.of<ParallelMissionProvider>(context, listen: false);

        parallelMissionProvider.addParallelTask("First", "firstone", Level.easy, 100);
    parallelMissionProvider.addParallelTask("Second", "secondone", Level.medium, 200);
    parallelMissionProvider.addParallelTask("Third", "thirdone", Level.hard, 300);
    parallelMissionProvider.addParallelTask("Fourth", "last", Level.superHard, 400);
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
            return GoalCards(index: index,
            title: parallelMissionProvider.parallelList[index].title,
            desc: parallelMissionProvider.parallelList[index].description,
            rating: parallelMissionProvider.parallelList[index].rating,
            reward: parallelMissionProvider.parallelList[index].reward,
            serialNumber: index+1,

            );
          },
          itemCount: parallelMissionProvider.parallelList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
