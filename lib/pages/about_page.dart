import 'package:flutter/material.dart';
import 'package:web_site_flutter/widgets/soft_elevated_container.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.only(bottom: 60, top: 60),
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "What do I bring to the",
                      style: TextStyle(
                          color: Color(0xFF151616),
                          fontSize: screenWidth > 600 ? 32 : 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                      children: [
                    TextSpan(
                      text: " table?",
                      style: TextStyle(
                          color: Color(0xFF77CBB9),
                          fontSize: screenWidth > 600 ? 32 : 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    )
                  ])),
            ),
            SizedBox(
              height: 50,
            ),
            AboutContent()
          ],
        ));
  }
}

class AboutContent extends StatelessWidget {
  
  List<Widget> items = [
    SectionColumnAbout(image: "mobile_icon.png", title: "Mobile Applications", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt tortor sed rutrum feugiat. Maecenas congue tincidunt felis, vel ultrices enim congue vitae. Sed consequat sed ante non tempor. Duis maximus a nisl nec pellentesque.",),
    SectionColumnAbout(image: "design_icon.png", title: "Design", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt tortor sed rutrum feugiat. Maecenas congue tincidunt felis, vel ultrices enim congue vitae. Sed consequat sed ante non tempor. Duis maximus a nisl nec pellentesque.",),
    SectionColumnAbout(image: "architecture_icon.png", title: "Software Architecture", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt tortor sed rutrum feugiat. Maecenas congue tincidunt felis, vel ultrices enim congue vitae. Sed consequat sed ante non tempor. Duis maximus a nisl nec pellentesque.",),
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 1200) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((item) => Padding(padding:  EdgeInsets.only(bottom: 50), child: item,)).toList(),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items.map((item) => Expanded(child: Padding(padding: EdgeInsets.all(32), child: item,),)).toList(),
    );
  }
}

class SectionColumnAbout extends StatelessWidget {

  String image;
  String title;
  String text;

  SectionColumnAbout({this.image, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SoftElevatedContainer(
          width: 180,
          height: 180,
          borderRadius: 40,
          color: Colors.grey[100],
          child: Center(
            child: Container(
                height: 40,
                width: 40,
                child: Image.asset("assets/$image")),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xFF77CBB9),
              fontFamily: "Montserrat",
              fontSize: 22.0),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.6),
          child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Montserrat",
                  fontSize: 16.0)),
        )
      ],
    );
  }
}
