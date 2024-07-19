import 'package:flutter/material.dart';
import 'package:liverpod_structure/src/profile/card%20information/widgets/custom_paint_container.dart';
import 'package:liverpod_structure/src/tickets/liked%20tickets/custom_painter_card.dart';
import 'package:liverpod_structure/utils/constants/assets.dart';

class LikedTickets extends StatelessWidget {
  const LikedTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImages2colorBackground),
        SafeArea(child: //Add this CustomPaint widget to the Widget Tree
Center(
  child: CustomPaint(
      size: Size(360, (360*0.46533203125).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
  ),
))
      ],
    );
  }
  
}



//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(size.width*0.2744141,0);
    path_0.lineTo(size.width*0.2802734,size.height*0.001049318);
    path_0.lineTo(size.width*0.2846680,size.height*0.01573977);
    path_0.lineTo(size.width*0.2905273,size.height*0.03147954);
    path_0.lineTo(size.width*0.2954102,size.height*0.03882476);
    path_0.lineTo(size.width*0.3007813,size.height*0.04407135);
    path_0.lineTo(size.width*0.3081055,size.height*0.04721931);
    path_0.lineTo(size.width*0.3144531,size.height*0.04721931);
    path_0.lineTo(size.width*0.3217773,size.height*0.04407135);
    path_0.lineTo(size.width*0.3295898,size.height*0.03567681);
    path_0.lineTo(size.width*0.3354492,size.height*0.02413431);
    path_0.lineTo(size.width*0.3403320,size.height*0.005246590);
    path_0.lineTo(size.width*0.3427734,0);
    path_0.lineTo(size.width*0.8378906,0);
    path_0.lineTo(size.width*0.8491211,size.height*0.001049318);
    path_0.lineTo(size.width*0.8481445,size.height*0.01259182);
    path_0.lineTo(size.width*0.8481445,size.height*0.03357817);
    path_0.lineTo(size.width*0.8500977,size.height*0.04826863);
    path_0.lineTo(size.width*0.8525391,size.height*0.05876180);
    path_0.lineTo(size.width*0.8559570,size.height*0.06820567);
    path_0.lineTo(size.width*0.8583984,size.height*0.07450157);
    path_0.lineTo(size.width*0.8642578,size.height*0.08394544);
    path_0.lineTo(size.width*0.8720703,size.height*0.09233998);
    path_0.lineTo(size.width*0.8803711,size.height*0.09758657);
    path_0.lineTo(size.width*0.8837891,size.height*0.09863589);
    path_0.lineTo(size.width*0.8994141,size.height*0.09863589);
    path_0.lineTo(size.width*0.8994141,size.height*0.8121721);
    path_0.lineTo(size.width*0.8935547,size.height*0.8111228);
    path_0.lineTo(size.width*0.8833008,size.height*0.8111228);
    path_0.lineTo(size.width*0.8750000,size.height*0.8153200);
    path_0.lineTo(size.width*0.8671875,size.height*0.8237146);
    path_0.lineTo(size.width*0.8623047,size.height*0.8310598);
    path_0.lineTo(size.width*0.8583984,size.height*0.8384050);
    path_0.lineTo(size.width*0.8540039,size.height*0.8509969);
    path_0.lineTo(size.width*0.8500977,size.height*0.8667366);
    path_0.lineTo(size.width*0.8481445,size.height*0.8814271);
    path_0.lineTo(size.width*0.8476563,size.height*0.8877230);
    path_0.lineTo(size.width*0.8476563,size.height*0.9181532);
    path_0.lineTo(size.width*0.3437500,size.height*0.9181532);
    path_0.lineTo(size.width*0.3398438,size.height*0.9045121);
    path_0.lineTo(size.width*0.3388672,size.height*0.9003148);
    path_0.lineTo(size.width*0.3369141,size.height*0.8835257);
    path_0.lineTo(size.width*0.3339844,size.height*0.8740818);
    path_0.lineTo(size.width*0.3295898,size.height*0.8656873);
    path_0.lineTo(size.width*0.3247070,size.height*0.8604407);
    path_0.lineTo(size.width*0.3203125,size.height*0.8572928);
    path_0.lineTo(size.width*0.3173828,size.height*0.8562434);
    path_0.lineTo(size.width*0.3071289,size.height*0.8562434);
    path_0.lineTo(size.width*0.2998047,size.height*0.8604407);
    path_0.lineTo(size.width*0.2954102,size.height*0.8656873);
    path_0.lineTo(size.width*0.2905273,size.height*0.8751312);
    path_0.lineTo(size.width*0.2880859,size.height*0.8835257);
    path_0.lineTo(size.width*0.2871094,size.height*0.8908709);
    path_0.lineTo(size.width*0.2861328,size.height*0.9024134);
    path_0.lineTo(size.width*0.2836914,size.height*0.9118573);
    path_0.lineTo(size.width*0.2812500,size.height*0.9181532);
    path_0.lineTo(size.width*0.0009765625,size.height*0.9181532);
    path_0.lineTo(size.width*0.001464844,size.height*0.9097587);
    path_0.lineTo(size.width*0.001464844,size.height*0.8856243);
    path_0.lineTo(size.width*-0.0004882813,size.height*0.8677859);
    path_0.lineTo(size.width*-0.002929688,size.height*0.8551941);
    path_0.lineTo(size.width*-0.006347656,size.height*0.8436516);
    path_0.lineTo(size.width*-0.01171875,size.height*0.8310598);
    path_0.lineTo(size.width*-0.01757813,size.height*0.8216159);
    path_0.lineTo(size.width*-0.02539063,size.height*0.8132214);
    path_0.lineTo(size.width*-0.03320313,size.height*0.8090241);
    path_0.lineTo(size.width*-0.04150391,size.height*0.8079748);
    path_0.lineTo(size.width*-0.04736328,size.height*0.8090241);
    path_0.lineTo(size.width*-0.04785156,size.height*0.8079748);
    path_0.lineTo(size.width*-0.04785156,size.height*0.09863589);
    path_0.lineTo(size.width*-0.03515625,size.height*0.09863589);
    path_0.lineTo(size.width*-0.02734375,size.height*0.09548793);
    path_0.lineTo(size.width*-0.01953125,size.height*0.08919203);
    path_0.lineTo(size.width*-0.01318359,size.height*0.08079748);
    path_0.lineTo(size.width*-0.007812500,size.height*0.07135362);
    path_0.lineTo(size.width*-0.003417969,size.height*0.05876180);
    path_0.lineTo(size.width*-0.0004882813,size.height*0.04512067);
    path_0.lineTo(size.width*0.0009765625,size.height*0.03252886);
    path_0.lineTo(size.width*0.0009765625,size.height*0.01364113);
    path_0.lineTo(0,size.height*0.004197272);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff3BDD1D).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}