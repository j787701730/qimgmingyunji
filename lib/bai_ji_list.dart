import 'package:flutter/material.dart';
import 'package:qingmingyunjiflutter/bai_ji.dart';

class BaiJiList extends StatefulWidget {
  @override
  _BaiJiListState createState() => _BaiJiListState();
}

class _BaiJiListState extends State<BaiJiList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        title: Text('我要拜祭'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 15,
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BaiJi(),
                  ),
                );
              },
              title: Text(
                '一',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '生平: ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FlatButton(
                onPressed: () {},
                child: Text(
                  '编辑',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            child: ListTile(
              title: Text(
                '一',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '生平: ',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: FlatButton(
                onPressed: () {},
                child: Text(
                  '编辑',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
