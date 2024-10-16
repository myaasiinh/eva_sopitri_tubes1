import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/dashboard/controller/dashboard_controller.dart';

class CreateBoardWidget extends StatelessWidget {
  final DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Create New Board', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Obx(() {
          return Column(
            children: controller.createBoardOptions.map((option) {
              return ListTile(
                leading: Icon(Icons.add),
                title: Text(option),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              );
            }).toList(),
          );
        }),
      ],
    );
  }
}
