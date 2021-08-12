import 'dart:math';

import 'package:cv/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Salah\nTarek"
        .text
        .yellow900
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
        child: VxBox(
      child: VStack(
        [
          ZStack(
            [
              PictureWidget(),
              Row(
                children: [
                  VStack(
                    [
                      if (context.isMobile) 50.heightBox else 10.heightBox,
                      CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                      30.heightBox,
                      nameWidget,
                      20.heightBox,
                      VxBox()
                          .color(Coolors.accentColor)
                          .size(60, 10)
                          .make()
                          .shimmer(primaryColor: Coolors.accentColor),
                      30.heightBox,
                      SocialAccounts(),
                    ],
                  ).pSymmetric(h: context.percentWidth * 10, v: 32),
                  Expanded(
                    child: VxResponsive(
                      fallback: const Offstage(),
                      medium: IntroductionWidget()
                          .pOnly(left: 120)
                          .h(context.percentHeight * 60),
                      large: IntroductionWidget()
                          .pOnly(left: 120)
                          .h(context.percentHeight * 60),
                    ),
                  ),
                ],
              ).w(context.screenWidth),
            ],
          ),
        ],
      ),
    )
            .size(context.screenWidth, context.percentHeight * 60)
            .color(Coolors.secondaryColor)
            .make());
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.white.widest.sm.make(),
          10.heightBox,
          "Software Engineer, Flutter Developer"
              .text
              .white
              .xl3
              .maxLines(4)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        "Welcome To My Portfolio".text.white.widest.make().shimmer(),
        "My Resume".text.center.xl2.make().click(() {
          launch(
              "https://drive.google.com/file/d/1qyoulnsvdvCNiKUNO01ozMiUpZV43Ik6/view?usp=sharing");
        }).make(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        'assets/ss.jpg',
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch('https://twitter.com/SalahKh74');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch('https://www.facebook.com/saloha.alahlawy111/');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch(
            'https://www.instagram.com/salahtarekkhattab74/?fbclid=IwAR0fn8fn9otoLo3EL7VrZuAzJcasa3ZhpFsstjYa-iFNgJaFcHPNFNLDsvs');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch('https://github.com/SalahKhattab74');
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch('https://www.linkedin.com/in/salah-tarek-532660197/');
      }).make(),
    ].hStack();
  }
}
