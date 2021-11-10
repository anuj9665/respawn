import 'package:flutter/cupertino.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';

class Mission{
  int serialNumber;
  String title;
  String desc;
  Level level;
  int reward;

  Mission({required this.serialNumber, required this.title, required this.desc, required this.level, required this.reward});
}