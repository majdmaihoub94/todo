import 'package:flutter/material.dart';
import 'package:todo/core/common/widgets/round_button.dart';
import 'package:todo/core/common/widgets/white_space.dart';
import 'package:todo/core/res/images_res.dart';
import 'package:todo/features/auth/views/sign_in_screen.dart';

class DynamicPage extends StatelessWidget {
  const DynamicPage({super.key, this.type, this.child});

  final String? type;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageRes.todo),
          const WhiteSpace(height: 20),
          type == 'text'
              ? const Column(
                  children: [
                    Text(
                      'Welcome to Todo App',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 1, 3, 9)),
                    ),
                    WhiteSpace(height: 20),
                    Text(
                        'Do you want to clear your  mind and know your work load?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 1, 3, 9))),
                  ],
                )
              : RoundedButton(
                  text: 'Get Started',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const SignInScreen();
                    }));
                  }),
        ],
      ),
    );
  }
}
