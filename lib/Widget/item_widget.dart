import 'package:flutter/material.dart';
import 'package:rahat_app/model/product.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({Key? key, required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(items.image),
        title: Text(items.name),
        subtitle: Text(items.description),
        trailing: Text(
          "\৳${items.price}",
          textScaleFactor: 1.4,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
