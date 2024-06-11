import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/pages/Keranjang.dart';
import 'package:otofast/ui/pages/checkout.dart';
import 'package:otofast/ui/pages/pembayaran.dart';
// Impor KeranjangBelanjaItem

class KeranjangBelanjaPage extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Ban',
      'price': 29.99,
      'imageUrl': 'https://down-id.img.susercontent.com/file/id-11134207-7r98r-logn189suqrg5b',
    },
    {
      'name': 'Oli',
      'price': 49.99,
      'imageUrl': 'https://images.tokopedia.net/img/cache/700/hDjmkQ/2023/3/22/2240373b-f8dd-4116-84f2-1186017de862.jpg',
    },
    {
      'name': 'Rantai',
      'price': 19.99,
      'imageUrl': 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/3/31/4784fa29-a230-485f-8310-8d4948cb73cd.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Belanja',
        style: TextStyle(color: Colors.white),),
        backgroundColor: purpleColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                return KeranjangBelanjaItem(
                  name: cartItems[index]['name'],
                  price: cartItems[index]['price'],
                  imageUrl: cartItems[index]['imageUrl'],
                  onRemove: () {
                    // Implementasi logika untuk menghapus item dari keranjang
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pembayaran()),
              );
            },
            style: ElevatedButton.styleFrom(
            backgroundColor: purpleColor,
            ),
            child: Text('Check Out',
            style: TextStyle(color: Colors.white ),),
            ),
          ),
        ],
      ),
    );
  }
}
