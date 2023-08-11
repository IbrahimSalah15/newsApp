
// ignore_for_file: unnecessary_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/helper/news.dart';

import '../helper/wedget_category.dart';
import '../models/article_model.dart';


 class CategoryNews extends StatefulWidget {
   final String? category;
   const CategoryNews({super.key, this.category});

   @override
   State<CategoryNews> createState() => _CategoryNewsState();
 }

 class _CategoryNewsState extends State<CategoryNews> {
   List<ArticleModel> article =[];
   bool _isloading = true;

   @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async{
     CategoryNewsClass newsClass = CategoryNewsClass();
     await newsClass.getNews(widget.category!);
     article = newsClass.news;
     setState(() {
       _isloading = false;
     });

  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.grey,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Flutter"),
             Text("NewsApp",style: TextStyle(color: Colors.orange),),
           ],
         ),
         elevation: 0.0,

       ),
       body: _isloading ? Center(child: CircularProgressIndicator()):Container(
         padding: const EdgeInsets.only(top: 10),
         child: ListView.builder(
             shrinkWrap: true,

             itemCount: article.length,
             itemBuilder: (context , index){
               return ArticleItem(
                 imageUrl: article[index].imageToUrl,
                 title: article[index].title,
                 description: article[index].description,
                 url: article[index].url,
               );
             } ),
       ),

     );
   }
 }

