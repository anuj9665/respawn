import 'package:flutter/cupertino.dart';
import 'package:respawn/model/missions.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';

class MissionProvider with ChangeNotifier {
  List<Mission> missionList = [];
  //   missionProvider.addTask(1, "First", "firstone", Level.easy, 100);
  // missionProvider.addTask(2, "Second", "secondone", Level.medium, 200);
  // missionProvider.addTask(1, "Third", "thirdone", Level.hard, 300);
  // missionProvider.addTask(1, "Fourth", "last", Level.superHard, 400);

  void addTask(
      int serialNumber, String title, String desc, Level level, int reward) {
    Mission task = Mission(
        serialNumber: serialNumber,
        title: title,
        desc: desc,
        level: level,
        reward: reward);
    missionList.insert(serialNumber - 1, task);
    notifyListeners();
  }

  void removeTask(int serialNumber) {
    missionList.removeAt(serialNumber - 1);
    notifyListeners();
  }
}
