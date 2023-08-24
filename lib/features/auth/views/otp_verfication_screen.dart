import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:todo/core/common/widgets/white_space.dart';
import 'package:todo/core/res/images_res.dart';

class OtpVerfication extends StatelessWidget {
  const OtpVerfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('OtpVerfication'),
        ),
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          children: [
            Column(children: [
              Image.asset(ImageRes.todo),
              const Text(
                'Enter Verification Code',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 1, 3, 9)),
              ),
              WhiteSpace(height: 20.h),
              const Pinput(length: 6)
            ]),
          ],
        )));
  }
}
