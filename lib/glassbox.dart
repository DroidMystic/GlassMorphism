import 'dart:ui';

import 'package:flutter/material.dart';
final _borderRadius = BorderRadius.circular(20);

class GlassBox extends StatelessWidget {

  final height;
  final width;
  final child;

  GlassBox({
    required this.height,
    required this.width,
    required this.child
  });
 


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Container(
        height: height,width: width,
        child: Stack(
          children: [
            BackdropFilter(filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5
            ),
            child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                border:Border.all(color: Colors.white.withOpacity(0.1)
                ),borderRadius: _borderRadius,
                gradient: LinearGradient(begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:[Colors.white.withOpacity(0.4),
                Colors.white.withOpacity(0.1)]),
              ),
            ),
            Center(
              child: child,
            )
          ],
        ),
        ),
    );
  }
}