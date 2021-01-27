/*
*  them_lich_view.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:gtnm_hci/lich_view/lich_view.dart';

class ThemLichView extends StatefulWidget {
  @override
  _ThemLichViewState createState() => _ThemLichViewState();
}

class _ThemLichViewState extends State<ThemLichView> {
  TextEditingController _textFieldController;
  int _defaultChoices;

  @override
  void initState() {
    super.initState();
    _textFieldController = TextEditingController();
    _defaultChoices = 0;
  }

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
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
                            child: Image.asset("assets/images/group-2.png")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                'THÊM LỊCH',
                style: TextStyle(
                  color: Color.fromARGB(255, 38, 64, 139),
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  letterSpacing: -0.26385,
                ),
              ),
            ),
            TextField(
              controller: _textFieldController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Tiêu đề ',
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontFamily: "Open Sans",
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.blue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1, color: Colors.blue)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LOẠI LỊCH HẸN',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: -0.26385,
                  ),
                ),
              ),
            ),

            //////// CHOICE CHIP ////////
            listChoiceChips(),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LỊCH CHI TIẾT',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: -0.26385,
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
              leading: Icon(Icons.access_time),
              title: Text(
                '12:00 AM - 1:00 PM',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontFamily: "Open Sans",
                  letterSpacing: -0.26385,
                ),
              ),
              subtitle: Text('Thứ 3, ngày 21/12/2020'),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
              leading: Icon(Icons.location_on_outlined),
              title: Text(
                'TP HCM',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontFamily: "Open Sans",
                  letterSpacing: -0.26385,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 0),
              leading: Icon(Icons.menu_open),
              title: Text(
                'Chi tiết công việc',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontFamily: "Open Sans",
                  letterSpacing: -0.26385,
                ),
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: SizedBox(
                  height: 50,
                  child: RaisedButton(
                    color: Color.fromARGB(255, 38, 64, 139),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ThemLichView()),
                      );
                    },
                    child: Text(
                      "KHỞI TẠO",
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  listChoiceChips() {
    return Wrap(
      spacing: 10,
      runSpacing: 5,
      children: [
        _choiceChips(
            'Công việc', 0, Colors.red[400], Icons.work_outline_rounded),
        _choiceChips('Tiệc', 1, Colors.orangeAccent, Icons.celebration),
        _choiceChips('ĐT', 2, Colors.green, Icons.phone_in_talk),
        _choiceChips('Khác', 3, Colors.indigo, Icons.auto_awesome_motion)
      ],
    );
  }

  _choiceChips(String _tittle, int index, var _color, var _icon) {
    return ChoiceChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: _defaultChoices == index
            ? Icon(
                Icons.check_circle,
                color: Colors.white,
              )
            : Icon(
                _icon,
                color: Colors.white,
              ),
      ),
      labelPadding: EdgeInsets.all(5.0),
      label: Text(
        _tittle,
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Open Sans",
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: _color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 2.5,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(6.0),
      selected: _defaultChoices == index,
      selectedColor: _color,
      onSelected: (bool selected) {
        setState(() {
          _defaultChoices = selected ? index : 0;
        });
      },
    );
  }
}
