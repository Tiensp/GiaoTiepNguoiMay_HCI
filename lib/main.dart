/*
*  main.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/danh_sach_view/danh_sach_yeu_cau_view.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:gtnm_hci/Router.dart';

void main() {
  initializeDateFormatting('vi_VI', null).then((_) => runApp(MyApp()));
}


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      initialRoute: "dsyeucau",
      onGenerateRoute: router.generateRoute,
    );
  }
}