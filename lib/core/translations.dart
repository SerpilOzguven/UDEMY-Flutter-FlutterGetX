import 'package:flutter_paketler/languages/azeri.dart';
import 'package:flutter_paketler/languages/english.dart';
import 'package:get/get.dart';

class MyTranslations implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'az': azeri(),
    'en': english()

  };

}