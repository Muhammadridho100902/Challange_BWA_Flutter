import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String title;
  final Color txtcolor;
  final double txtsize;
  final FontWeight txtweight;

  const BigText({
    Key? key,
    required this.title,
    this.txtcolor = const Color(0xff0D0846),
    required this.txtsize,
    this.txtweight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(fontSize: txtsize, fontWeight: txtweight, color: txtcolor),
    );
  }
}
