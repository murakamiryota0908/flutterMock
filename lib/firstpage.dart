import 'package:flutter/material.dart';
import 'secondpage.dart';

class firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("シフト管理画面")),
        body: Center(
          child: TextButton(
            child: Text("secondページに遷移する"),
            // （1） 前の画面に戻る
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondpage()));
            },
          ),
        ));
  }
}
