import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String title;
  final Color txtcolor;
  final double txtsize;
  final FontWeight txtweight;

  const SmallText({
    Key? key,
    required this.title,
    this.txtcolor = Colors.grey,
    required this.txtsize,
    this.txtweight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: txtsize,
        color: txtcolor,
        fontWeight: txtweight
      ),
    );
  }
}
