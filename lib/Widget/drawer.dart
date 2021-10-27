import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://scontent.fdac46-1.fna.fbcdn.net/v/t1.6435-9/60180319_652989888495150_1511410222801879040_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=qdKpG51SZnUAX9Wmfo_&_nc_ht=scontent.fdac46-1.fna&oh=7fc993e4516d3284ad37a069b4eb37cf&oe=619DA6FF";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Imranul Islam Rahat"),
              accountEmail: Text("imranulislamrahat@gmail.com"),
              currentAccountPicture: Image.network(imageurl),
            ),
          )
        ],
      ),
    );
  }
}
