import 'package:flutter/material.dart';

class ItemModel {
  String ID;
  String companyName;
  bool approval;
  BodyModel bodyModel;

  ItemModel({this.ID, this.companyName,
    this.approval, this.bodyModel});
}

class BodyModel {
  String title_work;
  String productName;
  String rePresentative;
  String Email;
  String Phone;
  String requestDate;
  String recieveDate;
  String detail;

  BodyModel({this.title_work, this.productName, this.rePresentative,
    this.Email, this.Phone, this.requestDate, this.recieveDate, this.detail});
}