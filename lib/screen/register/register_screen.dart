import 'package:flutter/material.dart';
import 'package:peer_vendors/constants/color.dart';
import 'package:peer_vendors/widget/tab_btn.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widget/fill_btn.dart';
import '../login/widgets/otp_scrren.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController userInput = TextEditingController();
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
                child: 'Create an account Now.'
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
                  TextFormField(
                    decoration: InputDecoration(
                      label: "Full Name".text.make(),
                    ),
                  ),
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
                'Already Have an Account?'.text.make(),
                ' Login'.text.color(ColorBlock.blue).make().onTap(() {
                  Navigator.pushNamed(context, 'login');
                }),
              ],
            )
          ],
        ).p32(),
      ),
    );
  }
}
