import 'package:app_hortifrutti_pratico/app/modules/dashboard/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'DashboardPage',
          ),
        ),
        body: const SafeArea(child: Text('DashboardController')));
  }
}
