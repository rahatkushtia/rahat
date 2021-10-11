import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Graphic Design")),
      ),
      drawer: const Drawer(),
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.black,
          child: const Center(
              child: Text(
            "Sabit Degine World",
            style: TextStyle(
                fontSize: 23,
                color: Colors.white38,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.grey),
          )),
        ),
      ),
    );
  }
}
