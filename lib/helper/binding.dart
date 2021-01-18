
import 'package:brandup_shop/core/view_model/control_view_model.dart';
import 'package:brandup_shop/core/view_model/home_view_model.dart';
import 'package:get/get.dart';

class Binding  extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ControlViewModel());
   Get.lazyPut(() => HomeViewModel());
  }

}