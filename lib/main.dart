/*
*  main.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:gtnm_hci/Home.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:gtnm_hci/Router.dart';

void main() {
  initializeDateFormatting('vi_VI', null).then((_) => runApp(MyApp()));
}


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Home(),
      // initialRoute: "dsyeucau",
      // onGenerateRoute: router.generateRoute,
    );
  }
}