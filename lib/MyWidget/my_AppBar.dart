import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
  final _tittle;
  final _color;
  MyAppBar(this._tittle, this._color);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: _color,
      iconTheme: IconThemeData(color: Colors.indigo),
      title: Text(
        '$_tittle',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Color.fromARGB(255, 38, 64, 139),
          fontFamily: "Open Sans",
          fontWeight: FontWeight.w700,
          fontSize: 24,
          letterSpacing: -0.26385,
        ),
      ),
      elevation: 0,
    );
  }
}

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final double barHeight = 50.0;

  GradientAppBar(this.title);
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusbarHeight),
      child: new Center(
        child: new Text(
          title,
          style: new TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [Color.fromARGB(255,42,127,206), Color.fromARGB(255,16,216,216)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
        ),
      ),
    );
  }
}
