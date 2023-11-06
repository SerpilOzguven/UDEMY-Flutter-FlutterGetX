import 'package:flutter/material.dart';
import 'package:flutter_paketler/get_storage.dart';
import 'package:flutter_paketler/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main()async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=> const HomePage())
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      //home: const GetStoragePage(),
    );
  }
}
