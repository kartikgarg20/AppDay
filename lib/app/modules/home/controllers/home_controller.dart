import 'package:app_day_project/app/data/task_model.dart';
import 'package:get/get.dart';

import '../../../services/remote_config_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  @override
  void onInit() {
    super.onInit();
    _initializeRemoteConfig();
  }

  RemoteConfigService _remoteConfigService = RemoteConfigService();

  Future<void> _initializeRemoteConfig() async {
    await _remoteConfigService.initialize();
    update();
  }

  List<TaskModel> get tasksMessages => _remoteConfigService.getTasks();
}
