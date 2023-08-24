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
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: Column(children: [
            Image.asset(ImageRes.todo),
            const Text('OtpVerfication'),
            WhiteSpace(height: 26.h),
            const Pinput(length: 6)
          ]),
        )));
  }
}
