import 'package:brandup_shop/core/view_model/home_view_model.dart';

import 'package:brandup_shop/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> names = <String>[
    'Men',
    'Women',
    'Device',
    'Gadget',
    'Gaming',
    "Pc",
    "Wireless",
    "Network"
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  children: [
                    _searchTextFormField(),
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      text: "Categories",
                      fontweight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _ListViewCategory(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Best Selling",
                          fontSize: 18,
                          fontweight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "See all",
                          fontSize: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    _listViewProducts(),
                  ],
                ),
              ),
            ),
    );
  }

// ignore: non_constant_identifier_names
  Widget _ListViewCategory() {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Container(
        height: 100,
        child: ListView.separated(
          itemCount: controller.gategory.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade50),
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(8.0),
                  child: Image.network(controller.gategory[index].thumbnailUrl),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: controller.gategory[index].id.toString(),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
      ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade100,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            )),
      ),
    );
  }

  Widget _listViewProducts() {
    return Container(
      height: 350,
      child: ListView.separated(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            width: MediaQuery.of(context).size.width * .4,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade50),
                  child: Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width * .4,
                      child: Image.asset(
                        "assets/images/Image.png",
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "BeoPlay Speaker",
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: "Bang and Olufsen",
                  alignment: Alignment.bottomLeft,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "\$755",
                  alignment: Alignment.bottomLeft,
                  color: primaryColor,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
