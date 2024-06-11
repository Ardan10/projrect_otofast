
import 'package:flutter/material.dart';
import 'package:otofast/shared/theme.dart';

class HomeServiceItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;
  

  const HomeServiceItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.only(
              bottom: 8
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              
            ),
            child: Center(
              child: Image.asset(
                iconUrl,
                width: 100,
              ),
            ),
          ),
          Text(title,
          style: blackTextStyle.copyWith(
            fontWeight: medium 
          ),)
        ],
      ),
    );
  }
}