import 'package:flutter/material.dart';
import 'package:peer_vendors/screen/login/widgets/welDone.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants/image_assets.dart';
import '../../../widget/fill_btn.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeightBox(50),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Assets.logo,
                height: 150,
              ),
            ),
            const HeightBox(50),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: "Enter 6 digit OTP code".text.make(),
                    ),
                  ),
                ],
              ),
            ),
            const HeightBox(40),
            const BtnWidget(
              btnText: 'Register',
            ).centered().onTap(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const WellDone()));
            }),
          ],
        ).p32(),
      ),
    );
  }
}
