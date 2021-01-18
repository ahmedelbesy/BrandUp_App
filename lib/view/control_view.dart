
import 'package:brandup_shop/core/view_model/control_view_model.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ControlView extends GetWidget<ControlViewModel> {
  @override
  Widget build(BuildContext context) {

      return GetBuilder<ControlViewModel>(
        builder:(controller)=> Scaffold(
            bottomNavigationBar: bottomNavigationBar(),
            body:controller.currentScreen,
        ),
      );

  }
  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller)=>
          BottomNavigationBar(items: [

            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding:  EdgeInsets.only(top:25.0),
                  child: Text("Explore"),
                ),
                label: '',
                icon:Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Image.asset("assets/images/Icon_Explore.png",fit: BoxFit.contain,width: 20,),
                ) ),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text("Cart"),
                ),
                label: '',
                icon:Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset("assets/images/Icon_Cart.png",fit: BoxFit.contain,width: 20,),
                ) ),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Text("Account"),
                ),
                label: '',
                icon:Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset("assets/images/Icon_User.png",fit: BoxFit.contain,width: 20,),
                ) ),

          ],
            currentIndex: controller.navigatorValue,
            onTap: (index){
            controller.changeSelectedValue(index);


            },


            selectedItemColor: Colors.black,
            backgroundColor: Colors.grey.shade50,
            elevation: 1,

          ),
    );
  }
}
