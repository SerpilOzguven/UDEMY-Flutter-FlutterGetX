import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
              Get.toNamed('/navigation');
            },
                child: const Text('Navigation'),
            ),
            ElevatedButton(
                onPressed: (){
              Get.toNamed('/snackBar');
            },
                child: const Text('Snack Bar && Dialog'),
            ),
            ElevatedButton(
                onPressed: (){
              Get.toNamed('/translation');
            },
              child: const Text('Translation'),
            ),
            ElevatedButton(
              onPressed: (){
              Get.toNamed('/theme');
            },
              child: const Text('Theme'),
            ),
            ElevatedButton(
                onPressed: (){
              Get.toNamed('/utils');
            },
                child: const  Text('Utils'),
            ),
            ElevatedButton(
                onPressed: (){
              Get.toNamed('/sm');
            },
                child: const Text('SM'),

            ),
          ],
        ),
      ),
    );
  }
}
