import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  Map param = {
    'sex': 1,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('创建祭奠'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text('所属地市')
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('福州'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text('具体地址')
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('福州'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text('逝者名字')
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('福州'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text('出生日期')
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('请选择出生日期'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text('逝世日期')
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('请选择逝世日期'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '*',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text('逝者性别')
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            param['sex'] = 1;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: 1,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              groupValue: param['sex'],
                              onChanged: (value) {
                                setState(() {
                                  param['sex'] = value;
                                });
                              },
                            ),
                            Text('男'),
                          ],
                        ),
                      ),
                      Container(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            param['sex'] = 2;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Radio(
                              value: 2,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              groupValue: param['sex'],
                              onChanged: (value) {
                                setState(() {
                                  param['sex'] = value;
                                });
                              },
                            ),
                            Text('女'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: '请输入墓主生平简介, 如...',
              ),
              minLines: 6,
              maxLines: 12,
            ),
          ),
          Container(
            child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10),
              onPressed: () {},
              child: Text('创建祭奠'),
            ),
          )
        ],
      ),
    );
  }
}
