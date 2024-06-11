import 'package:flutter/material.dart';

class KeranjangBelanjaItem extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;
  final Function()? onRemove;

  KeranjangBelanjaItem({required this.name, required this.price, required this.imageUrl, this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('\Rp$price'),
        trailing: IconButton(
          icon: Icon(Icons.check_box,color: Colors.green,),
          onPressed: onRemove,
        ),
      ),
    );
  }
}
