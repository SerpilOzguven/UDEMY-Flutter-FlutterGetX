import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GetStoragePage extends StatefulWidget {
  const GetStoragePage({super.key});

  @override
  State<GetStoragePage> createState() => _GetStoragePageState();
}

class _GetStoragePageState extends State<GetStoragePage> {

  GetStorage? getStorage;

  @override
  void initState() {
    super.initState();
    getStorage = GetStorage();
    getMethod();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Get Storage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                getStorage!.write('title', 'Yeni Baslik');
                getStorage!.writeIfNull('title2', 'Yeni Baslik2');
                //getStorage!.remove('title2');
                print(getStorage!.hasData('title'));
                var values = getStorage!.getValues();
                print(values);
                getStorage!.erase();
                
              });
            },
              child: const Text('Save Value'),
            ),
            Text(getStorage!.read('title') ?? 'Boþ Deger'),
          ],
        ),
      ),
    );
  }

  void getMethod() {
    getStorage!.listen(() {
      print('Veride degisiklik oldu');
    });
    getStorage!.listenKey('title2', (value) {
      print('Title degisti artik => $value');
    });
  }
}
