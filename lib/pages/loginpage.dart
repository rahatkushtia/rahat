import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
              width: 400,
              height: 300,
              child: Image.asset("assets/images/01image.png",
                  fit: BoxFit.contain)),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Login Page",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(
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
                ),
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
        ],
      ),
    );
  }
}
