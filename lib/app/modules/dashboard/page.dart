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
        bottomNavigationBar: Obx(() => NavigationBar(
              onDestinationSelected: controller.changePageIndex,
              selectedIndex: controller.currentPageIndex.value,
              destinations: const [
                NavigationDestination(
                    selectedIcon: Icon(Icons.explore),
                    icon: Icon(Icons.explore_outlined),
                    label: 'Inicio'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.person),
                    icon: Icon(Icons.person_outlined),
                    label: 'Meu Perfil'),
                NavigationDestination(
                    selectedIcon: Icon(Icons.view_list),
                    icon: Icon(Icons.view_list_outlined),
                    label: 'Meus Pedidos'),
              ],
            )),
        body: Obx(
          () => IndexedStack(
            index: controller.currentPageIndex.value,
            children: [
              Text('Inicio'),
              Text('Meu Perfil'),
              Text('Meus Pedidos'),
            ],
          ),
        ));
  }
}
