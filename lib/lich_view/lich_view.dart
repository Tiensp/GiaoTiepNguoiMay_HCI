/*
*  lich_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/purchase_order_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:gtnm_hci/MyWidget/my_LichDialog.dart';


extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

class LichView extends StatefulWidget {
  LichView({Key key}) : super(key: key);

  @override
  _LichViewState createState() => _LichViewState();
}

class _LichViewState extends State<LichView> with TickerProviderStateMixin{
  CalendarController _calendarController;
  DateTime _selectedDay;
  Map<DateTime, List> _events;
  List _selectedEvents;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
    final _today = DateTime.now();
    _selectedDay = DateTime(_today.year, _today.month,_today.day);
    _events = {
      DateTime(2021, 1, 30): [
        prepareData[0],
        prepareData[1],
        prepareData[2],
        prepareData[3]
      ],
      DateTime(2021, 1, 25): [
        prepareData[0],
        prepareData[1],
        prepareData[2],
        prepareData[3]
      ],
      DateTime(2021, 1, 16): [
        prepareData[0],
        prepareData[1],
        prepareData[2],
        prepareData[3]
      ],
      DateTime(2021, 1, 11): [
        prepareData[0],
        prepareData[2],
      ],
      DateTime(2021, 1, 10): [
        prepareData[3]],
      _selectedDay.subtract(Duration(days: 10)): [
        prepareData[1],
        prepareData[2],
      ],
      DateTime(2021, 1, 5): [
        prepareData[2],
        prepareData[3]
      ],
      DateTime(2021, 2, 10): [
        prepareData[0],
      ],
      DateTime(2021, 1, 2): [
        prepareData[0],
        prepareData[3]
      ],
      DateTime(2020, 12, 28): [
        prepareData[0],
        prepareData[1],
        prepareData[2],
        prepareData[3]
      ],
    };

    _selectedEvents = _events[_selectedDay] ?? [];

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          events: _events,
                          onDaySelected: (date, events,_) {
                            setState(() {
                              _selectedDay = date;
                              _selectedEvents = events;
                            });
                          },
                          availableGestures: AvailableGestures.all,
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
                            selectedDayBuilder: (context, date, events) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${date.day}',
                                    style: TextStyle().copyWith(fontSize: 16.0, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                            todayDayBuilder: (context, date, _) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '${date.day}',
                                    style: TextStyle().copyWith(fontSize: 16.0, color: Colors.white),
                                  ),
                                ),
                              );
                            },
                            markersBuilder: (context, date, events, holidays) {
                              final children = <Widget>[];

                              if (events.isNotEmpty) {
                                children.add(
                                  Center(child: _buildEventsMarker(date, events)),
                                );
                              }

                              if (holidays.isNotEmpty) {
                                children.add(
                                  Center(child: _buildHolidaysMarker()),
                                );
                              }

                              return children;
                            },
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
                    itemCount: _selectedEvents.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 0),
                            leading: CircleAvatar(
                              backgroundColor:
                                  _selectedEvents[index].bodyModel.processStatus ==
                                          0
                                      ? Colors.red[400]
                                      : _selectedEvents[index]
                                                  .bodyModel
                                                  .processStatus ==
                                              1
                                          ? Colors.orangeAccent
                                          : _selectedEvents[index]
                                                      .bodyModel
                                                      .processStatus ==
                                                  2
                                              ? Colors.green
                                              : Colors.indigo,
                              child:
                                  _selectedEvents[index].bodyModel.processStatus ==
                                          0
                                      ? Icon(Icons.receipt_long,
                                          color: Colors.white)
                                      : _selectedEvents[index]
                                                  .bodyModel
                                                  .processStatus ==
                                              1
                                          ? Icon(Icons.work_outline_rounded,
                                              color: Colors.white)
                                          : _selectedEvents[index]
                                                      .bodyModel
                                                      .processStatus ==
                                                  2
                                              ? Icon(Icons.auto_awesome_motion,
                                                  color: Colors.white)
                                              : Icon(Icons.payments_outlined,
                                                  color: Colors.white),
                            ),
                            title: Text(
                              _selectedEvents[index].bodyModel.processStatus == 0
                                  ? 'Đặt hàng'
                                  : _selectedEvents[index]
                                              .bodyModel
                                              .processStatus ==
                                          1
                                      ? 'Nhận hàng'
                                      : _selectedEvents[index]
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
                            subtitle: Row(
                              children: [
                                Text('13:00 - '),
                                Text(DateFormat('dd-MM-yyyy').format(_selectedDay))
                              ],
                            ),
                            onTap: () {
                              /* ================SHOW DIALOG===================*/
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyLichDialog(selectedIndex: index, listData: prepareData));
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

  Widget _buildEventsMarker(DateTime date, List events) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      width: 38,
      height: 38,
      child: Center(
        child: Icon(Icons.event_available, color: Colors.green, size: 30)
      ),
    );
  }

  Widget _buildHolidaysMarker() {
    return Icon(
      Icons.celebration,
      size: 20.0,
      color: Colors.blueGrey[800],
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
            processStatus: 0)),
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
            processStatus: 1)),
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
            processStatus: 2)),
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
