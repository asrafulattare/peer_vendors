import 'package:flutter/material.dart';
import 'package:peer_vendors/constants/image_assets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/color.dart';
import '../../widget/dot_inigator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int activeIndex = 0;

  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<String> title = [
    'Welcome To Peer Vendor',
    'Find Your Favourite Products',
    'Buy & Sell Around You',
    'Safe & Trusted',
  ];

  List<String> dec = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
  ];

  List<String> image = [
    Assets.intro1,
    Assets.intro2,
    Assets.intro3,
    Assets.intro4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  activeIndex = index;
                });
              },
              controller: _pageController,
              itemCount: title.length,
              itemBuilder: (context, index) => OnborderContant(
                titel: title[index],
                dec: dec[index],
                image: image[index],
              ),
            ),
            DotIndigetor(activeIndex: activeIndex, length: title).positioned(
              top: MediaQuery.of(context).size.height / 2,
              left: MediaQuery.of(context).size.width * .40,
              right: MediaQuery.of(context).size.width * .40,
            ),
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .09,
                  width: MediaQuery.of(context).size.width / 2,
                  child: (activeIndex == title.length - 1 ? "" : "Skip")
                      .text
                      .color(ColorBlock.orange)
                      .size(20)
                      .makeCentered()
                      .onTap(() {
                    _pageController.jumpToPage(3);
                  }),
                ).box.alignBottomLeft.make(),
                Container(
                  height: MediaQuery.of(context).size.height * .09,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: (activeIndex == title.length - 1 ? "Done" : "Next")
                      .text
                      .bold
                      .black
                      .headline5(context)
                      .makeCentered(),
                ).box.alignBottomRight.make().onTap(() {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                  Navigator.pushNamed(context, 'login');
                }),
              ],
            )
                .box
                .height(MediaQuery.of(context).size.height * .09)
                .make()
                .positioned(bottom: 0),
          ],
        ),
      ),
    );
  }
}

class OnborderContant extends StatelessWidget {
  const OnborderContant({
    Key? key,
    required this.titel,
    required this.dec,
    required this.image,
  }) : super(key: key);
  final String titel, dec, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        titel.text.align(TextAlign.left).bold.headline5(context).make().p12(),
        dec.text.gray500.make().p12(),
        const Spacer(),
      ],
    );
  }
}
