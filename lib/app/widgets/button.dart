import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_movie_streaming/app/widgets/smalltext.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: Get.width,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xff0D0846),
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Center(
        child: SmallText(title: "Login", txtsize: 16, txtcolor: Color.fromARGB(255, 238, 238, 238),),
      ),
    );
  }
}
