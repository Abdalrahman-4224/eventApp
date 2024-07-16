import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/widgets/custom_search_bar.dart';

Row home_page_appbar() {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(Assets.assetsIconsNotification),
                        ),
                      ),
                      CustomSearchBar(),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(Assets.assetsIconsCalendar),
                        ),
                      ),
                    ],
                  );
  }