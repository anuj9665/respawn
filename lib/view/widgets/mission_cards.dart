import 'package:flutter/material.dart';
import 'package:respawn/utils/colors.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';
import 'package:respawn/view/widgets/goal_cards.dart';

class MissionCards extends StatefulWidget {
  const MissionCards({
    Key? key,
    required this.index, required this.serialNumber, required this.title, required this.desc, required this.rating, required this.reward,
  }) : super(key: key);

  final int index;
  final int serialNumber;
  final String title;
  final String desc;
  final Level rating;
  final int reward;

  @override
  State<MissionCards> createState() => _MissionCardsState();
}

class _MissionCardsState extends State<MissionCards> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.451,
      width: size.width,
      child: Column(children: [
        const Icon(
          Icons.more_vert,
          color: Colors.teal,
        ),
        GoalCards(index: widget.index,
        serialNumber: widget.serialNumber,
              title: widget.title,
              desc: widget.desc,
              rating: widget.rating,
              reward: widget.reward,),
        const Icon(
          Icons.more_vert,
          color: Colors.teal,
        ),
      ]),
    );
  }
}
