import 'package:flutter/material.dart';
import 'firstpage.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("アルバイト管理アプリ")),
        body: Center(
          child: TextButton(
            child: Text("シフト管理"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => firstpage()));
            },
          ),
        ));
  }
}
