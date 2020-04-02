import 'package:flutter/material.dart';

class ChangYi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文明倡议'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 10,
        ),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Baseline(
                  baseline: 32,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    height: 32,
                    width: 20,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.green,
                        ),
                        left: BorderSide(
                          color: Colors.green,
                        ),
                        bottom: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 20, right: 20),
                  ),
                ),
                Baseline(
                  baseline: 26,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    margin: EdgeInsets.only(top: 01),
                    color: Colors.white,
                    child: Text(
                      '文明倡议',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Baseline(
                  baseline: 32,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    height: 32,
                    width: 20,
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.green,
                        ),
                        right: BorderSide(
                          color: Colors.green,
                        ),
                        bottom: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left: 20, right: 20),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: Text(
                '　　又是一年清明时,祭扫先人表哀思。清明，是缅怀英烈、悼念先人、扫墓祭祖的时节，然而祭祀活动中随地烧纸钱、放鞭炮，火光四起、烟雾缭绕，既严重污染大气环境，也存在一定的安全隐患。为大力弘扬文明新风，推进移风易俗，倡导文明祭祀、减少环境污染，确保全省人民群众度过一个绿色环保、文明健康的节日，省污染防治攻坚战领导小组办公室特向全省城乡居民发出以下倡议：'),
          )
        ],
      ),
    );
  }
}
