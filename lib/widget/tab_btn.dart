import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:peer_vendors/constants/color.dart';

class TabBtn extends StatelessWidget {
  const TabBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedSegment_00 = ValueNotifier('phone');
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AdvancedSegment(
                segments: const {
                  'phone': 'Phone',
                  'email': 'E-mail',
                },
                activeStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                inactiveStyle: const TextStyle(
                  color: Colors.white,
                ),
                backgroundColor: ColorBlock.grey,
                sliderColor: ColorBlock.blueBtn,
                controller: selectedSegment_00,
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
