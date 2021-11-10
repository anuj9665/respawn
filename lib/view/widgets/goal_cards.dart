import 'package:flutter/material.dart';
import 'package:respawn/utils/colors.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';

class GoalCards extends StatefulWidget {
  const GoalCards({
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
  State<GoalCards> createState() => _GoalCardsState();
}

class _GoalCardsState extends State<GoalCards> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        height: size.height * 0.35,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: colorList[widget.index % 4], width: 2),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 25,
              decoration: BoxDecoration(
                  color: colorList[widget.index % 4],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
            Container(
              height: 40,
              width: size.width,
              // color: Colors.green,
              child: Center(
                  child: Text(
                "${widget.serialNumber}. ${widget.title}",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              )),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white,
                child: Text(
                  widget.desc,
                  style: const TextStyle(overflow: TextOverflow.fade, fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  border: Border.all(
                    color: colorList[widget.index % 4],
                  )),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.reward.toString(),
                    style: TextStyle(
                        color: kPrimaryBlackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                  Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colorList[widget.index % 4]),
                    child: const Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
