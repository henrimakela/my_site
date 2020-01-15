import 'package:flutter/material.dart';
import 'package:web_site_flutter/widgets/soft_elevated_container.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    final List<Widget> items = [
      PortfolioSection(
        image: "android.png",
        title: "Android Development",
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt tortor sed rutrum feugiat. Maecenas congue tincidunt felis, vel ultrices enim congue vitae. Sed consequat sed ante non tempor. Duis maximus a nisl nec pellentesque.",
      ),
      PortfolioSection(
          image: "flutter_icon.png",
          title: "Flutter Development",
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt tortor sed rutrum feugiat. Maecenas congue tincidunt felis, vel ultrices enim congue vitae. Sed consequat sed ante non tempor. Duis maximus a nisl nec pellentesque."),
      PortfolioSection(
        image: "ios_icon.png",
        title: "iOS Development",
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt tortor sed rutrum feugiat. Maecenas congue tincidunt felis, vel ultrices enim congue vitae. Sed consequat sed ante non tempor. Duis maximus a nisl nec pellentesque.",
      )
    ];

    return Container(
        color: Color(0xFF151616),
        child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: (screenWidth < 1200)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: items
                        .map((item) => Padding(
                              padding: EdgeInsets.only(bottom: 50),
                              child: item,
                            ))
                        .toList(),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: items
                        .map((item) => Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(32),
                                child: item,
                              ),
                            ))
                        .toList(),
                  )));
  }
}

class PortfolioSection extends StatelessWidget {
  String image;
  String title;
  String text;

  PortfolioSection({this.image, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SoftElevatedContainerDark(
          width: 180,
          height: 180,
          borderRadius: 40,
          color: Color(0xFF151616),
          child: Center(
            child: Container(
                height: 40, width: 40, child: Image.asset("assets/$image")),
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
              maxWidth: MediaQuery.of(context).size.width * 0.5),
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white, fontFamily: "Montserrat", fontSize: 16.0)),
        ),
      ],
    );
  }
}
