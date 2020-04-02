import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qingmingyunjiflutter/bai_ji_list.dart';
import 'package:qingmingyunjiflutter/chang_yi.dart';
import 'package:qingmingyunjiflutter/create.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '清明云祭',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        textTheme: TextTheme(
          subhead: TextStyle(
            textBaseline: TextBaseline.alphabetic, // TextField hintText 居中
            fontSize: 12.0,
          ),
          body1: TextStyle(
            fontSize: 12.0,
            color: Color(0xff333333),
          ),
          button: TextStyle(
            fontSize: 12.0,
            color: Color(0xff333333),
          ),
        ),
        primaryColor: Color(0xff007bff),
        scaffoldBackgroundColor: Colors.white,
        primaryIconTheme: IconThemeData(
          color: Color(0xff333333),
        ),
        iconTheme: IconThemeData(
          color: Color(0xff007bff),
        ),
        appBarTheme: AppBarTheme(
          elevation: 1,
          textTheme: TextTheme(
            title: TextStyle(
              fontSize: 20,
              color: Color(0xff333333),
            ),
          ),
          color: Colors.white,
        ),
        buttonTheme: ButtonThemeData(
          height: 30,
          minWidth: 56,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        cursorColor: Color(0xff007bff),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff007bff),
            ),
          ),
          prefixStyle: TextStyle(
            color: Color(0xff333333),
          ),
        ),
        dialogTheme: DialogTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
            color: Color(0xff333333),
          ),
          contentTextStyle: TextStyle(
            fontSize: 12.0,
            color: Color(0xff333333),
          ),
        ),
      ),
      home: MyHomePage(title: '清明云祭'),
      routes: <String, WidgetBuilder>{
        '/home': (_) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: MediaQuery.of(context).size.height * 0.3,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  '清明云祭',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Wrap(
                runSpacing: 15,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Create(),
                        ),
                      );
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: width / 2 - 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '创建祭奠',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '云端的思念',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff999999),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BaiJiList(),
                        ),
                      );
                    },
                    child: Container(
                      width: width / 2 - 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '我要祭拜',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '献上鲜花和哀思',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff999999),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2 - 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            size: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '公墓链接',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '共同怀念与祈福',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff999999),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangYi(),
                        ),
                      );
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      width: width / 2 - 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '文明倡议',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '文明祭祀与共同防疫',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff999999),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2 - 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            size: 40,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '防护指南',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '网上祭拜指南',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff999999),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
