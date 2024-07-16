import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/src/ticking%20and%20detail/widgets/buy_ticket_button.dart';
import 'package:liverpod_structure/src/ticking%20and%20detail/widgets/faded_divider.dart';
import '../ticking and detail/widgets/ticking_appbar.dart';

class TicketDetail extends ConsumerStatefulWidget {
  const TicketDetail({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TicketDetailState();
}

class _TicketDetailState extends ConsumerState<TicketDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Image.asset(Assets.assetsImagesImage82),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                    Colors.black,
                    Color.fromARGB(191, 0, 0, 0),
                    Colors.transparent
                    
                  ])
                ),
                width: MediaQuery.of(context).size.width*1,
                height:MediaQuery.of(context).size.height* 1
              ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: TickingAppBar(),
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Jazz Night',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    'with Ali Jasseb',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'A pretty night with calm and relax jazz A pretty night with calm and relax jazz A pretty night with calm and relax jazz ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28 / 2,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SvgPicture.asset(
                            Assets.assetsIconsLocation,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const Text(
                          'Baghdah, Almonsour',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SvgPicture.asset(
                            Assets.assetsIconsCalendar,
                            height: 24,
                            width: 24,
                            colorFilter:
                                const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                        ),
                        const Text(
                          'March 2-9, 2024',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SvgPicture.asset(
                            Assets.assetsIconsMusic,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const Text(
                          'jazz',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  FadedDivider(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('25000 IQD',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: BuyTicketButton(context),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  


}
