import '../model/project_model.dart';

class DummyData {
  static List<ProjectModel> recentlyOpened = [
    ProjectModel(name: 'HR - Project', finished: 20, total: 20),
    ProjectModel(name: 'Quickku - Project', finished: 8, total: 20),
  ];

  static List<String> createBoardOptions = [
    'Create project',
    'Create Goals',
    'Create portfolio',
  ];

  static List<String> assignedTasks = [
    'Create Mobile Responsive, let’s get this project done.'
  ];
}
