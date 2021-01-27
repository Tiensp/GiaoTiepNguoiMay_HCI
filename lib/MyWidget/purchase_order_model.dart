import 'package:flutter/material.dart';

class PurchaseOrderModel {
  bool isExpanded;
  String ID;
  String productName;
  bool approval;
  PurchaseOrderBodyModel bodyModel;

  PurchaseOrderModel({this.isExpanded: false, this.ID, this.productName,
    this.approval, this.bodyModel});
}

class PurchaseOrderBodyModel {
  String productName;
  String amount;
  String unitPrice;
  String totalMoney;
  String supplier;
  String Email;
  String Phone;
  String requestDate;
  String recieveDate;
  int processStatus;

  PurchaseOrderBodyModel({this.productName, this.amount, this.unitPrice, this.totalMoney,
    this.supplier, this.Email, this.Phone, this.requestDate, this.recieveDate, this.processStatus});
}