/*
*  moi_chao_gia_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/my_BottomNavigationBar.dart';
import 'package:gtnm_hci/MyWidget/my_AppBar.dart';


class MoiChaoGiaWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar('Lịch', Color.fromARGB(255, 248, 249, 250)),
      bottomNavigationBar: AppDocker(),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 250, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 13,
              margin: EdgeInsets.only(left: 21, top: 17, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 33,
                      height: 11,
                      margin: EdgeInsets.only(top: 2),
                      child: Image.asset(
                        "assets/images/shape-36.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 19,
                      height: 11,
                      margin: EdgeInsets.only(right: 6),
                      child: Image.asset(
                        "assets/images/shape-41.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 17,
                      height: 11,
                      margin: EdgeInsets.only(right: 11),
                      child: Image.asset(
                        "assets/images/shape-7.png",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 21,
                      height: 10,
                      margin: EdgeInsets.only(top: 1, right: 2),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Opacity(
                              opacity: 0.35,
                              child: Container(
                                width: 21,
                                height: 10,
                                decoration: BoxDecoration(
                                  border: Border.fromBorderSide(Borders.primaryBorder),
                                  borderRadius: BorderRadius.all(Radius.circular(2.16667)),
                                ),
                                child: Container(),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 2,
                            right: 2,
                            child: Container(
                              width: 18,
                              height: 7,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.all(Radius.circular(1.33333)),
                              ),
                              child: Container(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 1,
                      height: 4,
                      margin: EdgeInsets.only(top: 4),
                      child: Opacity(
                        opacity: 0.4,
                        child: Image.asset(
                          "assets/images/path-5.png",
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 194,
                height: 29,
                margin: EdgeInsets.only(left: 39, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 20,
                        height: 17,
                        margin: EdgeInsets.only(top: 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 20,
                                height: 3,
                                decoration: BoxDecoration(
                                  gradient: Gradients.primaryGradient,
                                  borderRadius: Radii.k1pxRadius,
                                ),
                                child: Container(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 13,
                                height: 3,
                                margin: EdgeInsets.only(left: 7, top: 4),
                                decoration: BoxDecoration(
                                  gradient: Gradients.primaryGradient,
                                  borderRadius: Radii.k1pxRadius,
                                ),
                                child: Container(),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 20,
                                height: 3,
                                margin: EdgeInsets.only(top: 4),
                                decoration: BoxDecoration(
                                  gradient: Gradients.primaryGradient,
                                  borderRadius: Radii.k1pxRadius,
                                ),
                                child: Container(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Text(
                          "Mời chào giá",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppColors.accentText,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            letterSpacing: -0.26385,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 367,
                height: 194,
                margin: EdgeInsets.only(top: 53),
                decoration: BoxDecoration(
                  color: AppColors.primaryBackground,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 20,
                      margin: EdgeInsets.only(left: 26, top: 19, right: 11),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Cung cấp vải gấm",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                letterSpacing: -0.1759,
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 107,
                              height: 20,
                              margin: EdgeInsets.only(top: 1),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      width: 107,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 178, 241, 189),
                                        borderRadius: BorderRadius.all(Radius.circular(9.81355)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    top: 1,
                                    right: 12,
                                    child: Text(
                                      "Đã phê duyệt",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontFamily: "Open Sans",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        letterSpacing: -0.13193,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 29, top: 15),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Chào giá cạnh tranh",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              letterSpacing: -0.13193,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 29, top: 7),
                        child: Opacity(
                          opacity: 0.4,
                          child: Text(
                            "Thời gian nộp hồ sơ chào giá: 30/04/2020",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              letterSpacing: -0.13193,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 189,
                        height: 14,
                        margin: EdgeInsets.only(left: 29, top: 11),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Đã có ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  letterSpacing: -0.13193,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "3 nhà",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 38, 64, 139),
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  letterSpacing: -0.13193,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 4),
                                child: Text(
                                  "cung cấp vào chào giá",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: "Open Sans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    letterSpacing: -0.13193,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 23, top: 23, right: 21, bottom: 9),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: 36,
                              margin: EdgeInsets.only(top: 2, bottom: 9),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 14, 62, 134),
                                        borderRadius: BorderRadius.all(Radius.circular(17.9915)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 2,
                                    bottom: 2,
                                    child: Image.asset(
                                      "assets/images/path-22.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Container(
                                      width: 11,
                                      height: 11,
                                      decoration: BoxDecoration(
                                        color: AppColors.secondaryElement,
                                        borderRadius: BorderRadius.all(Radius.circular(5.31568)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Positioned(
                                    left: 22,
                                    top: 0,
                                    child: Image.asset(
                                      "assets/images/shape-32.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 34,
                                height: 33,
                                margin: EdgeInsets.only(left: 4, bottom: 10),
                                child: Image.asset(
                                  "assets/images/path-10.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 34,
                                height: 33,
                                margin: EdgeInsets.only(left: 5, bottom: 10),
                                child: Image.asset(
                                  "assets/images/path-40.png",
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 33,
                                height: 33,
                                margin: EdgeInsets.only(left: 5, bottom: 10),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: Image.asset(
                                        "assets/images/path-34.png",
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    Positioned(
                                      left: 8,
                                      bottom: 15,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 3,
                                              height: 3,
                                              decoration: BoxDecoration(
                                                color: AppColors.secondaryElement,
                                                borderRadius: BorderRadius.all(Radius.circular(1.63559)),
                                              ),
                                              child: Container(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 3,
                                              height: 3,
                                              margin: EdgeInsets.only(left: 3),
                                              decoration: BoxDecoration(
                                                color: AppColors.secondaryElement,
                                                borderRadius: BorderRadius.all(Radius.circular(1.63559)),
                                              ),
                                              child: Container(),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 3,
                                              height: 3,
                                              margin: EdgeInsets.only(left: 3),
                                              decoration: BoxDecoration(
                                                color: AppColors.secondaryElement,
                                                borderRadius: BorderRadius.all(Radius.circular(1.63559)),
                                              ),
                                              child: Container(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 131,
                                height: 48,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        width: 131,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          color: AppColors.secondaryElement,
                                          borderRadius: BorderRadius.all(Radius.circular(24)),
                                        ),
                                        child: Container(),
                                      ),
                                    ),
                                    Positioned(
                                      right: 21,
                                      bottom: 16,
                                      child: Text(
                                        "Xem chi tiết",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 38, 64, 139),
                                          fontFamily: "Open Sans",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          letterSpacing: -0.16491,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 1,
                                      bottom: 1,
                                      child: Container(
                                        width: 130,
                                        height: 47,
                                        decoration: BoxDecoration(
                                          border: Border.fromBorderSide(Borders.secondaryBorder),
                                          borderRadius: BorderRadius.all(Radius.circular(23.5)),
                                        ),
                                        child: Container(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}