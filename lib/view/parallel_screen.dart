import 'package:flutter/material.dart';
import 'package:respawn/utils/colors.dart';
import 'package:respawn/view/widgets/goal_cards.dart';

class ParallelScreen extends StatelessWidget {
  const ParallelScreen({ Key? key }) : super(key: key);

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
            return GoalCards(size: size, index: index);
          },
          itemCount:4,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}