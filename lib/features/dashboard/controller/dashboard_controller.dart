import 'package:get/get.dart';
import '../../../data/project/dummy/project_dummy.dart';
import '../../../data/project/model/project_model.dart';


class DashboardController extends GetxController {
  var recentlyOpenedProjects = <ProjectModel>[].obs;
  var createBoardOptions = <String>[].obs;
  var assignedTasks = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    recentlyOpenedProjects.value = DummyData.recentlyOpened;
    createBoardOptions.value = DummyData.createBoardOptions;
    assignedTasks.value = DummyData.assignedTasks;
  }

  void addSaldo(ProjectModel project) {
    recentlyOpenedProjects.add(project);
  }

  void addCreateBoardOption(String option) {
    createBoardOptions.add(option);
  }


}
