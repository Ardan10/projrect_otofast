import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profil'
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // USERNAME INPUT
                  CustomFormField(title: 'Username'),
                  const SizedBox(
                    height: 16,
                  ),
                  // FULL NAME INPUT
                  CustomFormField(title: 'Nama Lengkap'),
                  const SizedBox(
                    height: 16,
                  ),
                  // EMAIL INPUT
                  CustomFormField(title: 'Email'),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    title: 'Password',
                    obsureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Perbarui',
                    onPressed: () {
                       Navigator.pushNamedAndRemoveUntil(
                          context, '/profile-edit-success', (route) => false);
                    },
                  )
                ],
              )),
        ],
      ),
    );
  }
}