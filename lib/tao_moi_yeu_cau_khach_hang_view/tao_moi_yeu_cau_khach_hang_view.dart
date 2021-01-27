/*
*  tao_moi_yeu_cau_khach_hang_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';

class TaoMoiYeuCauKhachHangView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.all(50),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: 150,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.rectangle,
                        ),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("assets/images/group-2.png")
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Tạo mới yêu cầu\nkhách hàng",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.w700,
                fontSize: 24,
                letterSpacing: -0.26385,
              ),
            ),
            Container(
              width: 157,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "TÊN KHÁCH HÀNG",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 99,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "TIÊU ĐỀ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 104,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "NGÀY TẠO",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        letterSpacing: -0.16491,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 149,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "TÊN DOANH NGHIỆP",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "MÔ TẢ YÊU CẦU",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 145,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "EMAIL",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 110,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "SỐ ĐIỆN THOẠI",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 120,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Text(
                      "TÊN SẢN PHẨM",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.secondaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        letterSpacing: -0.16491,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 139,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "NGÀY NHẬN HÀNG",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "SỐ LƯỢNG",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 88,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "NGÂN SÁCH",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 127,
              height: 67,
              margin: EdgeInsets.only(top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "ĐƠN VỊ TÍNH",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      letterSpacing: -0.16491,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: TextField(
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        letterSpacing: -0.21988,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 28),
              child: Text(
                "ĐƠN ĐẶT",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  letterSpacing: -0.16491,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 4),
              child: Text(
                "Thả tệp vào đây hoặc chọn từ trình duyệt",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: -0.15391,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "VND: pdf,docs,…",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: -0.15391,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 50),
              child: Center(
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1.0),
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.download_sharp,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.grey[300],
            ),
            Container(
              margin: EdgeInsets.only(top: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    height: 60,
                    child: RaisedButton(
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text(
                        "HUỶ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 38, 64, 139),
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          letterSpacing: -0.16491,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    height: 60,
                    child: RaisedButton(
                      color: Color.fromARGB(255, 38, 64, 139),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text(
                        "LƯU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          letterSpacing: -0.16491,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
