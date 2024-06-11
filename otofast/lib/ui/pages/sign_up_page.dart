import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/widgets/buttons.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _dateControler = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      // Logika untuk menyimpan data pendaftaran
      // Misalnya, menyimpan data ke database
      // Setelah pendaftaran selesai, kembali ke halaman login
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        title: Text('Registrasi'),
      ),
      body: Padding(
        
        padding: EdgeInsets.all(20.0),
        child: Form(
          
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
                  labelText: 'Nama Pengguna',
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (_usernameController.text.trim().isEmpty) {
                    return 'Nama pengguna tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _dateControler,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 231, 228, 228),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
                  labelText: 'Tanggal lahir',
                  prefixIcon: Icon(Icons.date_range),
                  filled: true,
                ),
                readOnly: true,
                onTap: (){
                  _selectDate();
                },
                validator: (value) {
                  if (_usernameController.text.trim().isEmpty) {
                    return 'tanggal lahir tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (_emailController.text.trim().isEmpty) {
                    return 'Email tidak boleh kosong';
                  }
                  // Validasi email
                  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
                    return 'Format email tidak valid';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  if (_passwordController.text.trim().isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  // Validasi panjang password
                  if (_passwordController.text.length < 6) {
                    return 'Password minimal 6 karakter';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            contentPadding: const EdgeInsets.all(12),
                  labelText: 'Nomor Telepon',
                  prefixIcon: Icon(Icons.phone_android),
                ),
                obscureText: true,
                validator: (value) {
                  if (_passwordController.text.trim().isEmpty) {
                    return 'Nomor telepon tidak boleh kosong';
                  }
                  // Validasi panjang password
                  if (_passwordController.text.length < 6) {
                    return 'Isi dengan nomor';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton.icon(
                
              onPressed: () {
              if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, '/sign-up-success');
            }
          },
           style: ElevatedButton.styleFrom(
            backgroundColor: purpleColor,
            textStyle: whitekTextStyle,
           ),
            icon: Icon(Icons.login,
            color: Colors.white,),
            label: Text('Daftar',
            style: TextStyle(color: Colors.white),),
            
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Masuk',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            ),
          ],
        ),
        ),
      ),
    );
  }
    Future<void> _selectDate() async {
   DateTime? _picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000), 
    lastDate: DateTime(2100)
    );

    if (_picked != null){
      setState(() {
        _dateControler.text = _picked.toString().split(" ")[0];
      });
    }
}

}

