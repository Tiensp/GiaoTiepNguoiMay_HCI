/*
*  lich_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/request_model.dart';
import 'package:gtnm_hci/MyWidget/purchase_order_model.dart';
import 'package:gtnm_hci/them_lich_view/them_lich_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:gtnm_hci/MyWidget/my_Drawer.dart';
import 'package:gtnm_hci/MyWidget/my_AppBar.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:gtnm_hci/MyWidget/App_BottomNavigationBar.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class LichView extends StatefulWidget {
  @override
  _LichViewState createState() => _LichViewState();
}

class _LichViewState extends State<LichView> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar('Lịch', Color.fromARGB(255, 248, 249, 250)),
      drawer: MyDrawer(),
      bottomNavigationBar: AppDocker(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 248, 249, 250),
        child: Column(
          children: [
            Container(height: 10),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: Container(
                width: 350,
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: kElevationToShadow[1],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.grey),
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text(
                            'LỊCH HẸN',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        heightFactor: 1.07,
                        child: TableCalendar(
                          locale: 'vi_VI',
                          calendarController: _calendarController,
                          initialCalendarFormat: CalendarFormat.month,
                          startingDayOfWeek: StartingDayOfWeek.monday,
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false,
                            centerHeaderTitle: true,
                            titleTextBuilder: (date, locale) =>
                                DateFormat.yMMMM(locale)
                                    .format(date)
                                    .capitalize(),
                            titleTextStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          builders: CalendarBuilders(
                            selectedDayBuilder: (context, date, events) =>
                                Container(
                              child: Icon(
                                Icons.event_note,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                          ),
                          calendarStyle: CalendarStyle(
                            weekdayStyle: TextStyle(
                              fontSize: 16,
                            ),
                            weekendStyle:
                                TextStyle(fontSize: 16, color: Colors.red),
                            outsideStyle:
                                TextStyle(fontSize: 16, color: Colors.grey),
                            outsideWeekendStyle:
                                TextStyle(fontSize: 16, color: Colors.red[200]),
                          ),
                          daysOfWeekStyle: DaysOfWeekStyle(
                              weekdayStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              weekendStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            Text(
              'LỊCH HẸN HÔM NAY',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.85,
                heightFactor: 0.9,
                child: ListView.builder(
                    itemCount: prepareData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 0),
                            leading: CircleAvatar(
                              backgroundColor:
                                  prepareData[index].bodyModel.processStatus ==
                                          0
                                      ? Colors.red[400]
                                      : prepareData[index]
                                                  .bodyModel
                                                  .processStatus ==
                                              1
                                          ? Colors.orangeAccent
                                          : prepareData[index]
                                                      .bodyModel
                                                      .processStatus ==
                                                  2
                                              ? Colors.green
                                              : Colors.indigo,
                              child:
                                  prepareData[index].bodyModel.processStatus ==
                                          0
                                      ? Icon(Icons.receipt_long,
                                          color: Colors.white)
                                      : prepareData[index]
                                                  .bodyModel
                                                  .processStatus ==
                                              1
                                          ? Icon(Icons.work_outline_rounded,
                                              color: Colors.white)
                                          : prepareData[index]
                                                      .bodyModel
                                                      .processStatus ==
                                                  2
                                              ? Icon(Icons.auto_awesome_motion,
                                                  color: Colors.white)
                                              : Icon(Icons.payments_outlined,
                                                  color: Colors.white),
                            ),
                            title: Text(
                              prepareData[index].bodyModel.processStatus == 0
                                  ? 'Đặt hàng'
                                  : prepareData[index]
                                              .bodyModel
                                              .processStatus ==
                                          1
                                      ? 'Nhận hàng'
                                      : prepareData[index]
                                                  .bodyModel
                                                  .processStatus ==
                                              2
                                          ? 'Nhập hàng'
                                          : 'Thanh toán',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Open Sans",
                                letterSpacing: -0.26385,
                              ),
                            ),
                            subtitle: Text('13:00 - 19 Aug 2021'),
                            onTap: () {
                              /* ================SHOW DIALOG===================*/
                              showDialog(
                                  context: context,
                                  builder: (_) => new AlertDialog(
                                        content: Container(
                                          height: 400,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text('Thông tin đơn hàng',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.indigo,
                                                          fontFamily:
                                                              "Open Sans",
                                                          letterSpacing:
                                                              -0.26385)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 70)),
                                                  IconButton(
                                                      icon: Icon(Icons.clear,
                                                          color:
                                                              Colors.grey[600]),
                                                      iconSize: 20,
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      })
                                                ],
                                              ),
                                              Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      width: 350,
                                                      padding:
                                                          EdgeInsets.all(15),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .blue[100]),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0)),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: <Widget>[
                                                            Row(
                                                              children: [
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Tên sản phẩm',
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 4)),
                                                                    Text(
                                                                      '${prepareData[index].bodyModel.productName}',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey[700],
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right:
                                                                            55)),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Số lượng',
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 4)),
                                                                    Text(
                                                                      '${prepareData[index].bodyModel.amount}',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey[700],
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            8)),
                                                            Row(
                                                              children: [
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Đơn giá',
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 4)),
                                                                    Text(
                                                                      '${prepareData[index].bodyModel.unitPrice}',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey[700],
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right:
                                                                            90)),
                                                                Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Thành tiền',
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            EdgeInsets.only(bottom: 4)),
                                                                    Text(
                                                                      '${prepareData[index].bodyModel.totalMoney}',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey[700],
                                                                        fontSize:
                                                                            14,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            8)),
                                                            Divider(
                                                              height: 12,
                                                              thickness: 1,
                                                              color: Colors
                                                                  .grey[300],
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            8)),
                                                            Text(
                                                              'Nhà cung cấp',
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .secondaryText,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            4)),
                                                            Text(
                                                              '${prepareData[index].bodyModel.supplier}',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey[700],
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            12)),
                                                            Text(
                                                              'Email',
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .secondaryText,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            4)),
                                                            Text(
                                                              '${prepareData[index].bodyModel.Email}',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey[700],
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            8)),
                                                            Text(
                                                              'Số điện thoại',
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .secondaryText,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            4)),
                                                            Text(
                                                              '${prepareData[index].bodyModel.Phone}',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .grey[700],
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            12)),
                                                            Divider(
                                                              height: 12,
                                                              thickness: 1,
                                                              color: Colors
                                                                  .grey[300],
                                                            ),
                                                            Container(
                                                              width: 170,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 12,
                                                                      right: 12,
                                                                      bottom:
                                                                          12),
                                                              child:
                                                                  IntrinsicHeight(
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: <
                                                                        Widget>[
                                                                      Container(
                                                                        width:
                                                                            80,
                                                                        padding:
                                                                            EdgeInsets.only(left: 2),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.stretch,
                                                                          children: <
                                                                              Widget>[
                                                                            Text(
                                                                              'Ngày yêu cầu',
                                                                              style: TextStyle(
                                                                                color: AppColors.secondaryText,
                                                                                fontSize: 12,
                                                                              ),
                                                                            ),
                                                                            Padding(padding: EdgeInsets.only(bottom: 4)),
                                                                            Text(
                                                                              '${prepareData[index].bodyModel.requestDate}',
                                                                              style: TextStyle(
                                                                                color: Colors.grey[700],
                                                                                fontSize: 14,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      VerticalDivider(
                                                                        width:
                                                                            13,
                                                                        thickness:
                                                                            1,
                                                                        indent:
                                                                            3,
                                                                        endIndent:
                                                                            3,
                                                                        color: Colors
                                                                            .grey[300],
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            90,
                                                                        padding:
                                                                            EdgeInsets.only(left: 0),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.stretch,
                                                                          children: <
                                                                              Widget>[
                                                                            Text(
                                                                              'Ngày nhận hàng',
                                                                              style: TextStyle(
                                                                                color: AppColors.secondaryText,
                                                                                fontSize: 12,
                                                                              ),
                                                                            ),
                                                                            Padding(padding: EdgeInsets.only(bottom: 4)),
                                                                            Text(
                                                                              '${prepareData[index].bodyModel.recieveDate}',
                                                                              style: TextStyle(
                                                                                color: Colors.grey[700],
                                                                                fontSize: 14,
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
                                            ],
                                          ),
                                        ),
                                      ));
                              /*====================END SHOW DIALOG=====================*/
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
                    }),
              ),
            )
          ],
        ),
      ),
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
            processStatus: 1)),
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
            processStatus: 2)),
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
            processStatus: 0)),
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
            processStatus: 3))
  ];
}
