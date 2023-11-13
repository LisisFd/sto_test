import 'dart:math' as math;

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  static const double _bigShapeSize = 150.0;
  static const double _smallShapeSize = 50.0;
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Stack(
      children: [
        ClipPath(
          clipper: CustomShapeClass(),
          child: Container(
            color: theme.colorScheme.error.withOpacity(0.3),
          ),
        ),
        Positioned(
          bottom: _bigShapeSize * 1.2,
          left: _bigShapeSize,
          child: StarShape(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: theme.colorScheme.error.withOpacity(0.4),
                  width: 7,
                )),
            size: _smallShapeSize,
          ),
        ),
        Positioned(
          bottom: _bigShapeSize / 1.5,
          left: _bigShapeSize / 3,
          child: StarShape(
            decoration: BoxDecoration(
              color: theme.iconTheme.color?.withOpacity(0.2),
            ),
            size: _bigShapeSize,
          ),
        ),
        Positioned(
          bottom: -_bigShapeSize / 3,
          right: -_bigShapeSize / 1.5,
          child: StarShape(
            count: 15,
            decoration: BoxDecoration(
              color: theme.colorScheme.errorContainer.withOpacity(0.5),
            ),
            size: _bigShapeSize * 1.5,
          ),
        ),
      ],
    );
  }
}

class StarShape extends StatelessWidget {
  final BoxDecoration decoration;
  final double size;
  final int? count;
  const StarShape(
      {super.key, required this.decoration, required this.size, this.count});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _StarClipper(count ?? 10),
      child: Container(
        decoration: decoration,
        width: size,
        height: size,
      ),
    );
  }
}

class _StarClipper extends CustomClipper<Path> {
  _StarClipper(this.numberOfPoints);

  final int numberOfPoints;

  late int counter = 0;

  @override
  Path getClip(Size size) {
    double width = size.width;
    double outerCurveRadius = width / 2.08;
    double innerCurveRadius = width / 2.42;
    double halfWidth = width / 2;

    double radius = halfWidth / 1.11;

    double degreesPerStep = _degToRad(360 / numberOfPoints) as double;

    double halfDegreesPerStep = degreesPerStep / 2;

    var path = Path();

    double max = 2 * math.pi;

    path.moveTo(width, halfWidth);
    path.moveTo(
      halfWidth + radius * math.cos(0 + halfDegreesPerStep),
      halfWidth + radius * math.sin(0 + halfDegreesPerStep),
    );

    for (double step = 0; step < max + 1; step += degreesPerStep) {
      if (counter % 2 == 0) {
        path.quadraticBezierTo(
          halfWidth + outerCurveRadius * math.cos(step),
          halfWidth + outerCurveRadius * math.sin(step),
          halfWidth + radius * math.cos(step + halfDegreesPerStep),
          halfWidth + radius * math.sin(step + halfDegreesPerStep),
        );
      } else {
        path.quadraticBezierTo(
          halfWidth + innerCurveRadius * math.cos(step),
          halfWidth + innerCurveRadius * math.sin(step),
          halfWidth + radius * math.cos(step + halfDegreesPerStep),
          halfWidth + radius * math.sin(step + halfDegreesPerStep),
        );
      }

      counter++;
    }
    path.close();
    return path;
  }

  num _degToRad(num deg) => deg * (math.pi / 180.0);

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    _StarClipper oldie = oldClipper as _StarClipper;
    return numberOfPoints != oldie.numberOfPoints;
  }
}

class CustomShapeClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 4.5);
    var firstControlPoint = Offset(size.width / 15, size.height / 5);
    var firstEndPoint = Offset(size.width / 5, size.height / 15);
    var secondControlPoint = const Offset(150, 60);
    var secondEndPoint = Offset(size.width * 0.5, 0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
