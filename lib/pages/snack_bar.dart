// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar && Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
              Get.snackbar(
                  'Baslik',
                  'Alt Baslik',
                  icon: const Icon(Icons.check, color: Colors.white,),
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                  isDismissible: true,
                  duration: const Duration(seconds: 2),
                  onTap: (value){
                    print(value);
                  },
                  dismissDirection: DismissDirection.horizontal
              );
            }, child: const Text('Snack Bar 1'),),
            ElevatedButton(
              onPressed: (){
                Get.showSnackbar(
                   const GetSnackBar(
                      message: 'Alt Baslik',
                      backgroundColor: Colors.red,
                      snackPosition: SnackPosition.BOTTOM,
                      titleText: const Text('Baslik2', style:TextStyle(color: Colors.white),),
                    ),
                );
              },
              child: const Text('Snack Bar 2'),),
            ElevatedButton(
              onPressed: (){
                /*
                Get.dialog(
                     AlertDialog(
                      content: const Text('Alt Baslik'),
                      title: const Text('Baslik'),
                      actions: [
                        ElevatedButton(onPressed: (){
                          Get.back();
                        }, child: const Text('Geri Cik'))
                      ],
                    ));
                Get.dialog(Dialog(child: Text('2.Dialog'),));

                 */
                Get.defaultDialog(
                    title: 'Baslik',
                    middleText: 'Aciklama',
                    textCancel:'iptal Et',
                    textConfirm: 'Kabul Et',
                    cancel: const Text('iptal Et2'),
                );
              },
              child: const Text('Get Dialog'),),

          ],
        ),
      ),
    );
  }
}
