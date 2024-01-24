import 'package:flutter/material.dart';
import 'package:gigglegram/screens/home_screen.dart';
import '../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: mq.height * 0.15,
            left: mq.width * 0.25,
            width: mq.width * 0.5,
            child: Image.asset(
              'assets/images/icon_google.png',
            ),
          ),
          Positioned(
              bottom: mq.height * 0.15,
              width: mq.width,
              child: const Center(child: Text("Made with ❤️ ️"))),
        ],
      ),
    );
  }
}
