import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qingmingyunjiflutter/ji_pin.dart';

class BaiJi extends StatefulWidget {
  @override
  _BaiJiState createState() => _BaiJiState();
}

class _BaiJiState extends State<BaiJi> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        title: Text('拜祭'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: 150,
              left: width * 0.35,
              right: width * 0.35,
              child: Container(
                height: 400,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 250,
              left: width / 2 - 9,
              child: Container(
                width: 18,
                child: Text(
                  '清明云祭',
                  style: TextStyle(
                    color: Color(0xffeacd76),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 456,
              left: 100,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/huaquan1.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 456,
              right: 100,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/huaquan1-1.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 506,
              left: 200,
              child: Container(
                height: 100,
                width: 30,
                child: Image.asset(
                  'assets/zhu1.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: 506,
              right: 200,
              child: Container(
                height: 100,
                width: 30,
                child: Image.asset(
                  'assets/zhu1-1.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: 506,
              right: width * 0.4,
              left: width * 0.4,
              child: Container(
                height: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/xiang1.png',
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 100,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/xianhua1.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 100,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/xianhua1-1.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: width * 0.4,
              left: width * 0.4,
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/bg.jpg',
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 24,
              child: AnimatedBuilder(
                animation: _controller,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0x77000000),
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.music_note,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                builder: (BuildContext context, Widget child) {
                  return Transform.rotate(
                    angle: _controller.value * 3.0 * math.pi,
                    child: child,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x77000000),
                ),
                width: width,
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: ['上香', '点烛', '鲜花', '花圈', '祭品', '纸炮'].map<Widget>(
                    (item) {
                      return Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => JiPin(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.image),
                              Text(
                                '$item(1)',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: const _CenterDockedFloatingActionButtonLocation(15),
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        focusElevation: 0,
        highlightElevation: 0,
        elevation: 0,
        child: const Text('祭拜'),
        onPressed: () {
          print("add press ");
        },
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        color: Colors.white,
        shape: CircularRaisedRectangle(),
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.image),
                    Text('拜祭记录'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.image),
                    Text('留言板'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularRaisedRectangle extends NotchedShape {
  const CircularRaisedRectangle();

  @override
  Path getOuterPath(Rect host, Rect guest) {
    if (guest == null || !host.overlaps(guest)) return Path()..addRect(host);

    // The guest's shape is a circle bounded by the guest rectangle.
    // So the guest's radius is half the guest width.
    final double notchRadius = guest.width / 2.0;
    return Path()
      ..moveTo(host.left, host.top)
      ..lineTo(guest.left, host.top)
      ..arcTo(
          Rect.fromLTWH(
            guest.left,
            guest.top,
            notchRadius * 2,
            notchRadius * 2,
          ),
          math.asin(1 - (host.top - guest.top) / notchRadius) + degToRad(180),
          math.acos(1 - (host.top - guest.top) / notchRadius) * 2,
          false)
      ..lineTo(guest.right, host.top)
      ..lineTo(host.right, host.top)
      ..lineTo(host.right, host.bottom)
      ..lineTo(host.left, host.bottom)
      ..close();
  }
}

num degToRad(num deg) => deg * (math.pi / 180.0);

abstract class _DockedFloatingActionButtonLocation extends FloatingActionButtonLocation {
  const _DockedFloatingActionButtonLocation();

  @protected
  double getDockedY(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double contentBottom = scaffoldGeometry.contentBottom;
    final double bottomSheetHeight = scaffoldGeometry.bottomSheetSize.height;
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    final double snackBarHeight = scaffoldGeometry.snackBarSize.height;

    double fabY = contentBottom - fabHeight / 2.0;
    if (snackBarHeight > 0.0)
      fabY = math.min(fabY, contentBottom - snackBarHeight - fabHeight - kFloatingActionButtonMargin);
    if (bottomSheetHeight > 0.0) fabY = math.min(fabY, contentBottom - bottomSheetHeight - fabHeight / 2.0);

    final double maxFabY = scaffoldGeometry.scaffoldSize.height - fabHeight;
    return math.min(maxFabY, fabY);
  }
}

/// offset值用来控制偏移量。
/// 在bottomNavigationBar中，0坐标为控件左上角，
/// 因此offset为正时，表示往下偏移；offset为负时，表示往上偏移
class _CenterDockedFloatingActionButtonLocation extends _DockedFloatingActionButtonLocation {
  const _CenterDockedFloatingActionButtonLocation(this.offset);

  final double offset;

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = (scaffoldGeometry.scaffoldSize.width - scaffoldGeometry.floatingActionButtonSize.width) / 2.0;
    return Offset(fabX, getDockedY(scaffoldGeometry) + offset);
  }

  @override
  String toString() => 'FloatingActionButtonLocation.centerDocked';
}
