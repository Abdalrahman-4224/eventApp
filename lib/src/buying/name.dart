import 'package:flutter/material.dart';
import 'package:liverpod_structure/common_lib.dart';
import 'package:liverpod_structure/src/buying/widgets/buying_appbar.dart';
import 'package:liverpod_structure/src/buying/widgets/icon_with_text.dart';
import 'package:liverpod_structure/src/login/custom_appbar.dart';
import 'package:liverpod_structure/utils/constants/custom_text_sizes.dart';
import 'package:liverpod_structure/utils/widgets/buttons/gradient_button.dart';

class NameScreen extends StatelessWidget {
  

 
  TextEditingController nametController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
        Image.asset(Assets.assetsImagesBitmap,width: double.infinity,),
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
      appBar: buyinappbar('Name',context),
      body:SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 35,),
                   const Text('Friday 2/24',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),),
                   const Text('Jazz',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),),
                   smallText('With Ali Jassib'),
                   smallText('A pretty night with calm and relax jazz A pretty night with calm and relax jazz A pretty night with calm and relax jazz '),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    iconWithText(Assets.assetsIconsBuildings,'Al-Yarmook Club'),
                    iconWithText(Assets.assetsIconsCalendar,'2024/2/4'),
                  ],),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      mediumBoldText('Ticket num1'),
                      smallBoldText('section P, ROW 3')],),
                  ),
                  CustomTextFormField(controller: nametController, hintText: 'holder name'),
                  const SizedBox(height: 8,),
                  Row(children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextFormField(controller: phoneNumberController, hintText: '+964')),
                    const SizedBox(width:8,),
                    
                      Flexible(
                        flex: 3,
                        child: CustomTextFormField(controller:phoneNumberController , hintText: 'phone number'))
                  ],),
                  const SizedBox(height: 8,),
                  CustomTextFormField(controller: phoneNumberController, hintText: 'Phone Number'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      mediumBoldText('Ticket num1'),
                      smallBoldText('section P, ROW 3')],),
                  ),
                  CustomTextFormField(controller: nametController, hintText: 'holder name'),
                  const SizedBox(height: 8,),
                  Row(children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextFormField(controller: phoneNumberController, hintText: '+964')),
                    const SizedBox(width:8,),
                    
                      Flexible(
                        flex: 3,
                        child: CustomTextFormField(controller:phoneNumberController , hintText: 'phone number'))
                  ],),
                  const SizedBox(height: 8,),
                  CustomTextFormField(controller: phoneNumberController, hintText: 'Phone Number'),
                  const SizedBox(height: 50,),
                  GradientButton.gradientButton(ontap: (){}),
                  const SizedBox(height: 50,),
                  
    
                  
              
              
                ]
              ),
            ),
    
            
      
          
          ))
      ],);
  }


}