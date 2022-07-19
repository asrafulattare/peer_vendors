import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/color.dart';
import '../../constants/image_assets.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String? lang = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const HeightBox(65),
                'Choose Your language'.text.bold.size(18).white.make(),
                const HeightBox(10),
                RadioListTile(
                  value: 'English',
                  groupValue: lang,
                  onChanged: (value) {
                    setState(() {
                      lang = value.toString();
                      Navigator.pushNamed(context, 'onboard');
                    });
                  },
                  title: 'English'.text.white.make(),
                  activeColor: ColorBlock.greenRadio,
                ),
                RadioListTile(
                  value: 'Bangla',
                  groupValue: lang,
                  onChanged: (value) {
                    setState(() {
                      lang = value.toString();
                      Navigator.pushNamed(context, 'onboard');
                    });
                  },
                  title: 'Bangla'.text.white.make(),
                  activeColor: ColorBlock.greenRadio,
                ),
                RadioListTile(
                  value: 'Arabic',
                  activeColor: ColorBlock.greenRadio,
                  groupValue: lang,
                  onChanged: (value) {
                    setState(() {
                      Navigator.pushNamed(context, 'onboard');
                      lang = value.toString();
                    });
                  },
                  title: 'Arabic'.text.white.make(),
                ),
              ],
            )
                .box
                .withDecoration(
                  const BoxDecoration(
                    color: ColorBlock.orange,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                )
                .color(ColorBlock.orange)
                .width(MediaQuery.of(context).size.width * .65)
                .height(MediaQuery.of(context).size.height * .37)
                .makeCentered(),
            Container(
              height: 133,
              width: 133,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Image.asset(
                Assets.logo,
                height: 120,
              ).centered(),
            ).positioned(
                top: MediaQuery.of(context).size.height * .17,
                left: MediaQuery.of(context).size.height * .15,
                right: MediaQuery.of(context).size.height * .15),
          ],
        ),
      ),
    );
  }
}
