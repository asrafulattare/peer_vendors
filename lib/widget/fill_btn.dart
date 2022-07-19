import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/color.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    Key? key,
    required this.btnText,
  }) : super(key: key);
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorBlock.blueBtn,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: btnText.text
          .fontWeight(FontWeight.w400)
          .size(25)
          .align(TextAlign.left)
          .white
          .make()
          .pOnly(left: 15, right: 8, top: 8, bottom: 8),
    );
  }
}
