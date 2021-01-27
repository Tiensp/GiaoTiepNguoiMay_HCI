import 'package:flutter/material.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_yeu_cau_view.dart';
import 'package:gtnm_hci/tao_moi_yeu_cau_khach_hang_view/tao_moi_yeu_cau_khach_hang_view.dart';
import 'package:gtnm_hci/lich_view/lich_view.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/request_model.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawer createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[800],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 80)),
                  Image.asset("assets/images/bp_avatar.png", scale: 2),
                  Text(
                    'UI/UX',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Quản lý yêu cầu mua hàng',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down, color: Colors.black54),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => DanhSachYeuCauView()),
                );
              },
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text(
                  'Quản lý đơn mua hàng',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                children: [
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '•',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    title: Text(
                      'Danh sách',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Open Sans"),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => DanhSachYeuCauView()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '•',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    title: Text(
                      'Lịch',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Open Sans"),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => LichView()),
                      );
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Mời chào giá',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down, color: Colors.black54),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => DanhSachYeuCauView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
