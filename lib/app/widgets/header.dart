import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_movie_streaming/app/routes/app_pages.dart';
import 'package:slicing_movie_streaming/app/widgets/bigtext.dart';
import 'package:slicing_movie_streaming/app/widgets/smalltext.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(Get.width/19.6, Get.height/18.425, Get.width/19.6, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                txtsize: Get.height/24.566,
                title: 'Moviez',
              ),
              SmallText(
                title: 'Watch much easier',
                txtsize: Get.height / 46.062,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(Get.width/19.6, Get.height/18.425, 0, 0),
          padding: EdgeInsets.only(left: Get.width/26.133),
          width: Get.width / 6.53,
          height: Get.height / 14.74,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: GestureDetector(
            onTap: () => Get.toNamed(Routes.search),
            child: Icon(
              Icons.search_rounded,
              size: Get.height/23.031,
              color: const Color(
                0xff0D0846,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
