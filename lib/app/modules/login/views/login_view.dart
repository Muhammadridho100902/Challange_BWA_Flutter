import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:slicing_movie_streaming/app/routes/app_pages.dart';
import 'package:slicing_movie_streaming/app/widgets/bigtext.dart';
import 'package:slicing_movie_streaming/app/widgets/box_container.dart';
import 'package:slicing_movie_streaming/app/widgets/button.dart';
import 'package:slicing_movie_streaming/app/widgets/smalltext.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height / 1,
                    color: const Color(0xff0D0846),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Image.asset("assets/Logo.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Container(
                      width: Get.width,
                      height: Get.height / 1.4,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 244, 244, 244),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 40,
                              bottom: 20,
                            ),
                            child: BigText(
                              title: "Login",
                              txtsize: 40,
                              txtweight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const BoxContainer(
                            title: 'Email',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const BoxContainer(
                            title: 'Password',
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.home),
                            child: const Button(),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SmallText(
                                title: "Don't have any account?",
                                txtsize: 16,
                                txtcolor: Color(0xff0D0846),
                              ),
                              GestureDetector(
                                onTap: () => Get.toNamed(Routes.home),
                                child: const SmallText(
                                  title: "SignUp",
                                  txtsize: 16,
                                  txtcolor: Color(0xff0D0846),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
