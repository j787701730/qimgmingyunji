import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JiPin extends StatefulWidget {
  @override
  _JiPinState createState() => _JiPinState();
}

class _JiPinState extends State<JiPin> {
  List jiPinList = [
    {
      'name': '上香',
      'children': [
        {
          'pic': 'xiang1.png',
          'name': '香01',
        },
        {
          'pic': 'xiang1.png',
          'name': '香02',
        },
        {
          'pic': 'xiang1.png',
          'name': '香03',
        },
        {
          'pic': 'xiang1.png',
          'name': '香04',
        },
        {
          'pic': 'xiang1.png',
          'name': '香05',
        },
        {
          'pic': 'xiang1.png',
          'name': '香06',
        }
      ]
    },
    {
      'name': '点烛',
      'children': [
        {
          'pic': 'zhu1.png',
          'name': '蜡烛01',
        },
        {
          'pic': 'zhu1.png',
          'name': '蜡烛02',
        },
        {
          'pic': 'zhu1.png',
          'name': '蜡烛03',
        },
        {
          'pic': 'zhu1.png',
          'name': '蜡烛04',
        },
        {
          'pic': 'zhu1.png',
          'name': '蜡烛05',
        },
        {
          'pic': 'zhu1.png',
          'name': '蜡烛06',
        }
      ]
    },
    {
      'name': '鲜花',
      'children': [
        {
          'pic': 'xianhua1.png',
          'name': '鲜花01',
        },
        {
          'pic': 'xianhua1.png',
          'name': '鲜花02',
        },
        {
          'pic': 'xianhua1.png',
          'name': '鲜花03',
        },
        {
          'pic': 'xianhua1.png',
          'name': '鲜花04',
        },
        {
          'pic': 'xianhua1.png',
          'name': '鲜花05',
        },
        {
          'pic': 'xianhua1.png',
          'name': '鲜花06',
        }
      ]
    },
    {
      'name': '花圈',
      'children': [
        {
          'pic': 'huaquan1.png',
          'name': '花圈01',
        },
        {
          'pic': 'huaquan1.png',
          'name': '花圈02',
        },
        {
          'pic': 'huaquan1.png',
          'name': '花圈03',
        },
        {
          'pic': 'huaquan1.png',
          'name': '花圈04',
        },
        {
          'pic': 'huaquan1.png',
          'name': '花圈05',
        },
        {
          'pic': 'huaquan1.png',
          'name': '花圈06',
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('祭品列表'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: ListView(
          children: jiPinList.map<Widget>(
            (item) {
              return Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 30,
                        bottom: 20,
                      ),
                      child: Text(
                        '${item['name']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: item['children'].map<Widget>(
                          (child) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                color: Color.fromARGB(0xaa, 0, 0, 0),
                              ),
                              width: 140,
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/${child['pic']}'),
                                  Container(
                                    height: 8,
                                  ),
                                  Text(
                                    '${child['name']}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
