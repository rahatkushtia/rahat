import 'package:flutter/material.dart';
import 'package:rahat_app/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "null";

  get navigator => null;

  get child => null;

  get decoration => null;

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
              "Login Page $name",
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
                        labelText: "User Id",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your PassWord",
                      labelText: "PassWord",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Forgot Password"),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRouts.homeRoute);
              },
              child: Container(
                width: 100,
                height: 50,
                alignment: Alignment.center,
                child: Text("Login"),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
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


// widget -class  - pascalcase -HelloWorld
// cammelCase - helloWorld  - proprt , vsriab , fumc 