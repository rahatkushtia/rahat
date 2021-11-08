import 'package:flutter/material.dart';
import 'package:rahat_app/model/product.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "\৳${item.price}",
          textScaleFactor: 1.4,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
