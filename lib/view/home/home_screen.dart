import 'dart:io';

import 'package:flutter/material.dart';
import 'package:getx/data/response/status.dart';
import 'package:getx/view_models/controller/home/home_view_model.dart';
import 'package:getx/view_models/controller/user_prefrence/user_prefrence_veiw_model.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());

  Userpreference userpreference = Userpreference();

  @override
  void initState() {
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Obx(() {
          switch (homeController.rxRequestStatus.value) {
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              );
            case Status.error:
              return const Center(
                  child: Text(
                "Error",
                style: TextStyle(color: Colors.black),
              ));
            case Status.complete:
              return Container(
                height: 700,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: homeController.userList.value.products!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 200,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.network(
                                "${homeController.userList.value.products![index].image}"),
                          )
                        ],
                      );
                    }),
              );
          }
        }),
      ],
    ));
  }
}
