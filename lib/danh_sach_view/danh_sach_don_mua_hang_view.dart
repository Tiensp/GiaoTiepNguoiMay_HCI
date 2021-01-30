/*
*  danh_sach_widget.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gtnm_hci/tao_moi_yeu_cau_khach_hang_view/tao_moi_yeu_cau_khach_hang_view.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/purchase_order_model.dart';
import 'package:gtnm_hci/MyWidget/SearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:gtnm_hci/MyWidget/my_Drawer.dart';
import 'package:gtnm_hci/MyWidget/my_AppBar.dart';
import 'package:gtnm_hci/MyWidget/my_BottomNavigationBar.dart';
import 'package:gtnm_hci/MyWidget/Process_Timelines.dart';


class DanhSachDonMuaHangView extends StatefulWidget {
  @override
  _DanhSachDonMuaHangViewState createState() => _DanhSachDonMuaHangViewState();
}

class _DanhSachDonMuaHangViewState extends State<DanhSachDonMuaHangView> {
  List<String> _choices;
  int _defaultChoices;

  @override
  void initState() {
    super.initState();
    _defaultChoices = 0;
    _choices = ['Mã số', 'Sản phẩm', 'Nhà cung cấp', 'Trạng thái', 'Số điện thoại'];
  }

  @override
  Widget build(BuildContext context) {
    var scrSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 25, top: 12, bottom: 12, right: 25),
            child: Row(children: [
              AnimatedSearchBar(),
              Padding(
                padding: EdgeInsets.only(bottom: 20, left: 20),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: kElevationToShadow[1],
                ),
                child: RaisedButton(
                    color: Color.fromARGB(255, 38, 64, 139),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) =>
                                TaoMoiYeuCauKhachHangView()),
                      );
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ]),
          ),
          Container(
            width: 400,
            color: Colors.white,
            child: SingleChildScrollView(
              padding:
              EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
              scrollDirection: Axis.horizontal,
              child: _choiceChips(),
            ),
          ),
          Container(
            width: 320,
            child: Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              color: Colors.white,
              padding: EdgeInsets.all(15),
              child: ListView.builder(
                itemCount: prepareData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ExpansionPanelList(
                        elevation: 0,
                        animationDuration: Duration(seconds: 1),
                        children: [
                          ExpansionPanel(
                            body: Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 0, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 350,
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        border:
                                        Border.all(color: Colors.blue[100]),
                                        borderRadius: BorderRadius.circular(8.0)),
                                    child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Container(
                                                  width: 300,
                                                  height: 70,
                                                  child:
                                                  process_Timelines(prepareData[index].bodyModel.processStatus, 300)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Tên sản phẩm',
                                                    style: TextStyle(
                                                      color: AppColors.secondaryText,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(bottom: 8)),
                                                  Text(
                                                    '${prepareData[index].bodyModel.productName}',
                                                    style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                  padding:
                                                  EdgeInsets.only(right: 85)),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Số lượng',
                                                    style: TextStyle(
                                                      color: AppColors.secondaryText,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(bottom: 8)),
                                                  Text(
                                                    '${prepareData[index].bodyModel.amount}',
                                                    style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Đơn giá',
                                                    style: TextStyle(
                                                      color: AppColors.secondaryText,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(bottom: 8)),
                                                  Text(
                                                    '${prepareData[index].bodyModel.unitPrice}',
                                                    style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                  padding:
                                                  EdgeInsets.only(right: 130)),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Thành tiền',
                                                    style: TextStyle(
                                                      color: AppColors.secondaryText,
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                      EdgeInsets.only(bottom: 8)),
                                                  Text(
                                                    '${prepareData[index].bodyModel.totalMoney}',
                                                    style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Divider(
                                            height: 12,
                                            thickness: 1,
                                            color: Colors.grey[300],
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Text(
                                            'Nhà cung cấp',
                                            style: TextStyle(
                                              color: AppColors.secondaryText,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Text(
                                            '${prepareData[index].bodyModel.supplier}',
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 16,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 12)),
                                          Text(
                                            'Email',
                                            style: TextStyle(
                                              color: AppColors.secondaryText,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Text(
                                            '${prepareData[index].bodyModel.Email}',
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 16,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Text(
                                            'Số điện thoại',
                                            style: TextStyle(
                                              color: AppColors.secondaryText,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 8)),
                                          Text(
                                            '${prepareData[index].bodyModel.Phone}',
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 16,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                              EdgeInsets.only(bottom: 12)),
                                          Divider(
                                            height: 12,
                                            thickness: 1,
                                            color: Colors.grey[300],
                                          ),
                                          Container(
                                            width: 250,
                                            padding: EdgeInsets.only(top: 12, right: 12, bottom: 12),
                                            child: IntrinsicHeight(
                                              child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 110,
                                                      padding: EdgeInsets.only(
                                                          left: 2),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                        children: <Widget>[
                                                          Text(
                                                            'Ngày yêu cầu',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                              EdgeInsets.only(
                                                                  bottom: 8)),
                                                          Text(
                                                            '${prepareData[index].bodyModel.requestDate}',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    VerticalDivider(
                                                      width: 13,
                                                      thickness: 1,
                                                      indent: 3,
                                                      endIndent: 3,
                                                      color: Colors.grey[300],
                                                    ),
                                                    Container(
                                                      width: 120,
                                                      padding: EdgeInsets.only(
                                                          left: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                        children: <Widget>[
                                                          Text(
                                                            'Ngày nhận hàng',
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .secondaryText,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                              EdgeInsets.only(
                                                                  bottom: 8)),
                                                          Text(
                                                            '${prepareData[index].bodyModel.recieveDate}',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[700],
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            headerBuilder:
                                (BuildContext context, bool isExpanded) {
                              return Container(
                                  padding: EdgeInsets.only(
                                      left: 12, top: 20, bottom: 20),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              prepareData[index].ID,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    153, 110, 131, 149),
                                                fontFamily: "Open Sans",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                letterSpacing: -0.16491,
                                              ),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 67.0)),
                                            Container(
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.transparent,
                                                    width: 0.5),
                                                color: prepareData[index].approval
                                                    ? (Colors.greenAccent[100])
                                                    : (Colors.yellow[200]),
                                                shape: BoxShape.rectangle,
                                                borderRadius:
                                                BorderRadius.circular(10.0),
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
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 8),
                                        ),
                                        Text(
                                          prepareData[index].productName,
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ]));
                            },
                            isExpanded: prepareData[index].isExpanded,
                            canTapOnHeader: true,
                          ),
                        ],
                        expansionCallback: (int item, bool status) {
                          setState(() {
                            prepareData[index].isExpanded =
                            !prepareData[index].isExpanded;
                          });
                        },
                      ),
                      Container(
                        width: 320,
                        child: Divider(
                          height: 20,
                          thickness: 1,
                          color: Colors.grey[300],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }

  _choiceChips() {
    return Wrap(
      spacing: 10,
      children: List<Widget>.generate(_choices.length, (int index) {
        return ChoiceChip(
          labelPadding: EdgeInsets.all(5.0),
          label: Text(
            _choices[index],
            style: TextStyle(color: Color.fromARGB(255, 38, 64, 139)),
          ),
          backgroundColor: Colors.white,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2.5,
          shadowColor: Colors.grey[60],
          padding: EdgeInsets.all(6.0),
          selected: _defaultChoices == index,
          selectedColor: Colors.indigo[150],
          onSelected: (bool selected) {
            setState(() {
              _defaultChoices = selected ? index : 0;
            });
          },
        );
      }),
    );
  }

  List<PurchaseOrderModel> prepareData = <PurchaseOrderModel>[
    PurchaseOrderModel(
        ID: '#8566',
        productName: 'Vải lụa đẹp',
        approval: true,
        bodyModel: PurchaseOrderBodyModel(
            productName: 'Vải lụa đẹp',
            amount: '100',
            unitPrice: '1000',
            totalMoney: '100 000',
            supplier: 'Kỷ Nguyên',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            processStatus: 1
        )),
    PurchaseOrderModel(
        ID: '#8566',
        productName: 'Vải dù',
        approval: true,
        bodyModel: PurchaseOrderBodyModel(
            productName: 'Vải dù',
            amount: '100',
            unitPrice: '1000',
            totalMoney: '100 000',
            supplier: 'Quang Tiến',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            processStatus: 2
        )),
    PurchaseOrderModel(
        ID: '#8566',
        productName: 'Da PU nhập khẩu',
        approval: false,
        bodyModel: PurchaseOrderBodyModel(
            productName: 'Da PU nhập khẩu',
            amount: '100',
            unitPrice: '1000',
            totalMoney: '100 000',
            supplier: 'Ngọc Toàn',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            processStatus: 0
        )),
    PurchaseOrderModel(
        ID: '#8566',
        productName: 'Vải gấm hoa',
        approval: true,
        bodyModel: PurchaseOrderBodyModel(
            productName: 'Vải gấm hoa',
            amount: '100',
            unitPrice: '1000',
            totalMoney: '100 000',
            supplier: 'Quang Nhân',
            Email: 'abc@gmail.com',
            Phone: '0123456789',
            requestDate: '22/12/2020',
            recieveDate: '25/12/2020',
            processStatus: 3
        ))
  ];
}
