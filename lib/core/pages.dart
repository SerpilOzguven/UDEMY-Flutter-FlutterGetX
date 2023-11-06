import 'package:flutter_paketler/pages/home_page.dart';
import 'package:flutter_paketler/pages/navigation.dart';
import 'package:flutter_paketler/pages/snack_bar.dart';
import 'package:get/get.dart';

class Pages{
  static var pages = [
    GetPage(name: '/', page: ()=> const HomePage()),
    GetPage(name: '/navigation', page: ()=> const NavigationPage()),
    GetPage(name: '/snackBar', page: ()=> const SnackBarPage()),
  ];
}