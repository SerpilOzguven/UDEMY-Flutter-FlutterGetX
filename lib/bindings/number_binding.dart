import 'package:flutter_paketler/controller/number_controller.dart';
import 'package:get/get.dart';

class NumberBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<NumberController>(NumberController());
    //Get.lazyPut<NumberController>(() => NumberController());//bu metod bir kez �al���yor.
    //Get.lazyPut<NumberController>(() => NumberController(), fenix : true);//bu metod tekrardan �al���r.
    //Get.putAsync<SharedPreferences>(() aysnc{})
  }

}