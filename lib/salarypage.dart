import 'package:flutter/material.dart';

class salarypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("給与管理")),
        body: Center(
          child: TextButton(
            child: Text("ホーム画面に戻る"),
            // ホーム画面に戻る
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ));
  }
}
