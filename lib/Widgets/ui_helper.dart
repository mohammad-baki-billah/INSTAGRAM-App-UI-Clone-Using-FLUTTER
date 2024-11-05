import 'package:flutter/material.dart';

class UiHelper {
  static cusTextField({
    required TextEditingController controller,
    required String toText,
    required bool toHinte,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        color: const Color(0xFF121212),
        border: Border.all(color: const Color(0xFFFFFFFF), width: 0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
      controller: controller,
      obscureText: toHinte,
      keyboardType: textInputType,
      decoration: const InputDecoration(   
        border: InputBorder.none,
      ), 
    ),
    );
  }
  static customImage( {required String imgUri}){
    return Image.asset('assets/images/$imgUri');

  }
}
