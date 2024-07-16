  import 'package:flutter/material.dart';

SizedBox customProfileTextField(String text,{double width=311.25}) {
    return SizedBox(
      width: width,

      child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, // No border
                      borderRadius: BorderRadius.circular(26.49),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none, // No border
                      borderRadius: BorderRadius.circular(26.49),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(26.49),
                    ),
                    
                    hintText: text,
                    filled: true,
                    fillColor: const Color(0xff181928),
                  ),
                ),
    );
  }