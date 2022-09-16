import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_movie_streaming/app/widgets/bigtext.dart';
import 'package:slicing_movie_streaming/app/widgets/smalltext.dart';

class MovieCard extends StatelessWidget {
  final String img;
  final String txtTitle;
  final String txtGenre;
  const MovieCard({
    Key? key,
    required this.img,
    required this.txtTitle,
    required this.txtGenre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(Get.width/19.6, Get.height/36.85, 0, 0),
          width: MediaQuery.of(context).size.width / 1.25,
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              )),
        ),
        Container(
          margin: EdgeInsets.only(left: Get.width/19.6),
          height: MediaQuery.of(context).size.height / 7.615,
          width: MediaQuery.of(context).size.width / 1.25,
          decoration: const BoxDecoration(
              color: Color(0xffFDFDFE)),
              // color: Colors.amber),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: Get.height / 36.85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      title: txtTitle,
                      txtsize: Get.height / 36.85,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SmallText(
                      title: txtGenre,
                      txtsize: Get.height / 46.062,
                    )
                  ],
                ),
              ),
              Wrap(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: const Color(0xffFFAB2E),
                    size: Get.height / 30.708,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
