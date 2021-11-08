import 'package:flutter/material.dart';
import 'package:respawn/utils/colors.dart';

class GoalCards extends StatelessWidget {
  const GoalCards({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        height: size.height * 0.35,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: colorList[index % 4], width: 2),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 25,
              decoration: BoxDecoration(
                  color: colorList[index % 4],
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
                "1. My Name is Anuj Yadav",
                style: TextStyle(
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
                  "LoremIpssum Performing hot reload...  560 libraries in 400msLoremIpssum P0 libraries in 400ms.LoremIpssu Performing hot reload...  560 libraries in 400ms..",
                  style:
                      TextStyle(overflow: TextOverflow.fade, fontSize: 16),
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
                    color: colorList[index % 4],
                  )),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "500",
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
                        color: colorList[index % 4]),
                    child: Center(
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
