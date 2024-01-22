import 'package:flutter/material.dart';
import 'shiftpage.dart';
import 'salarypage.dart';
import 'memopage.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Work Management Application"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton.icon(
                label: Text('シフト管理'),
                icon: Icon(Icons.calendar_month),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => shiftpage()));
                },
              ),
              ElevatedButton.icon(
                label: Text('給与管理'),
                icon: Icon(Icons.attach_money),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => salarypage()));
                },
              ),
              ElevatedButton.icon(
                label: Text('仕事のメモ'),
                icon: Icon(Icons.edit_note),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => memopage()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
