
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gtnm_hci/MyWidget/chaoGia_model.dart';

class MyChaoGiaDialog extends StatefulWidget {
  final int selected;
  final List<UsersChaoGiaModel> listData;

  const MyChaoGiaDialog ({ Key key, this.selected, this.listData}): super(key: key);
  @override
  _MyChaoGiaDialogState createState() => new _MyChaoGiaDialogState();
}

class _MyChaoGiaDialogState extends State<MyChaoGiaDialog> {
  int selectedIndex;
  List<UsersChaoGiaModel> prepareData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.selected;
    prepareData = widget.listData;
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
                                          CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            radius: 25,
                                            backgroundImage: AssetImage(prepareData[index].linkAvatar),
                                          ),
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
                                              Text(prepareData[index].Phone, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("Email: ", style: TextStyle(fontSize: 10)),
                                              Text(prepareData[index].Email, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text("Website: ", style: TextStyle(fontSize: 10)),
                                              Text(prepareData[index].webSite, style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                        ],
                                      ),
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
                                      Text(prepareData[index].price, style: TextStyle(fontSize: 14)),
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