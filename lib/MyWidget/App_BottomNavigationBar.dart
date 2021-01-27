import 'package:flutter/material.dart';

class AppDocker extends StatefulWidget {
  @override
  _AppDockerState createState() => _AppDockerState();
}

class _AppDockerState extends State<AppDocker> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 1,
          iconSize: 20,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            switch (_currentIndex) {
              case 0: return Navigator.of(context).popAndPushNamed("dsyeucau");
              case 1: return Navigator.of(context).popAndPushNamed("dsdonmuahang");
              case 2: return Navigator.of(context).popAndPushNamed("lich");
              case 3: return Navigator.of(context).popAndPushNamed("chaogia");
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pie_chart,
                  color: Colors.grey[800],
                ),
                title: Text('Yêu cầu',
                    style: TextStyle(color: Colors.black87, fontSize: 11))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.grey[800],
                ),
                title: Text(
                  'Đơn mua hàng',
                  style: TextStyle(color: Colors.black87, fontSize: 11),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pie_chart,
                  color: Colors.grey[800],
                ),
                title: Text('Lịch',
                    style: TextStyle(color: Colors.black87, fontSize: 11))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pie_chart,
                  color: Colors.grey[800],
                ),
                title: Text('Chào giá',
                    style: TextStyle(color: Colors.black87, fontSize: 11))),
          ],
          backgroundColor: Colors.white,
        ));
  }
}
