import 'package:flutter_paketler/pages/home_page.dart';
import 'package:get/get.dart';

class Pages{
  static var pages = [
    GetPage(name: '/', page: ()=> const HomePage())
  ];
}