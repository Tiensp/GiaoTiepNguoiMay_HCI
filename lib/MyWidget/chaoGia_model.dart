import 'package:flutter/material.dart';

class ChaoGiaModel {
  String ID;
  String productName;
  String expirationDate;
  bool approval;

  ChaoGiaModel({ this.ID, this.productName,
    this.expirationDate, this.approval});
}

class UsersChaoGiaModel {
  String companyName;
  String Email;
  String Phone;
  String webSite;
  String price;
  String linkAvatar;
  String IDChaoGia;

  UsersChaoGiaModel({this.companyName, this.Email, this.Phone,
    this.webSite, this.price, this.linkAvatar, this.IDChaoGia});
}