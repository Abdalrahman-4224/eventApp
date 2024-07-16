import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';

Widget expiredTicketCard(int index) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    height: 228.33,
    width: 381,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  Assets.assetsImagesBitmap,
                  height: 228,
                  width: 380,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 330.0,
                      top: 15,
                      right: 15,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(70, 146, 19, 148),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(Assets.assetsIconsHeart),
                      ),
                    ),
                  ),
                  const SizedBox(height: 110),
                  const Padding(
                    padding: EdgeInsets.only(right: 100.0),
                    child: Text(
                      'Brightlight music festival',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                child: SvgPicture.asset(Assets.assetsIconsMusicnotes),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  'Indie Rock',
                                  style: TextStyle(
                                    fontSize: 15.93,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                child: SvgPicture.asset(Assets.assetsIconsTicket),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Text(
                                  '40 - 90',
                                  style: TextStyle(
                                    fontSize: 15.93,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 0.7,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Container(
              height: 228.33,
              width: 381,
              color: Colors.black,
            ),
          ),
        ),
        Center(
          child: largeBoldText('Expired At 2024/2/4'),
        ),
      ],
    ),
  );
}