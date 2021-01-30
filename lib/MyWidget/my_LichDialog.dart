import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtnm_hci/values/values.dart';
import 'package:gtnm_hci/MyWidget/purchase_order_model.dart';

class MyLichDialog extends StatefulWidget {
  final int selectedIndex;
  final List<PurchaseOrderModel> listData;

  const MyLichDialog ({ Key key, this.selectedIndex, this.listData }): super(key: key);
  @override
  _MyLichDialogState createState() => new _MyLichDialogState();
}

class _MyLichDialogState extends State<MyLichDialog> {
  int index;
  List<PurchaseOrderModel> prepareData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.selectedIndex;
    prepareData = widget.listData;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
    );
  }
}