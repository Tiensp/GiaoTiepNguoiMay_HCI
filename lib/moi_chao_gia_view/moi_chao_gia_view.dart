/*
*  moi_chao_gia_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/request_model.dart';
import 'package:gtnm_hci/MyWidget/my_ChaoGiaDialog.dart';

class MoiChaoGiaWidget extends StatefulWidget {
  @override
  _MoiChaoGiaWidgetState createState() => _MoiChaoGiaWidgetState();
}

class _MoiChaoGiaWidgetState extends State<MoiChaoGiaWidget> {
  int selectedSupplier = 0;
  bool showMoreAvatar = false;

  final List<RequestModel> prepareData = [
    RequestModel(
        ID: '#8566',
        companyName: 'Công ty CP NT',
        approval: true,
        bodyModel: RequestBodyModel(
            title_work: 'Đặt lô mới',
            productName: 'Vải lụa đẹp',
            rePresentative: 'Ngọc Toàn',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            detail: '- 1 tấn')),
    RequestModel(
        ID: '#8566',
        companyName: 'Công ty TMDV QN',
        approval: false,
        bodyModel: RequestBodyModel(
            title_work: 'Đặt lô mới',
            productName: 'Vải lụa đẹp',
            rePresentative: 'Quang Nhân',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            detail: '- 1 tấn')),
    RequestModel(
        ID: '#8566',
        companyName: 'Công ty TMDV QN',
        approval: false,
        bodyModel: RequestBodyModel(
            title_work: 'Đặt lô mới',
            productName: 'Vải lụa đẹp',
            rePresentative: 'Quang Nhân',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            detail: '- 1 tấn')),
    RequestModel(
        ID: '#8566',
        companyName: 'Công ty TMDV QN',
        approval: false,
        bodyModel: RequestBodyModel(
            title_work: 'Đặt lô mới',
            productName: 'Vải lụa đẹp',
            rePresentative: 'Quang Nhân',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            detail: '- 1 tấn'))
  ];

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
                      Row(
                        children: [
                          Text(
                            'Cung cấp vải gấm',
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 80),
                          Container(
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
                            prepareData[index].bodyModel.requestDate,
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
                            prepareData.length.toString(),
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
                                itemCount: prepareData.length,
                                itemBuilder: (context, index) {
                                  if (index > 2) {
                                    if (showMoreAvatar == false) {
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
                                          MyChaoGiaDialog(selected: selectedSupplier))
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
            child: Container(),
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
}

// Expanded(
// flex: 1,
// child: Container(
// margin: EdgeInsets.only(left: 23, top: 23, right: 21, bottom: 9),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Container(
// width: 36,
// margin: EdgeInsets.only(top: 2, bottom: 9),
// child: Stack(
// alignment: Alignment.center,
// children: [
// Positioned(
// left: 0,
// top: 0,
// child: Container(
// width: 36,
// height: 36,
// decoration: BoxDecoration(
// color: Color.fromARGB(255, 14, 62, 134),
// borderRadius: BorderRadius.all(Radius.circular(17.9915)),
// ),
// child: Container(),
// ),
// ),
// Positioned(
// left: 22,
// top: 0,
// child: Container(
// width: 11,
// height: 11,
// decoration: BoxDecoration(
// color: AppColors.secondaryElement,
// borderRadius: BorderRadius.all(Radius.circular(18)),
// ),
// child: Container(),
