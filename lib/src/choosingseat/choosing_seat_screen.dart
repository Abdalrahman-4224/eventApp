import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/src/choosingseat/seat_layout.dart';
import 'package:liverpod_structure/src/ticking%20and%20detail/widgets/ticking_appbar.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/buttons/gradient_button.dart';

class ChoosingSeatScreen extends StatefulWidget {
  const ChoosingSeatScreen({Key? key}) : super(key: key);

  @override
  State<ChoosingSeatScreen> createState() => _ChoosingSeatScreenState();
}

class _ChoosingSeatScreenState extends State<ChoosingSeatScreen> {



  
  

  @override
  Widget build(BuildContext context) {
    

    return Stack(
      children: [
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
                  Colors.transparent,
                ],
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: TickingAppBar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 300,),
                  largeBoldText('Jazz Night'),
                  mediumText('with Ali Jassib'),
                  SizedBox(height: 20,),
                  smallText(
                    align: TextAlign.center,
                    'A pretty night with calm and relax jazz A pretty night with calm and relax jazz A pretty night with calm and relax jazz',
                  ),
                  Align(alignment: Alignment.centerLeft,
                    child: mediumBoldText('Choose your seat')),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          Assets.assetsIconsSoldSeat
                        ),
                        mediumText('Sold', color: const Color(0xffB6116B)),
                        const SizedBox(width: 50),
                        SvgPicture.asset(
                          Assets.assetsIconsSeat
                        ),
                        mediumText('Available', color: Colors.white),
                      ],
                    ),
                  ),
                  Container(
                    width: 403,
                    height: 304,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xff171954)),
                    ),
                    child: SeatLayout()
                    
              
              
                    
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: GradientButton.gradientButton(ontap: (){},buttontittle: 'buy ticket'),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}