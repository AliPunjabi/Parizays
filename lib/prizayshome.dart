// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Parizays'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (() => controller.reload()),
          ),
        ],
      ),
      body: WebView(
        initialUrl: 'https://parizays.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
