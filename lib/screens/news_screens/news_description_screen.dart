import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:news_app/screens/news_screens/general_screen.dart';
import 'controller.dart';

class newsDescScreen extends StatelessWidget {
  String title;
  String description;
  String image;
  String date;
  newsDescScreen({Key? key, required this.title, required this.description, required this.image, required this.date}) : super(key: key);
  screenController controller = Get.put(screenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text("News"),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              onPressed: (){
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
            );
          },
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 3, left: 20, right: 20, bottom: 0),
                  height: 250,
                  width: double.infinity,
                  child:
                  image == null? Image.asset('assets/images/error.png'):Image.network(image),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  date ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                ),
              ],
            ),
        ),
      ),
    );
  }
}
