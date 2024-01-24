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
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, //ボタンの背景色
                    minimumSize: Size(200, 100)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => shiftpage()));
                },
              ),
              ElevatedButton.icon(
                label: Text('給与管理'),
                icon: Icon(Icons.attach_money),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, //ボタンの背景色
                    minimumSize: Size(200, 100)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => salarypage()));
                },
              ),
              ElevatedButton.icon(
                label: Text('仕事のメモ'),
                icon: Icon(Icons.edit_note),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, //ボタンの背景色
                    minimumSize: Size(200, 100)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => memopage()));
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Note',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
