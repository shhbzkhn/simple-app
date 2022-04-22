import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,

      // shape: StadiumBorder(),
      // color: Colors.green,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        minVerticalPadding: 20.0,
        leading: Image.network(item.image),
        title: Text(item.name),

        subtitle: Text(item.description),
        contentPadding: EdgeInsets.all(20.0),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.4,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
