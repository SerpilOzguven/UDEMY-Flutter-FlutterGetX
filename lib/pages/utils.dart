import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtilsPage extends StatelessWidget {
  const UtilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utils'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          var deger = GetUtils.isEmail('de�er@1.com');
          var deger2 = GetUtils.removeAllWhitespace('Val ue');
          print(deger2);
        }, child: const Text('Control')),
      ),
    );
  }
}
