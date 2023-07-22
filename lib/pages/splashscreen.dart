import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_app/pages/onboarding-screen.dart'; // Import this for SystemChrome

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      // Remove debug banner for production build
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    // Delay the navigation to the next screen
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the desired screen
      // For example, replace `NextScreen()` with your desired screen's widget
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Hide the status and navigation bar during the splash screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      backgroundColor: Colors.blue, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40), // Adjust the right padding as needed
              child: Image.asset(
                'assets/logo/nike-logo.png', // Path to your logo image
                width: 157, // Adjust the width as needed
                height: 54, // Adjust the height as needed
              ),
            ),
            SizedBox(height: 5), // Add some spacing between the logo and the text
            Text(
              'NIKE',
              style: TextStyle(
                fontFamily: 'Raleway', // Font family for the text
                fontSize: 65, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // You can adjust the font weight as needed
                color: Colors.white, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}