import 'package:flutter/material.dart';
import 'firstpage.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ページ(0)")),
        body: Center(
          child: TextButton(
            child: Text("Firstページに遷移する"),
            // （1） 前の画面に戻る
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => firstpage()));
            },
          ),
        ));
  }
}
