
import 'package:brandup_shop/view/auth/register_screen.dart';
import 'package:brandup_shop/view/widgets/custom_button.dart';
import 'package:brandup_shop/view/widgets/custom_button_social.dart';
import 'package:brandup_shop/view/widgets/custom_text.dart';
import 'package:brandup_shop/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constance.dart';
import '../home_view.dart';

class LoginScreen extends  StatelessWidget {
  final GlobalKey <FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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
                                    text: "Welcome,",
                                    fontSize: 35,
                                    fontweight: FontWeight.w700,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                    Get.to(RegisterScreen());

                                    },
                                    child: CustomText(
                                      text: "Sign Up",
                                      fontSize: 18,
                                      color: primaryColor,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: "Sign in to Continue",
                                fontSize: 14,
                                color: Colors.grey,
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
                                height: 25,
                              ),
                              CustomText(
                                text: "Forgot Password?",
                                fontSize: 14,
                                alignment: Alignment.topRight,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomButton(
                                text: "SIGN IN",
                                onPressed: () {
                                  Get.to(HomeView());

                                },
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      text: "-OR-",
                      alignment: Alignment.center,
                      fontSize: 25,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButtonSocial(
                      text: "Sign In with Facebook",
                      imageName: "assets/images/icon_facebook.png",
                      onPress: () {

                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButtonSocial(
                      text: "Sign In with Google",
                      imageName: "assets/images/icons_Google.png",
                      onPress: () {

                      },
                    ),
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
