import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/widgets/buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
      appBar: AppBar(
        title: Text('Login'),
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
              SizedBox(height: 25),
              ElevatedButton.icon(
                
              onPressed: () {
              if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, '/home');
            }
          },
           style: ElevatedButton.styleFrom(
            backgroundColor: purpleColor,
            textStyle: whitekTextStyle,
            
           ),
            icon: Icon(Icons.login,
            color: Colors.white,),
            label: Text('Masuk',
            style: TextStyle(color: Colors.white ),),
            
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextButton(
            
            title: 'Daftar',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            ),
          ],
        ),
        ),
      ),
    );
  }
}
