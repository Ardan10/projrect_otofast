import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';

class PaymentPage extends StatelessWidget {
  final double totalPrice;

  PaymentPage({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembayaran',
        style: TextStyle(color: Colors.white),),
        backgroundColor: purpleColor,),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Total Pembayaran',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Rp$totalPrice',
              style: TextStyle(fontSize: 24.0, color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32.0),
            Text(
              'Pilih Metode Pembayaran',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              title: const Text('Kartu Kredit/Debit'),
              leading: Radio(
                value: 'card',
                groupValue: 'paymentMethod',
                onChanged: (value) {
                  // Implementasi logika pemilihan metode pembayaran
                },
              ),
            ),
            ListTile(
              title: const Text('Transfer Bank'),
              leading: Radio(
                value: 'bank',
                groupValue: 'paymentMethod',
                onChanged: (value) {
                  // Implementasi logika pemilihan metode pembayaran
                },
              ),
            ),
            ListTile(
              title: const Text('E-Wallet'),
              leading: Radio(
                value: 'ewallet',
                groupValue: 'paymentMethod',
                onChanged: (value) {
                  // Implementasi logika pemilihan metode pembayaran
                },
              ),
            ),
            SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implementasi logika untuk menyelesaikan pembayaran
                  // Contoh: Menampilkan dialog sukses atau navigasi ke halaman sukses pembayaran
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Pembayaran Berhasil'),
                        content: Text('Terima kasih atas pembelian Anda!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: purpleColor,
                  ),
                  child: Text('Bayar Sekarang',
                  style: TextStyle(color: Colors.white ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
