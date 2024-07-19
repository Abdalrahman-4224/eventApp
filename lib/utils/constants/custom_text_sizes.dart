
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Text xsmallText(String text,{TextAlign? align}) =>  Text(text,textAlign: align,style: const TextStyle(fontSize: 10.7,color: Colors.white,fontWeight: FontWeight.w400),);
Text smallText(String text,{TextAlign? align}) =>  Text(text,textAlign: align,style: const TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w400),);
Text mediumText(String text,{Color color=Colors.white}) =>  Text(text,style:  TextStyle(fontSize: 21.2,color: color,fontWeight: FontWeight.w400),);
Text largeText(String text) =>  Text(text,style: const TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.w400),);

Text smallBoldText(String text) =>  Text(text,style: const TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),);
Text mediumBoldText(String text,{Color color= Colors.white}) =>  Text(text,style:  TextStyle(fontSize: 21.2,color:color,fontWeight: FontWeight.w700),);
Text largeBoldText(String text) =>  Text(text,style:  TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.w900,fontFamily: GoogleFonts.poppins().fontFamily),);






