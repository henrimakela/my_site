import 'package:flutter/material.dart';
import 'package:web_site_flutter/widgets/soft_elevated_container.dart';

class AppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
        padding: EdgeInsets.only(bottom: 60, top: 60),
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        color: Colors.grey[100],
        child: MobileContentApps());
  }
}

class MobileContentApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: Scrollbar(
        child: PageView(
          children: <Widget>[
            AppListItem(
              image: "assets/app1.png",
              title: RichText(
                text: TextSpan(
                    text: "Sleek",
                    style: TextStyle(
                        color: Color(0xFF77CBB9),
                        fontSize: 24,
                        fontFamily: 'Montserrat'),
                    children: [
                      TextSpan(
                        text: " UI",
                        style: TextStyle(
                            color: Color(0xFF77CBB9),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      )
                    ]),
              ),
            ),
            AppListItem(
              image: "assets/app2.png",
              title: RichText(
                text: TextSpan(
                    text: "Pure",
                    style: TextStyle(
                        color: Color(0xFF77CBB9),
                        fontSize: 24,
                        fontFamily: 'Montserrat'),
                    children: [
                      TextSpan(
                        text: " eye candy",
                        style: TextStyle(
                            color: Color(0xFF77CBB9),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      )
                    ]),
              ),
            ),
            AppListItem(
              image: "assets/app3.png",
              title: RichText(
                text: TextSpan(
                    text: "A pleasant",
                    style: TextStyle(
                        color: Color(0xFF77CBB9),
                        fontSize: 24,
                        fontFamily: 'Montserrat'),
                    children: [
                      TextSpan(
                        text: " user experience",
                        style: TextStyle(
                            color: Color(0xFF77CBB9),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      )
                    ]),
              ),
            ),
            AppListItem(
              image: "assets/app4.png",
              title: RichText(
                text: TextSpan(
                    text: "A",
                    style: TextStyle(
                        color: Color(0xFF77CBB9),
                        fontSize: 24,
                        fontFamily: 'Montserrat'),
                    children: [
                      TextSpan(
                          text: " clean",
                          style: TextStyle(
                            color: Color(0xFF77CBB9),
                            fontSize: 24,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                                text: " and",
                                style: TextStyle(
                                    color: Color(0xFF77CBB9),
                                    fontSize: 24,
                                    fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,),
                                children: [
                                  TextSpan(
                                      text: " scalable",
                                      style: TextStyle(
                                          color: Color(0xFF77CBB9),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat'),
                                      children: [
                                        TextSpan(
                                            text: " software architecture",
                                            style: TextStyle(
                                                color: Color(0xFF77CBB9),
                                                fontSize: 24,
                                                fontWeight: FontWeight.normal,
                                                fontFamily: 'Montserrat'))
                                      ])
                                ])
                          ])
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppListItem extends StatelessWidget {
  String image;
  RichText title;

  AppListItem({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    var items = [
      SoftElevatedContainer(
        width: (MediaQuery.of(context).size.width < 400) ? MediaQuery.of(context).size.width * 0.9 : 300,
        height: 550,
        borderRadius: 20,
        color: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            width: (MediaQuery.of(context).size.width < 400) ? MediaQuery.of(context).size.width * 0.8  : 200,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Container(width: 300, child: title),
      )
    ];

    return Container(
      width: 600,
      child: (MediaQuery.of(context).size.width < 600)
          ? Column(mainAxisAlignment: MainAxisAlignment.center, children: items)
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: items,
            ),
    );
  }
}
