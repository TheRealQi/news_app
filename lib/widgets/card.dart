import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/screens/news_screens/news_description_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/News_model.dart';
import '../model/News_model.dart';
import 'package:news_app/screens/news_screens/controller.dart';

class customCard extends StatelessWidget {
  customCard({Key? key, required this.data}) : super(key: key);

  final NewsModel data;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.articles!.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Get.to(newsDescScreen(
            title: data.articles![index].title.toString(),
            description: data.articles![index].description.toString(),
            image: data.articles![index].urlToImage.toString(),
            date: data.articles![index].publishedAt.toString(),
          )),
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    child: data.articles![index].urlToImage == null? Image.asset('assets/images/error.png'):Image.network('${data.articles![index].urlToImage}'),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${data.articles![index].title}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${data.articles![index].author}",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              "${data.articles![index].publishedAt}",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

}
