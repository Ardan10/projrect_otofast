import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/pages/keranjangpage.dart';
 // Impor halaman KeranjangBelanjaPage

class ShopHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Belanja',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: purpleColor,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.white,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KeranjangBelanjaPage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text(
            'Produk Pilihan Kami',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),         
          SizedBox(height: 32.0),
          ProductItem(
            name: 'Ban',
            price: 350.000,
            imageUrl: 'https://down-id.img.susercontent.com/file/id-11134207-7r98r-logn189suqrg5b',

          ),
          SizedBox(height: 16.0),
          ProductItem(
            name: 'Oli',
            price: 101.000,
            imageUrl: 'https://images.tokopedia.net/img/cache/700/hDjmkQ/2023/3/22/2240373b-f8dd-4116-84f2-1186017de862.jpg',

          ),
                    SizedBox(height: 16.0),
          ProductItem(
            name: 'Rantai',
            price: 150.000,
            imageUrl: 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2023/3/31/4784fa29-a230-485f-8310-8d4948cb73cd.png',

          ),
                    SizedBox(height: 16.0),
                     ProductItem(
            name: 'Aki',
            price: 250.000,
            imageUrl: 'https://down-id.img.susercontent.com/file/13af39dacd2097b192c5be321042d47e',

          ),
                    SizedBox(height: 16.0),
                    ProductItem(
            name: 'Vanbelt',
            price: 100.000,
            imageUrl: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/94/MTA-141320469/no-brand_no-brand_full01.jpg',

          ),
                    SizedBox(height: 16.0),
                    ProductItem(
            name: 'Kampas Rem',
            price: 50.000,
            imageUrl: 'https://www.hondacengkareng.com/wp-content/uploads/2017/11/Pad-Set-FR-06455KVBT01-600x600.jpg',

          ),
                    SizedBox(height: 16.0),
                    ProductItem(
            name: 'Ban Dalam',
            price: 35.000,
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8nplDzVgvJPT2xerSE6cxMOBLHijDXRYSDg&s',

          ),
                    SizedBox(height: 16.0),         
        ],
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundColor: purpleColor,
            child: Icon(
              category.icon,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            category.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;

  ProductItem({required this.name, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$name sudah dimasukkan ke keranjang'),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Gambar produk
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Nama produk
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Harga produk
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '\Rp$price',
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
            ),
            // Tombol pembelian
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$name Ditambahkan Ke Keranjang'),
                    ),
                  );
                },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: purpleColor,
                  ),
                  child: Text('Masukan Keranjang',
                  style: TextStyle(color: Colors.white ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}