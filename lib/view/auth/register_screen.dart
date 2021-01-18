
import 'package:brandup_shop/view/widgets/custom_button.dart';
import 'package:brandup_shop/view/widgets/custom_text.dart';
import 'package:brandup_shop/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class RegisterScreen extends  StatelessWidget {
  final GlobalKey <FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
           Get.off(LoginScreen());
          },
            child: Icon(Icons.arrow_back_ios,color: Colors.black, )),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                // right: 30,
                // left: 30,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Card(
                        elevation: 1,
                        margin: EdgeInsets.only(left: 10, right: 10, top: 3),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, bottom: 30, top: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Sign UP",
                                    fontSize: 35,
                                    fontweight: FontWeight.w700,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              SizedBox(
                                height: 30,
                              ),
                              CustomTextFormField(
                                text: "Name",
                                hint: "Brand_UP",
                                onSave: (value) {},
                                validator: (value) {},
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              CustomTextFormField(
                                text: "Email",
                                hint: "Example@gmail.com",
                                onSave: (value) {},
                                validator: (value) {},
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              CustomTextFormField(
                                text: "Password",
                                hint: "**********",
                                onSave: (value) {},
                                validator: (value) {},
                              ),

                              SizedBox(
                                height: 50,
                              ),
                              CustomButton(
                                text: "SIGN UP",
                                onPressed: () {

                                },
                              ),
                            ],
                          ),
                        )),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
