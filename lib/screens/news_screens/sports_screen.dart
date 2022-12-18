import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../model/News_model.dart';
import '../../widgets/card.dart';
import 'controller.dart';

class sportsScreen extends StatelessWidget {
  sportsScreen({Key? key}) : super(key: key);

  screenController controller = Get.put(screenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: FutureBuilder(
            future: controller.getNews('sports'),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                NewsModel data = snapshot.data;
                return customCard(data: data);
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.grey.shade500,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
