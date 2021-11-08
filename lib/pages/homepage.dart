import 'package:flutter/material.dart';
import 'package:rahat_app/Widget/item_Widget.dart';
import 'package:rahat_app/model/product.dart';
import 'package:rahat_app/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allproductlist = List.generate(50, (index) => CatalogModel.item[0]);
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
            itemCount: allproductlist.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: allproductlist[index]);
            }));
  }
}

class Itemwwidget {}
