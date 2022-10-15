import 'package:dispusip/app/modules/api_log/controllers/api_log_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ApiLogView extends GetView<ApiLogController> {
  const ApiLogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApiLogView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ApiLogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
