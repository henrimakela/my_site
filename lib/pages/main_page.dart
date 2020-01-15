import 'package:flutter/material.dart';
import 'package:web_site_flutter/pages/about_page.dart';
import 'package:web_site_flutter/pages/apps_page.dart';
import 'package:web_site_flutter/pages/contact_page.dart';
import 'package:web_site_flutter/pages/landing_page.dart';
import 'package:web_site_flutter/pages/nav_bar.dart';
import 'package:web_site_flutter/pages/portfolio_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            LandingPage(),
            AboutPage(),
            PortfolioPage(),
            AppsPage(),
            ContactPage()
          ],
        ),
      ),
    );
  }
}
