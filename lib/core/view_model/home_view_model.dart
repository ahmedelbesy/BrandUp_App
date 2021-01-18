

import 'package:brandup_shop/model/gategory_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{
  ValueNotifier<bool> get loading =>_loading;
  ValueNotifier<bool> _loading =ValueNotifier(false);
  List<Gategory> get  gategory=> _gategory;
  List <Gategory> _gategory =[];


  Future <List<Gategory>> getGategory() async{
    _loading.value=true;

    String url="https://jsonplaceholder.typicode.com/photos";
    Dio dio=Dio();

 var response= await dio.get(url);
    if(response.statusCode==200){
      for(var item in response.data){
        _gategory.add(Gategory.fromJson(item));
     _loading.value=false;

      }
    update();
      //_loading.value=true;
         // return _gategory;
    }

  }

@override
  void onInit() {
    // TODO: implement onInit
  getGategory();
    super.onInit();
  }

}