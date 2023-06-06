import 'dart:convert';

import 'package:app_day_project/app/data/task_model.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  final String tasksKey = "Tasks";
  final FirebaseRemoteConfig _remoteConfig;

  RemoteConfigService() : _remoteConfig = FirebaseRemoteConfig.instance;

  Future<void> initialize() async {
    try {
      await _remoteConfig.fetch();
      await _remoteConfig.activate();
    } catch (e) {
      print("Failed to initialize Remote Config: $e");
    }
  }

  List<TaskModel> getTasks() {
    try {
      final tasksJson = _remoteConfig.getString(tasksKey);
      print(tasksJson);

      final List<dynamic> tasksData = jsonDecode(tasksJson);
      return tasksData.map((task) => TaskModel.fromJson(task)).toList();
    } catch (e) {
      print("Failed to parse tasks: $e");
      return []; // Return an empty list in case of an exception
    }
  }
}
