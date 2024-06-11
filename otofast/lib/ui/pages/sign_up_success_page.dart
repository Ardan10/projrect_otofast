
import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/widgets/buttons.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Bergabunglah Dengan Kami &\nNikmati Perjalan Anda Dengan Nyaman',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
              title: 'Mulai',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
