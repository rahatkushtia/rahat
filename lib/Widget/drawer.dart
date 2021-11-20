import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1531533748270-34089046fb49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"))),
        width: 150,
        height: 320,
        child: DrawerHeader(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 100,
                height: 80,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1611928506023-25ed62d1d04d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text("Imranul Islam Rahat"),
              ),
              Text("imranulislamrahat@gmail.com"),
              ListTile(
                leading: Icon(CupertinoIcons.home),
                title: Text("Home", textScaleFactor: 1.2),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
                title: Text("Profile", textScaleFactor: 1.2),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.settings),
                title: Text("Settings", textScaleFactor: 1.2),
              ),
              ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text("Logout", textScaleFactor: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FrontHight {}

      // child: ListView(
      //   children: [
      //     DrawerHeader(
      //       padding: EdgeInsets.zero,
      //       child: UserAccountsDrawerHeader(
      //         margin: EdgeInsets.zero,
      //         accountName: Text("Imranul Islam Rahat"),
      //         accountEmail: Text("imranulislamrahat@gmail.com"),
      //         currentAccountPicture: CircleAvatar(
      //           backgroundImage: NetworkImage(imageurl),
      //         ),
      //       ),
          