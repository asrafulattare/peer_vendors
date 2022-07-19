import 'package:flutter/material.dart';

import '../constants/color.dart';

class DotIndigetor extends StatelessWidget {
  const DotIndigetor({
    Key? key,
    required this.length,
    required this.activeIndex,
  }) : super(key: key);

  final List<String> length;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: List.generate(length.length, (index) {
        double sizeDot = index == activeIndex ? 10 : 10;
        Color colorDot = index == activeIndex
            ? ColorBlock.orange
            : const Color.fromARGB(102, 125, 104, 104);
        return Container(
          width: sizeDot,
          height: sizeDot,
          decoration: BoxDecoration(color: colorDot, shape: BoxShape.circle),
        );
      }),
    );
  }
}
