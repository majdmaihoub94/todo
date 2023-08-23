import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/core/common/widgets/round_button.dart';
import 'package:todo/core/common/widgets/white_space.dart';
import 'package:todo/core/res/images_res.dart';
import 'package:todo/features/auth/views/otp_verfication_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(16));

    return Scaffold(
        body: SafeArea(
            child: Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(32),
        physics: const PageScrollPhysics(),
        children: [
          Image.asset(ImageRes.todo),
          const WhiteSpace(height: 10),
          const Text(
            'Enter Number to get Verification Code',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 3, 9)),
          ),
          const WhiteSpace(height: 20),
          TextField(
              keyboardType: TextInputType.phone,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                focusedBorder: border,
                enabledBorder: border,
              )),
          const WhiteSpace(height: 30),
          RoundedButton(
              text: 'Get Code',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const OtpVerfication();
                }));
              })
        ],
      ),
    )));
  }
}
