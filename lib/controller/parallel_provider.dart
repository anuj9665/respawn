import 'package:flutter/cupertino.dart';
import 'package:respawn/model/parallel_mission.dart';
import 'package:respawn/utils/enums/difficulty_level.dart';

class ParallelMissionProvider with ChangeNotifier {
  List<ParallelMissions> parallelList = [];

  void addParallelTask(
      String title, String description, Level rating, int reward) {
    ParallelMissions parallelTask = ParallelMissions(
        title: title, description: description, rating: rating, reward: reward);

    parallelList.add(parallelTask);
    notifyListeners();
  }

  void removeParallelTask(int index) {
    parallelList.removeAt(index);
    notifyListeners();
  }
}
