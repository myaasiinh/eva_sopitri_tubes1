import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/dashboard/controller/dashboard_controller.dart';

class RecentlyOpenedWidget extends StatelessWidget {
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 
        const Text('Recently Opened', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Obx(() {
          return Row(
            children: controller.recentlyOpenedProjects.map((project) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(project.name),
                      Text('${project.finished}/${project.total} Finished'),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}
