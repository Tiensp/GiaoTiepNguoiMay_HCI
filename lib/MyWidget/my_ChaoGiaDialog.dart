import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gtnm_hci/MyWidget/request_model.dart';

class MyDialog extends StatefulWidget {
  final int selected;

  const MyDialog ({ Key key, this.selected }): super(key: key);
  @override
  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  int selectedIndex;
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
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 450,
        width: 400,
        child: Column(
          children: [
            Row(
              children: [
                Text('Thông tin nhà cung cấp',
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
                        left: 40)),
                IconButton(
                    icon: Icon(Icons.clear,
                        color:
                        Colors.grey[600]),
                    iconSize: 20,
                    onPressed: () {
                      Navigator.of(context)
                          .pop(selectedIndex);
                    })
              ],
            ),
            Divider(thickness: 1),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(1),
                  itemCount: prepareData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 120,
                      width: 400,
                      child: Card(
                        elevation: 3,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(backgroundColor: Colors.grey, radius: 25,),
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 8)),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Tên: ", style: TextStyle(fontSize: 10)),
                                              Text(prepareData[index].companyName, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("SĐT: ", style: TextStyle(fontSize: 10)),
                                              Text(prepareData[index].bodyModel.Phone, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("Email: ", style: TextStyle(fontSize: 10)),
                                              Text(prepareData[index].bodyModel.Email, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("Website: ", style: TextStyle(fontSize: 10)),
                                              Text(prepareData[index].bodyModel.detail, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 5)),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Radio(
                                              value: index,
                                              groupValue: selectedIndex,
                                              onChanged: (val) {
                                                setState(() {
                                                  selectedIndex = val;
                                                });
                                              }),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(bottom: 10)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Báo giá: ", style: TextStyle(fontSize: 12)),
                                      Text(prepareData[index].bodyModel.Phone, style: TextStyle(fontSize: 14)),
                                      Text(" VNĐ", style: TextStyle(fontSize: 12))
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    );
                  }
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                  color: Colors.indigo,
                  onPressed: (){
                    Navigator.of(context)
                        .pop(this.selectedIndex);
                  },
                  child: Text(
                    'Chọn nhà cung cấp',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  )),
            )
          ],
        ),
      )
    );
  }
}