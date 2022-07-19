import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/image_assets.dart';

class WellDone extends StatelessWidget {
  const WellDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Assets.check,
                height: 150,
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: 'Well-Done!'
                    .text
                    .fontWeight(FontWeight.w400)
                    .headline4(context)
                    .bold
                    .align(TextAlign.center)
                    .black
                    .make()),
          ],
        ).onTap(() {
          Navigator.pushNamed(context, 'home');
        }),
      ),
    );
  }
}
