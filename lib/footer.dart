import 'package:cv/colors.dart';
import 'package:cv/header.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Contact Me".text.center.xl2.make(),
              10.heightBox,
              "salahkhattab748@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Contact Me".text.center.xl2.make(),
              10.widthBox,
              "salahkhattab748@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
              10.widthBox,
              "+201140654651"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks ".richText.semiBold.white.withTextSpanChildren([
          "that's all folks ".textSpan.gray500.make(),
        ]).make(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
