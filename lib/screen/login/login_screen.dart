import 'package:flutter/material.dart';
import 'package:peer_vendors/constants/color.dart';
import 'package:peer_vendors/constants/image_assets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/fill_btn.dart';
import '../../widget/tab_btn.dart';
import 'widgets/otp_scrren.dart';

class LoginScreen extends StatelessWidget {
  final _selectedSegment_00 = ValueNotifier('all');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                Assets.logo,
                height: 80,
              ),
            ),
            const HeightBox(20),
            Align(
                alignment: Alignment.topLeft,
                child: 'Let’s Get Started.'
                    .text
                    .fontWeight(FontWeight.w400)
                    .headline5(context)
                    .bold
                    .align(TextAlign.left)
                    .black
                    .make()),
            const HeightBox(5),
            Align(
                alignment: Alignment.topLeft,
                child:
                    'If you continue, you are accepting \nOur Terms & Conditions and '
                        .text
                        .subtitle2(context)
                        .thin
                        .align(TextAlign.left)
                        .make()),
            Align(
                alignment: Alignment.topLeft,
                child: 'Privacy Policy.'
                    .text
                    .subtitle2(context)
                    .thin
                    .color(ColorBlock.blueBtn)
                    .align(TextAlign.left)
                    .make()),
            const HeightBox(40),
            const BtnWidget(
              btnText: 'Register',
            ).centered().onTap(() {
              Navigator.pushNamed(context, 'register');
            }),
            const HeightBox(20),
            const BtnWidget(
              btnText: 'Login',
            ).centered().onTap(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Login()));
            }),
            const HeightBox(25),
            Align(
              alignment: Alignment.center,
              child: 'OR Continue With'
                  .text
                  .thin
                  .gray500
                  .align(TextAlign.left)
                  .make(),
            ),
            const HeightBox(15),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.googleIcon),
                  const WidthBox(20),
                  Image.asset(Assets.fbIcon),
                  const WidthBox(20),
                  Image.asset(Assets.twitterIcon),
                ],
              ),
            ),
            const HeightBox(45),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(Assets.playIcon),
                  const WidthBox(5),
                  "Need Help ?".text.color(ColorBlock.orange).size(18).make()
                ],
              ),
            ),
          ],
        ).scrollVertical(),
      ).p32(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 45,
                alignment: Alignment.topLeft,
                child: SizedBox(
                    child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: ColorBlock.grey,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    print("Cliked");
                  },
                ))),
            const HeightBox(20),
            Align(
                alignment: Alignment.topLeft,
                child: 'Login to Proceed.'
                    .text
                    .fontWeight(FontWeight.w400)
                    .headline4(context)
                    .bold
                    .align(TextAlign.left)
                    .black
                    .make()),
            const HeightBox(20),
            const TabBtn(),
            const HeightBox(20),
            Form(
              child: Column(
                children: [
                  const HeightBox(20),
                  TextFormField(
                    decoration: InputDecoration(
                      label: "Phone Number".text.make(),
                    ),
                  ),
                  const HeightBox(20),
                  DropdownButtonFormField(
                    items: null,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      label: "Select Your Country".text.make(),
                    ),
                  ),
                ],
              ),
            ),
            const HeightBox(50),
            const BtnWidget(
              btnText: 'Continue',
            ).centered().onTap(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => OtpScreen()));
            }),
            const HeightBox(40),
            Row(
              children: [
                'Don’t Have an Account?  '.text.make(),
                ' Register'.text.color(ColorBlock.blue).make().onTap(() {
                  Navigator.pushNamed(context, 'register');
                }),
              ],
            )
          ],
        ).p32(),
      ),
    );
  }
}
