import 'package:flutter/material.dart';
import 'homepage.dart';

class Apage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ページ(B)")),
        body: Center(
          child: TextButton(
            child: Text("ページに遷移する"),
            // （1） 前の画面に戻る
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
          ),
        ));
  }
}
