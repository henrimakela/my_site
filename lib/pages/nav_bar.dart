
import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 1200){
          return DesktopNavBar();
        }
        else if(constraints.maxWidth > 800 && constraints.maxWidth < 1200){
          return DesktopNavBar();
        }
        else{
          return DesktopNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        color: Color(0xFF151616),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    NavBarItem("Home"),
    NavBarItem("About"),
    NavBarItem("Work")
    ],
    ),
    ));
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        color: Color(0xFF151616),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NavBarItem("Home"),
              NavBarItem("About"),
              NavBarItem("Work")
            ],
          ),
      ),
    );
  }
}



class NavBarItem extends StatelessWidget {

  String title;
  NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}

