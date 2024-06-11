import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';

class MekanikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panggil Mekanik',
        style: TextStyle(color: Colors.white )),
        backgroundColor: purpleColor
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Informasi Mekanik:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Nama: M.Ardan'),
              Text('Alamat: Jl. Kis Mangunsarkoro, griyawijayakusuma, kec.Bondowoso, kab. Bondowoso.'),
              Text('Nomor Telepon: +62 123 4567 890'),
              Text('Layanan: Servis Rutin, Ganti Oli, Perbaikan Rem, dsb.'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk memanggil mekanik
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Mekanik Dipanggil'),
                          content: Text('Mekanik akan segera datang ke lokasi Anda.'),
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
        
                  child: Text('Konfirmasi Panggilan',
                  style: TextStyle(color: Colors.white ),),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: purpleColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Nama: M.Arif W'),
              Text('Alamat: Jl. Raya bendo, kec.nggerih, kab. Ngawi.'),
              Text('Nomor Telepon: +62 123 4567 890'),
              Text('Layanan: Servis Rutin, Ganti Oli, Perbaikan Rem, dsb.'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk memanggil mekanik
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Mekanik Dipanggil'),
                          content: Text('Mekanik akan segera datang ke lokasi Anda.'),
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
                  child: 
                   Text('Konfirmasi Panggilan',
                   style: TextStyle(color: Colors.white ),),
                   style: ElevatedButton.styleFrom(
                   backgroundColor: purpleColor,
                    ),
                ),
              ),
              SizedBox(height: 20),
              Text('Nama: Andre Hidayat'),
              Text('Alamat: Jl. panti, kec.Panti, kab. Jember.'),
              Text('Nomor Telepon: +62 123 4567 890'),
              Text('Layanan: Servis Rutin, Ganti Oli, Perbaikan Rem, dsb.'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk memanggil mekanik
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Mekanik Dipanggil'),
                          content: Text('Mekanik akan segera datang ke lokasi Anda.'),
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
                  child: Text('Konfirmasi Panggilan',
                  style: TextStyle(color: Colors.white ),),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: purpleColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Nama: Ardana'),
              Text('Alamat: Jl. Raya sunan ampel, bendo, kec. Padas, kab. Ngawi.'),
              Text('Nomor Telepon: +62 123 4567 890'),
              Text('Layanan: Servis Rutin, Ganti Oli, Perbaikan Rem, dsb.'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk memanggil mekanik
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Mekanik Dipanggil'),
                          content: Text('Mekanik akan segera datang ke lokasi Anda.'),
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
                  child: Text('Konfirmasi Panggilan',
                  style: TextStyle(color: Colors.white ),),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: purpleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
