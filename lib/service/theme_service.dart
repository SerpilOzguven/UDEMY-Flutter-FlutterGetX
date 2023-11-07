import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService{
  GetStorage getStorage = GetStorage();
  var key = 'theme';

  bool isSavedDarkMode(){
    return getStorage.read(key) ?? false;
  }

  ThemeData getThemeData(){
    return isSavedDarkMode() ? ThemeData.dark() : ThemeData.light();
  }

  void saveThemeMode(bool value)async{
    await getStorage.write(key, value);
  }

  void changeThemeMode(){
    //Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    Get.changeTheme(isSavedDarkMode() ? ThemeData.light() : ThemeData.dark());
    saveThemeMode(!isSavedDarkMode());
        
  }
}