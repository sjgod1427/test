import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessAnimationScreen extends StatefulWidget {
  @override
  _SuccessAnimationScreenState createState() => _SuccessAnimationScreenState();
}

class _SuccessAnimationScreenState extends State<SuccessAnimationScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 2)); // Wait for animation to play
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => Placeholder()), // Replace with your home screen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/images/Animation - 1743861227000.json',
          width: 200,
          height: 200,
          repeat: false,
        ),
      ),
    );
  }
}
