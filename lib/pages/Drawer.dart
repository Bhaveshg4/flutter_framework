import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(color: Colors.grey),
            child: UserAccountsDrawerHeader(
              accountName: Text("Bhavesh Gupta"),
              accountEmail: Text("iambhaveshgupta@gmail.com"),
              currentAccountPicture: Image.asset("assets/images/pic3.png"),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text("Home"),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text("My Profile"),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.textformat_abc_dottedunderline,
              color: Colors.white,
            ),
            title: Text("About this app"),
          )
        ],
      ),
    );
  }
}
