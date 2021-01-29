import 'package:flutter/material.dart';

import 'package:gtnm_hci/MyWidget/my_AppBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_yeu_cau_view.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_don_mua_hang_view.dart';
import 'package:gtnm_hci/lich_view/lich_view.dart';
import 'package:gtnm_hci/moi_chao_gia_view/moi_chao_gia_view.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _tabViews = [
    DanhSachYeuCauView(),
    DanhSachDonMuaHangView(),
    LichView(),
    MoiChaoGiaWidget(),
  ];
  final List<String> _tabTitles = [
    'Danh sách',
    'Danh sách',
    'Lịch',
    'Chào giá'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: GradientAppBar(_tabTitles[_currentIndex]),
      body: _tabViews[_currentIndex],
      bottomNavigationBar: Container(
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
            selectedFontSize: 10,
            selectedItemColor: Color.fromARGB(255,42,127,206),
            unselectedFontSize: 10,
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.fileSignature
                  ),
                  label: 'Yêu cầu mua hàng'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.briefcase
                  ),
                  label: 'Đơn mua hàng'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.calendarAlt
                  ),
                  label: 'Lịch'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.fileInvoiceDollar
                  ),
                  label: 'Chào giá'),
            ],
            backgroundColor: Colors.white,
          )),
    );
  }
}