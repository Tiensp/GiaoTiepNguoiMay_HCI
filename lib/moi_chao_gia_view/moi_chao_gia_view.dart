/*
*  moi_chao_gia_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/chaoGia_model.dart';
import 'package:gtnm_hci/MyWidget/my_ChaoGiaDialog.dart';

class MoiChaoGiaWidget extends StatefulWidget {
  @override
  _MoiChaoGiaWidgetState createState() => _MoiChaoGiaWidgetState();
}

class _MoiChaoGiaWidgetState extends State<MoiChaoGiaWidget> {
  int selectedSupplier = 0;
  bool showMoreAvatar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 250, 255),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: prepareData.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              height: 200,
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              child: Text(
                                prepareData[index].productName,
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent, width: 0.5),
                                color: prepareData[index].approval
                                    ? (Colors.greenAccent[100])
                                    : (Colors.yellow[200]),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                prepareData[index].approval
                                    ? ('  Đã phê duyệt  ')
                                    : ('Chưa phê duyệt'),
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  letterSpacing: -0.16491,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      Text(
                        'Chào giá cạnh tranh',
                        style: TextStyle(
                          color: AppColors.secondaryText,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w400,
                          fontSize: 13.5,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Thời gian nộp hồ sơ chào giá: ',
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w400,
                              fontSize: 13.5,
                            ),
                          ),
                          Text(
                            prepareData[index].expirationDate,
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10)),
                      Row(
                        children: [
                          Text(
                            'Đã có ',
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            prepareDataUser.length.toString(),
                            style: TextStyle(
                              color: Colors.indigo,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            ' nhà cung cấp ',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'vào chào giá',
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.white,
                            width: 165,
                            height: 36,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: prepareDataUser.length,
                                itemBuilder: (context, index) {
                                  if (index > 2) {
                                    if (showMoreAvatar == false) {
                                      if (index == 3) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              showMoreAvatar = true;
                                            });
                                            return avatarWithCheckIcon(index);
                                          },
                                          child: CircleAvatar(
                                              backgroundColor: Colors.indigo,
                                              child: Icon(Icons.more_horiz,
                                                  color: Colors.white)),
                                        );
                                      }
                                      else {
                                        return Container();
                                      }
                                    } else {
                                      return avatarWithCheckIcon(index);
                                    }
                                  } else {
                                    return avatarWithCheckIcon(index);
                                  }
                                }),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          FlatButton(
                            onPressed: () {
                              showDialog(
                                      context: context,
                                      builder: (_) =>
                                          MyChaoGiaDialog(selected: selectedSupplier,
                                              listData: prepareDataUser))
                                  .then((value) {
                                setState(() {
                                  selectedSupplier = value;
                                  showMoreAvatar = false;
                                });
                              });
                            },
                            child: Text('Xem chi tiết',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.indigo,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container avatarWithCheckIcon(int index) {
    return Container(
      width: 40,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(17.9915))),
            child: CircleAvatar(
              foregroundColor: Colors.white,
                child: Image.asset(prepareDataUser[index].linkAvatar))
          ),
        ),
        selectedSupplier == index
            ? //if isSelected: check
            Positioned(
                left: 22,
                top: 0,
                child: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Container(
                        child:
                            Icon(Icons.check, color: Colors.white, size: 10))))
            : //else: nothing
            Container(),
      ]),
    );
  }

  List<ChaoGiaModel> prepareData = [
    ChaoGiaModel(
        ID: '#1',
        productName: 'Cung cấp vải gấm',
        approval: true,
        expirationDate: '22/12/2020'),
    ChaoGiaModel(
        ID: '#2',
        productName: 'Cung cấp khóa kéo',
        approval: false,
        expirationDate: '29/10/2020'),
    ChaoGiaModel(
        ID: '#3',
        productName: 'Cung cấp da bò',
        approval: true,
        expirationDate: '05/12/2020'),
    ChaoGiaModel(
        ID: '#4',
        productName: 'Cung cấp tơ lụa',
        approval: false,
        expirationDate: '16/12/2020'),
    ChaoGiaModel(
        ID: '#5',
        productName: 'Cung cấp giấy bóng',
        approval: false,
        expirationDate: '10/11/2020'),
  ];

   List<UsersChaoGiaModel> prepareDataUser = [
    UsersChaoGiaModel(
        IDChaoGia: '#1',
        companyName: 'TNHH Kỷ Nguyên',
        Email: 'abc@gmail.com',
        Phone: '0123456789',
        webSite: 'abc.com.vn',
        price: '30.000.000',
        linkAvatar: 'assets/1.png'
    ),
    UsersChaoGiaModel(
        IDChaoGia: '#1',
        companyName: 'TMCP Ngọc Toàn',
        Email: 'abc@gmail.com',
        Phone: '0123456789',
        webSite: 'abc.com.vn',
        price: '25.000.000',
        linkAvatar: 'assets/2.png'
    ),
    UsersChaoGiaModel(
        IDChaoGia: '#1',
        companyName: 'TNHH Quang Tiến',
        Email: 'abc@gmail.com',
        Phone: '0123456789',
        webSite: 'abc.com.vn',
        price: '32.000.000',
        linkAvatar: 'assets/3.png'
    ),
    UsersChaoGiaModel(
        IDChaoGia: '#1',
        companyName: 'TMCP Quang Nhân',
        Email: 'abc@gmail.com',
        Phone: '0123456789',
        webSite: 'abc.com.vn',
        price: '28.000.000',
        linkAvatar: 'assets/4.png'
    ),
    UsersChaoGiaModel(
        IDChaoGia: '#1',
        companyName: 'TNHH UIT',
        Email: 'abc@gmail.com',
        Phone: '0123456789',
        webSite: 'abc.com.vn',
        price: '35.000.000',
        linkAvatar: 'assets/5.png'
    ),
    UsersChaoGiaModel(
        IDChaoGia: '#1',
        companyName: 'TNHH KTX',
        Email: 'abc@gmail.com',
        Phone: '0123456789',
        webSite: 'abc.com.vn',
        price: '35.000.000',
        linkAvatar: 'assets/6.png'
    ),
  ];
}
