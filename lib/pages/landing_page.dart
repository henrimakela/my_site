import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Color(0xFF151616),
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    text: "Congra",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth > 700 ? 82 : 64,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                    children: [
                  TextSpan(
                    text: "ts",
                    style: TextStyle(
                        color: Color(0xFF77CBB9),
                        fontSize: screenWidth > 700 ? 82 : 64,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  )
                ])),
            RichText(
                text: TextSpan(
                    text: "And",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth > 700 ? 64 : 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                    children: [
                  TextSpan(
                    text: " welcome",
                    style: TextStyle(
                        color: Color(0xFF77CBB9),
                        fontSize: screenWidth > 700 ? 64 : 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
