import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/dashboard/controller/dashboard_controller.dart';

class AssignedTaskWidget extends StatelessWidget {
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Assigned to me', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Obx(() {
          return Column(
            children: controller.assignedTasks.map((task) {
              return ListTile(
                leading: Checkbox(value: false, onChanged: (bool? value) {}),
                title: Text(task),
                subtitle: Text('2 min ago'),
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}
