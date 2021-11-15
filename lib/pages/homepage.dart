import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:rahat_app/Widget/item_Widget.dart';
import 'package:rahat_app/model/product.dart';
import 'package:rahat_app/widget/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var productjson = await rootBundle.loadString("assets/files/product.json");
    final decodedData = jsonDecode(productjson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final allproductlist = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Column(
              children: [
                Text("Graphic Design"),
                Text(
                  "Dream Your Earn",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        drawer: MyDrawer(),
        backgroundColor: Colors.grey,
        body: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.items[index]);
            }));
  }
}
