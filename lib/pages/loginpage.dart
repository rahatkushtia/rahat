import 'package:flutter/material.dart';
import 'package:rahat_app/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/01image.png",
                    fit: BoxFit.contain)),
            const SizedBox(
              height: 60,
            ),
            Text(
              "বৈধ লাইসেন্স আছে ? $name",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Your User Id",
                        labelText: "আইডি বল",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your PassWord",
                      labelText: "পাসওয়ার্ড দে",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRouts.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 120,
                height: 50,
                alignment: Alignment.center,
                child: changeButton ? Icon(Icons.done) : Text("এখানে চাপ দে"),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  // borderRadius: BorderRadius.circular(changeButton ? 30),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text("পাসওয়ার্ড ভূলে গিয়েছি"),
            SizedBox(
              height: 35,
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     navigator.pushname(context, MyRouts.homeRoute);
            //   },
            //   child: const Text("Login"),
            //   style: TextButton.styleFrom(
            //       minimumSize: const Size(100, 40),
            //       backgroundColor: Colors.blue),
            // )
          ],
        ),
      ),
    );
  }
}
