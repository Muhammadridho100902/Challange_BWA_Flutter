import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:slicing_movie_streaming/app/model/movie_model.dart';
import 'package:slicing_movie_streaming/app/widgets/bigtext.dart';
import 'package:slicing_movie_streaming/app/widgets/header.dart';
import 'package:slicing_movie_streaming/app/widgets/movie_card.dart';
import 'package:slicing_movie_streaming/app/widgets/smalltext.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<MovieModel> topMovieList = [
    MovieModel(
      "John Wick 4",
      "Action, Crime",
      "https://wallpapercave.com/wp/wp3742372.jpg",
    ),
    MovieModel(
      "Bohemian",
      "Documentary",
      "https://wallpapercave.com/wp/wp3781445.jpg",
    ),
    MovieModel(
      "The Avengers",
      "Action, Sci-Fiction",
      "https://wallpapercave.com/uwp/uwp1465267.jpeg",
    ),
    MovieModel(
      "Spiderman",
      "Action, Crime",
      "https://wallpapercave.com/wp/wp10415297.jpg",
    ),
  ];

  List<MovieModel> displayList = List.from(topMovieList);

  static List<MovieModel> recommendMovies = [
    MovieModel(
      "Mulan Session",
      "History, War",
      "https://wallpapercave.com/wp/wp9336983.jpg",
    ),
    MovieModel(
      "Beauty & Beast",
      "Sci-Fiction",
      "https://wallpapercave.com/wp/wp4066905.jpg",
    ),
    MovieModel(
      "Dr. Strange",
      "Action, Horror",
      "https://wallpapercave.com/wp/wp7855728.jpg",
    ),
    MovieModel(
      "Thor Ragnarok",
      "Action, Comedy",
      "https://wallpapercave.com/wp/wp4864556.jpg",
    ),
  ];

  List<MovieModel> recommendList = List.from(recommendMovies);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFE),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            SizedBox(
              width: Get.width,
              height: Get.height / 2.2,
              child: ListView.builder(
                itemCount: displayList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Container(
                      margin: EdgeInsets.only(right: Get.width/19.6),
                      child: MovieCard(
                        img: "${displayList[index].moviePoster}",
                        txtGenre: displayList[index].movieGenre!,
                        txtTitle: displayList[index].movieTitle!,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width/19.6),
              child: BigText(
                title: "From Disney",
                txtsize: Get.height/24.566,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: recommendList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: Get.width/19.6, vertical: Get.height/73.3),
                            width: Get.width / 3.015,
                            height: Get.height / 4.606,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                recommendList[index].moviePoster!,
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                title: recommendList[index].movieTitle!,
                                txtsize: Get.height/30.708,
                              ),
                              SizedBox(
                                height: Get.height / 147.4,
                              ),
                              SmallText(
                                  txtsize: Get.height / 46.062,
                                  title: recommendList[index].movieGenre!),

                              SizedBox(
                                height: Get.height / 73.7,
                              ),
                              Wrap(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star,
                                    color: const Color(0xffFFAB2E),
                                    size:  Get.height/30.708,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 36.85,
            ),
          ],
        ),
      ),
    );
  }
}
