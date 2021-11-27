import 'package:flutter/material.dart';

class ProFile extends StatelessWidget {
  const ProFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.network(
                  "https://pbs.twimg.com/profile_images/1463071608281518086/jYQxqvj9_400x400.jpg"),
            ),
          )
        ],
      )),
    );
  }
}
