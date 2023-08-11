
// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String? blogUrl;

  const ArticleView({super.key, this.blogUrl});


  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _completer = Completer<WebViewController>();

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
     body: Container(
       child: WebView(
          initialUrl:widget.blogUrl ,
         onWebViewCreated: ((WebViewController webViewController){
           _completer.complete(webViewController);
         }),
       ),
     ),

    );
  }
}
