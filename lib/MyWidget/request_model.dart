import 'package:flutter/material.dart';

class RequestModel {
  bool isExpanded;
  String ID;
  String companyName;
  bool approval;
  RequestBodyModel bodyModel;

  RequestModel({this.isExpanded: false, this.ID, this.companyName,
              this.approval, this.bodyModel});
}

class RequestBodyModel {
  String title_work;
  String productName;
  String rePresentative;
  String Email;
  String Phone;
  String requestDate;
  String recieveDate;
  String detail;

  RequestBodyModel({this.title_work, this.productName, this.rePresentative,
    this.Email, this.Phone, this.requestDate, this.recieveDate, this.detail});
}