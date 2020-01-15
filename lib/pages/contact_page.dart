
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_site_flutter/widgets/soft_elevated_container.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF151616),
      child: MobileContent()
    );
  }
}

class MobileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 50.0,
        runSpacing: 50.0,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              _launchURL("https://github.com/henrimakela");
            },
            child: SoftElevatedContainerDark(
              width: 64,
              height: 64,
              borderRadius: 20,
              color: Color(0xFF151616),
              child: Center(
                  child: Container(
                      height: 32,
                      width: 32,
                      child: Image.asset("assets/github.png"))
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              _launchURL("https://www.linkedin.com/in/henri-m%C3%A4kel%C3%A4-92aa42114/");
            },
            child: SoftElevatedContainerDark(
              width: 64,
              height: 64,
              borderRadius: 20,
              color: Color(0xFF151616),
              child: Center(
                  child: Container(
                      height: 32,
                      width: 32,
                      child: Image.asset("assets/linked_in.png"))
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              _launchURL("https://play.google.com/store/apps/developer?id=Henrm");
            },
            child: SoftElevatedContainerDark(
              width: 64,
              height:64,
              borderRadius: 20,
              color: Color(0xFF151616),
              child: Center(
                  child: Container(
                      height: 32,
                      width: 32,
                      child: Image.asset("assets/google-play.png"))
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              _launchURL("https://www.instagram.com/henmakela/");
            },
            child: SoftElevatedContainerDark(
              width: 64,
              height: 64,
              borderRadius: 10,
              color: Color(0xFF151616),
              child: Center(
                  child: Container(
                      height: 32,
                      width: 32,
                      child: Image.asset("assets/instagram.png"))
              ),
            ),
          )

        ],
      ),
    );
  }
}


_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

