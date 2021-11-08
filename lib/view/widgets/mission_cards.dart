import 'package:flutter/material.dart';
import 'package:respawn/utils/colors.dart';
import 'package:respawn/view/widgets/goal_cards.dart';

class MissionCards extends StatelessWidget {
  const MissionCards({
    Key? key,
    required this.size, required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.45,
      width: size.width,
      child: Column(children: [
        const Icon(
          Icons.more_vert,
          color: Colors.teal,
        ),
        GoalCards(size: size, index: index),
        const Icon(
          Icons.more_vert,
          color: Colors.teal,
        ),
      ]),
    );
  }
}

