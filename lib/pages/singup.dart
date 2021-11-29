import 'package:flutter/material.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Image.asset("assets/images/01.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter Your First Name",
              prefixIcon: Icon(Icons.account_circle),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            )
          ],
        ),
      ),
      
    );
  }
}