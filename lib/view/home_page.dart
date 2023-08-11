// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/helper/data.dart';
import 'package:newsapp/models/article_model.dart';

import '../helper/news.dart';
import '../helper/wedget_category.dart';
import '../models/category_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<ArticleModel> articles = [];

  bool _isloading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter"),
            Text(
              "NewsApp",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: _isloading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 70,
                  child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                          categoryName: categories[index].categoryName,
                          imageUrl: categories[index].imageUrl,
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        return ArticleItem(
                          imageUrl: articles[index].imageToUrl,
                          title: articles[index].title,
                          description: articles[index].description,
                          url: articles[index].url,
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


