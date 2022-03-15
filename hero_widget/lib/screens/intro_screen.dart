import 'package:flutter/material.dart';
import 'package:hero_widget/modules/custom_clippers.dart';
import 'package:hero_widget/screens/signup_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  bool markOnly = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ClipPath(
              clipper: BigClipper(),
              child: Container(
                color: Colors.blue.withOpacity(0.75),
              ),
            ),
            ClipPath(
              clipper: SmallClipper(),
              child: Container(
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              right: MediaQuery.of(context).size.width * 0.25,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    markOnly = !markOnly;
                  });
                },
                child: Hero(
                  tag: "hero tag 1",
                  child: FlutterLogo(
                    duration: const Duration(seconds: 1),
                    size: 200,
                    style: markOnly
                        ? FlutterLogoStyle.markOnly
                        : FlutterLogoStyle.horizontal,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 65.0,
              right: 50.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: Container(
                  height: 85.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2.0),
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
