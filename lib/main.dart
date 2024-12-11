import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gallery_project/core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IDS Project',
      initialRoute: Paths.LIST_PICTURES,
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => Scaffold(
          appBar: AppBar(title: Text('Not Found')),
          body: Center(child: Text('Halaman tidak ditemukan')),
        ),
      ),
    );
  }
}