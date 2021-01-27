/*
*  gradients.dart
*  Giaotiepnguoimay
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:flutter/rendering.dart';


class Gradients {
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment(-0.01833, 0.01939),
    end: Alignment(0.01917, 1.01938),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 17, 78, 171),
      Color.fromARGB(255, 17, 32, 60),
    ],
  );
}