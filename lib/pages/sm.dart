import 'package:flutter/material.dart';
import 'package:flutter_paketler/controller/number_controller.dart';
import 'package:get/get.dart';

class SMPage extends GetWidget<NumberController> {
  const SMPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nController = Get.put(NumberController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('SM'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.find<NumberController>().sayi.toString()),
            /*
            Obx(() => Text(
              nController.sayi.toString(),
              style: const TextStyle(fontSize: 40),
              ),
            ),

             */
            GetX<NumberController>(
              init: NumberController() ,
              initState: (func){
              print('initState calisti');

            },
              dispose: (func){
              print('dispose calisti');
              },
              builder: (_)=>Text(
              _.sayi.toString(),
              style: const TextStyle(fontSize: 40),

            ), ),
            GetX<NumberController>(
              init: NumberController(),
              builder: (_)=> Column(
                children: [

                  Text(
                  _.liste.length.toString(),
                  style: TextStyle(fontSize: 40),
                    
                  ),
                  ElevatedButton(onPressed: (){
                    _.listeyeEkle();
                  }, child: Text('Artir'))
                ],
              ),
            ),
            /*
            ElevatedButton(onPressed: (){
              nController.increment();
            }, child: const Text('Increment'),
            ),

             */
          ],
        ),
      ),
    );
  }
}
