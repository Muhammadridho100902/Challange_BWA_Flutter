import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slicing_movie_streaming/app/model/movie_model.dart';
import 'package:slicing_movie_streaming/app/widgets/bigtext.dart';
import 'package:slicing_movie_streaming/app/widgets/smalltext.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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

  List<MovieModel> recommendList = List.from(recommendMovies);

  void updateList(String value) {
    recommendList = recommendMovies
        .where((element) =>
            element.movieTitle!.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height / 18.425,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Get.width / 19.6,
                      vertical: Get.height / 36.85),
                  child: TextField(
                    onChanged: (value) => updateList(value),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: "Search Movie",
                      hintStyle: TextStyle(fontSize: Get.height / 36.85),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: Get.height / 30.708,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      recommendList.isEmpty
                          ? Center(
                              child: BigText(
                                txtsize: Get.height / 24.566,
                                title: "Movies not found",
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(left: Get.width / 19.6),
                              child: BigText(
                                  txtsize: Get.height / 24.566,
                                  title:
                                      "Search Result (${recommendList.length.toInt()})"),
                            ),
                      SizedBox(
                        width: Get.width,
                        height: Get.height,
                        child: ListView.builder(
                          itemCount: recommendList.length,
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: ((context, index) => Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: Get.width / 19.6,
                                        vertical: Get.height / 73.7),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BigText(
                                        title: recommendList[index].movieTitle!,
                                        txtsize: Get.height / 30.708,
                                      ),
                                      SizedBox(
                                        height: Get.height / 147.4,
                                      ),
                                      SmallText(
                                          txtsize: Get.height / 46.062,
                                          title:
                                              recommendList[index].movieGenre!),
                                      SizedBox(
                                        height: Get.height / 73.7,
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
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: Get.height / 18.425),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: Get.width / 1.8,
                  height: Get.height / 14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff0D0846)),
                  child: Center(
                    child: BigText(
                      title: "Suggest Movie",
                      txtsize: Get.height / 46.062,
                      txtcolor: Colors.white,
                      txtweight: FontWeight.w400,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
