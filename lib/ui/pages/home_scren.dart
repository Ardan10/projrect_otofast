import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';
import 'package:otofast/ui/widgets/home_service_items.dart';

class HomeScren extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          builOli(),
          buildServices(context),
          buildPromo(context),
        ],
     ) 
    );
  }
   Widget buildProfile(BuildContext context) {
    return Container(  
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hai,',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Ardana',
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img_profile.jpg'))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      size: 14,
                      color: greenColor,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

// tampilan wallet card
  Widget builOli() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/bg1.png'))),
    );
  }



// tampilan layanan
  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rekomendasi Untuk Anda',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ban.png',
                title: '',
                onTap: () {
                  Navigator.pushNamed(context, '/belanja');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/oli.jpg',
                title: '',
                onTap: () {
                  Navigator.pushNamed(context, '/belanja');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/aki.jpg',
                title: '',
                onTap: () {
                  Navigator.pushNamed(context, '/belanja');
                },
              ),
             
              
            ],
          )
        ],
      ),
    );
  }

 Widget buildPromo(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kendaraan Anda Mogok?',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/indikator.png',
                title: '',
                onTap: () {
                  Navigator.pushNamed(context, '/mekanik');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Panggil Mekanik Jika anda\nmencapai 16.0000km',
                  style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
                ],
              ),
            ],
          )
        ],
      ),);
 }
}
