import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://scontent.fdac46-1.fna.fbcdn.net/v/t1.6435-9/60180319_652989888495150_1511410222801879040_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=qdKpG51SZnUAX9Wmfo_&_nc_ht=scontent.fdac46-1.fna&oh=7fc993e4516d3284ad37a069b4eb37cf&oe=619DA6FF";
    return Drawer(
      child: Column(
        children: [
          Container(
              width: 320,
              height: 200,
              child: DrawerHeader(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.only(top: 20),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageurl),
                      )),
                  SizedBox(height: 10),
                  Text(
                    "Name: Imranul Islam Rahat",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text("imranulislamrahat@gmail.com"),
                ]),
              )),
        ],
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
          