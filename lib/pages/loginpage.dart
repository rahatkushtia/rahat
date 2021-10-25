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
  final _formKey = GlobalKey<FormState>();

  get validator => null;

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRouts.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("App Development")),
      ),
      drawer: const Drawer(),
      backgroundColor: Colors.orange,
      body: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/images/rahat.png",
                      fit: BoxFit.contain)),
              const SizedBox(
                height: 60,
              ),
              Text(
                "WelCome $name",
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
                        validator: (value) {
                      if (value.is Empty) {
                        return "User name is Empty";
                      }
                      return null;
                    }
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Your PassWord",
                        labelText: "Your Password",
                      ),
                    ), validator: (value) {
                      if (value.is Empty) {
                        return "User name is Empty";
                      }
                      return null;
                    }
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(changeButton ? 30 : 8),
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 120,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton ? Icon(Icons.done) : Text("Login"),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text("Forget PassWord"),
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
      ),
    );
  }
}

class FromState {}
