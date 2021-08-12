import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.blue400,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Some Of My Works, \n"
              .richText
              .withTextSpanChildren(
                ["Click To See Project Details".textSpan.yellow400.make()],
              )
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(
                title: "Al Jawhara Real Estate Marketing",
              ).mdClick(() {
                launch(
                    "https://play.google.com/store/apps/details?id=com.algawharaintl20salahayman99.jawhara3");
              }).make(),
              ProjectWidget(
                title:
                    "Hear Me Out( Graduation Project With Machine Learning )",
              ).mdClick(() {
                launch("https://github.com/aiman7407/hear_me_out");
              }).make(),
              ProjectWidget(
                title: "Khodlak Basa",
              ).mdClick(() {
                launch("https://github.com/SalahKhattab74/shop_app");
              }).make(),
              ProjectWidget(
                title: "News App",
              ).mdClick(() {
                launch("https://github.com/SalahKhattab74/new_app");
              }).make(),
            ],
            height: 170,
            viewportFraction: context.isMobile ? 0.75 : 0.4,
            autoPlay: true,
            autoPlayAnimationDuration: 3.seconds,
          )),
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  ProjectWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(color: Vx.blue400, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
