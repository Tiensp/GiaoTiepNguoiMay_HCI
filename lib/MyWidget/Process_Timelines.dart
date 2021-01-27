import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';


const completeColor = Color(0xff5e6172);
const inProgressColor = Color(0xff5ec792);
const todoColor = Color(0xffd1d2d7);



Timeline process_Timelines( int _processIndex, int sizeWidth) {
    return Timeline.tileBuilder(
    theme: TimelineThemeData(
      direction: Axis.horizontal,
      connectorTheme: ConnectorThemeData(
        space: 30.0,
        thickness: 5.0,
      ),
    ),
    builder: TimelineTileBuilder.connected(
      connectionDirection: ConnectionDirection.before,
      itemExtentBuilder: (_, __) =>
      sizeWidth / (_processes.length),
      oppositeContentsBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            _processes[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: getColor(index, _processIndex),
            ),
          ),
        );
      },
      indicatorBuilder: (_, index) {
        var color;
        var child;
        if (index == _processIndex) {
          color = inProgressColor;
          child = Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ),
          );
        } else if (index < _processIndex) {
          color = completeColor;
          child = Icon(
            Icons.check,
            color: Colors.white,
            size: 15.0,
          );
        } else {
          color = todoColor;
        }

        if (index <= _processIndex) {
          return Stack(
            children: [
              CustomPaint(
                size: Size(20.0, 20.0),
                painter: _BezierPainter(
                  color: color,
                  drawStart: index > 0,
                  drawEnd: index < _processIndex,
                ),
              ),
              DotIndicator(
                size: 20.0,
                color: color,
                child: child,
              ),
            ],
          );
        } else {
          return Stack(
            children: [
              CustomPaint(
                size: Size(15.0, 15.0),
                painter: _BezierPainter(
                  color: color,
                  drawEnd: index < _processes.length - 1,
                ),
              ),
              OutlinedDotIndicator(
                borderWidth: 4.0,
                color: color,
              ),
            ],
          );
        }
      },
      connectorBuilder: (_, index, type) {
        if (index > 0) {
          if (index == _processIndex) {
            final prevColor = getColor(index - 1, _processIndex);
            final color = getColor(index, _processIndex);
            var gradientColors;
            if (type == ConnectorType.start) {
              gradientColors = [Color.lerp(prevColor, color, 0.5), color];
            } else {
              gradientColors = [
                prevColor,
                Color.lerp(prevColor, color, 0.5)
              ];
            }
            return DecoratedLineConnector(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradientColors,
                ),
              ),
            );
          } else {
            return SolidLineConnector(
              color: getColor(index, _processIndex ),
            );
          }
        } else {
          return null;
        }
      },
      itemCount: _processes.length,
    ),
    );
}

Color getColor(int index, int _processIndex) {
  if (index == _processIndex) {
    return inProgressColor;
  } else if (index < _processIndex) {
    return completeColor;
  } else {
    return todoColor;
  }
}

/// hardcoded bezier painter
/// TODO: Bezier curve into package component
class _BezierPainter extends CustomPainter {
  const _BezierPainter({
    @required this.color,
    this.drawStart = true,
    this.drawEnd = true,
  });

  final Color color;
  final bool drawStart;
  final bool drawEnd;

  Offset _offset(double radius, double angle) {
    return Offset(
      radius * cos(angle) + radius,
      radius * sin(angle) + radius,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    final radius = size.width / 2;

    var angle;
    var offset1;
    var offset2;

    var path;

    if (drawStart) {
      angle = 3 * pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);
      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(0.0, size.height / 2, -radius,
            radius) // TODO connector start & gradient
        ..quadraticBezierTo(0.0, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
    if (drawEnd) {
      angle = -pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);

      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(size.width, size.height / 2, size.width + radius,
            radius) // TODO connector end & gradient
        ..quadraticBezierTo(size.width, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(_BezierPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.drawStart != drawStart ||
        oldDelegate.drawEnd != drawEnd;
  }
}

final _processes = [
  'Đặt hàng',
  'Nhận hàng',
  'Nhập kho',
  'Thanh toán',
];