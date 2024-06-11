
import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/widgets/buttons.dart';
import 'package:otofast/ui/widgets/profile_menu_items.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        title: const Text('Profile Saya'),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/img_profile.jpg'))),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: whiteColor),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          size: 24,
                          color: greenColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Ardana',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () async {
                     {
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_my_reward.png',
                  title: 'Nilai Kami',
                  
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_help_center.png',
                  title: 'Bantuan'
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_log_out.png',
                  title: 'Keluar',
                  onTap: () async {
                    {
                      Navigator.pushNamed(context, '/sign-in');
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
