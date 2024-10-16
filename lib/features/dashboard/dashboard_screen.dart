
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/global_component/assigned_task_widget.dart';
import '../../core/global_component/create_board_widget.dart';
import '../../core/global_component/recently_opened_widget.dart';
import 'controller/dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLESTER'),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecentlyOpenedWidget(),
            const SizedBox(height: 16),
            CreateBoardWidget(),
            const SizedBox(height: 16),
            AssignedTaskWidget(),
          ],
        ),
      ),
    );
  }
}
