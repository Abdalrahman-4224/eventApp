
import 'package:flutter/material.dart';

import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/src/profile/profile%20home%20page/widgets/custom_profile_divider.dart';
import 'package:liverpod_structure/src/profile/profile%20home%20page/widgets/gradient_border_image.dart';

import 'package:liverpod_structure/src/profile/profile%20home%20page/widgets/profile_cards.dart';


class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(Assets.assetsImages2colorBackground),
          Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gradientBorderImage(),
            
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    profileInformationCard(
                        '11', 'Folowed Artist', Assets.assetsIconsUsers),
                    customProfileDivider(48.0, 2.0),
                    profileInformationCard(
                        '4', 'Bookmark concert', Assets.assetsIconsBookmark),
                    customProfileDivider(48.0, 2.0),
                    profileInformationCard(
                        '3', 'purchase Ticket', Assets.assetsIconsClippedTicket),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff14161F),
                    borderRadius: BorderRadiusDirectional.circular(8)),
                width: 348,
                height: 93,
                child: Center(
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      profileSettingCard(Assets.assetsIconsSetting, 'Setting'),
                      customProfileDivider(2.0, 304.0),
                      profileSettingCard(
                          Assets.assetsIconsPurpleProfile, 'Account Details')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 348,
                height: 134,
                decoration: BoxDecoration(
                    color: const Color(0xff14161F),
                    borderRadius: BorderRadiusDirectional.circular(8)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    profileSettingCard(
                        Assets.assetsIconsPurpleTicketExpired, 'Ticket history'),
                    customProfileDivider(2.0, 304.0),
                    profileSettingCard(Assets.assetsIconsPrivacyandsafety,
                        'Privacy and safety'),
                    customProfileDivider(2.0, 304.0),
                    profileSettingCard(Assets.assetsIconsNotification,
                        'Privacy and safety'),
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                
                decoration: BoxDecoration(
                    color: const Color(0xff14161F),
                    borderRadius: BorderRadiusDirectional.circular(8)),
                width: 348,
                height: 93,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      profileSettingCard(Assets.assetsIconsHelpandservices, 'Help and services'),
                      customProfileDivider(2.0, 304.0),
                      profileSettingCard(
                          Assets.assetsIconsAccountDetails, 'Account Details')
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
