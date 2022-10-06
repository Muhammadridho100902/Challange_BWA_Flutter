import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoxContainer extends StatelessWidget {
  final String title;
  const BoxContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: Get.width,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 7, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Text(title),
              ),
            ),
          )
        ],
      ),
    );
  }
}
