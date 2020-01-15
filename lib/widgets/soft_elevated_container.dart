import 'package:flutter/material.dart';

class SoftElevatedContainer extends StatelessWidget {

  double width;
  double height;
  Widget child;
  Color color;
  double borderRadius;

  SoftElevatedContainer(
      {this.width, this.height, this.borderRadius, this.color, this.child});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300],
                offset: Offset(3.0, 3.0),
                blurRadius: 10.0,
                spreadRadius: 1.0
            ),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-3.0, -3.0),
                blurRadius: 10.0,
                spreadRadius: 2
            )
          ]
      ),
    );
  }
}

class SoftElevatedContainerDark extends StatelessWidget {

  double width;
  double height;
  Widget child;
  Color color;
  double borderRadius;

  SoftElevatedContainerDark(
      {this.width, this.height, this.borderRadius, this.color, this.child});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: child,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(3.0, 3.0),
                blurRadius: 10.0,
                spreadRadius: 2.0
            ),
            BoxShadow(
                color: Colors.grey[900],
                offset: Offset(-3.0, -3.0),
                blurRadius: 10.0,
                spreadRadius: 2.0
            )
          ]
      ),
    );
  }
}
