import 'package:flutter/material.dart';
import 'thirdpage.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ページ(2)")),
        body: Center(
          child: TextButton(
            child: Text("thirdページへ遷移する"),
            // （1） 前の画面に戻る
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => thirdpage()));
            },
          ),
        ));
  }
}
