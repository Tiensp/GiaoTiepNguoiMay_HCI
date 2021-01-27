import 'package:flutter/material.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_yeu_cau_view.dart';
import 'package:gtnm_hci/tao_moi_yeu_cau_khach_hang_view/tao_moi_yeu_cau_khach_hang_view.dart ';
import 'package:gtnm_hci/lich_view/lich_view.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/request_model.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
  final _tittle;
  final _color;
  MyAppBar(this._tittle, this._color);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: _color,
      iconTheme: IconThemeData(color: Colors.indigo),
      title: Text(
        '$_tittle',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Color.fromARGB(255, 38, 64, 139),
          fontFamily: "Open Sans",
          fontWeight: FontWeight.w700,
          fontSize: 24,
          letterSpacing: -0.26385,
        ),
      ),
      elevation: 0,
    );
  }
}
