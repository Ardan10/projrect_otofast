
import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
class Service {
  final String name;
  final String description;
  final double price;

  Service({required this.name, required this.description, required this.price});
}

final List<Service> services = [
  Service(name: "Servis Rutin", description: "Servis rutin untuk menjaga performa kendaraan.", price: 300000),
  Service(name: "Ganti Oli", description: "Penggantian oli mesin dengan oli berkualitas.", price: 150000),
  Service(name: "Perbaikan Rem", description: "Perbaikan dan pengecekan sistem rem.", price: 200000),
  Service(name: "Balancing dan Spooring", description: "Balancing dan spooring untuk kenyamanan berkendara.", price: 250000),
];

class history extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histori',
        style: TextStyle(color: Colors.white ),),
        backgroundColor: purpleColor,
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return ListTile(
            title: Text(service.name),
            subtitle: Text(service.description),
            trailing: Text('Rp ${service.price.toStringAsFixed(0)}'),
            onTap: () {
              // Aksi yang dilakukan saat layanan dipilih
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(service.name),
                    content: Text("Deskripsi: ${service.description}\nHarga: Rp ${service.price.toStringAsFixed(0)}"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Tutup'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
