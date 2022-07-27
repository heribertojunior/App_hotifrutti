import 'package:app_hortifrutti_pratico/app/core/theme/app_theme.dart';
import 'package:app_hortifrutti_pratico/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          'Hotifruti Prático',
          style: textA1,
        ),
      )),
      body: ListView(children: const [
        ListTile(
          title: Text(
            "Horti Verde",
            style: textA2,
          ),
          leading: FlutterLogo(),
          trailing: Text(
            "Aberto",
            style: aberto,
          ),
        ),
      ]),
    );
  }
}
