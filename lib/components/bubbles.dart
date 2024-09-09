import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double? height;
  final double? width;
  final Color color;

  const CustomContainer(
     this.top,
     this.bottom,
     this.left,
     this.right,
     this.height,
     this.width,
     this.color,
  );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}

