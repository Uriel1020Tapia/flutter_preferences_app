import 'package:flutter/material.dart';
import 'package:flutter_preferences_user_app/src/pages/home_page.dart';
import 'package:flutter_preferences_user_app/src/pages/settings_page.dart';

class MenuDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Home'),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.dashboard, color: Colors.blue),
            title: Text('Categories'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share, color: Colors.blue),
            title: Text("Share with Friends"),
            onTap: () {
              print("Share Clicked");
            },
          ),
          ListTile(
            leading: Icon(Icons.rate_review, color: Colors.blue),
            title: Text("Rate and Review"),
            onTap: () {
              print("Rate Clicked");
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.blue),
            title: Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('Settings'),
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettignsPage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.flag, color: Colors.blue),
            title: Text("Privacy Policy"),
            onTap: () {
              print("Privacy Clicked");
            },
          ),
        ],
      ),
    );
  }
}
