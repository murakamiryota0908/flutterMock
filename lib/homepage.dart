import 'package:flutter/material.dart';
import 'shiftpage.dart';
import 'salarypage.dart';
import 'memopage.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 32),
              child: Text('アルバイト管理アプリ'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  child: Text('シフト管理'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => shiftpage()));
                  },
                ),
                OutlinedButton(
                  child: Text('給与管理'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => salarypage()));
                  },
                ),
                OutlinedButton(
                  child: Text('仕事のメモ'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => memopage()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
