
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_app/pages/forgot.dart';
import 'package:nike_app/pages/navbar.dart';
import 'package:nike_app/pages/onboarding-screen.dart';
import 'package:nike_app/pages/registrasi.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 30),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            margin: EdgeInsets.only(left: 20, top: 20), // Add 16 pixels padding at the left and 30 pixels padding at the top
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 228, 228, 228), // Set the circular background color
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black.withOpacity(0.6),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen()),
                  (route) => false,
                );
              },
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Hello Again!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: '.SF Compact',
                        package: 'CupertinoIcons',
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Fill Your Details Or Continue\nWith Social Media",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: '.SF Compact',
                        package: 'CupertinoIcons',
                        color: Color(0xFF707B81),
                      ),
                    ),
                  ),
                  
             SizedBox(height: 35),
             Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CupertinoTextField(
                      keyboardType: TextInputType.emailAddress,
                      placeholder: "loremipsum@gmail.com",
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 228, 228, 228),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      placeholderStyle: TextStyle(
                        color: Color.fromARGB(255, 102, 102, 102),
                      ),
                    ),
                  SizedBox(
                    height: 35,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              SizedBox(height: 10),
                  CupertinoTextField(
                      placeholder: '*******',
                      prefix: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 228, 228, 228),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      placeholderStyle: TextStyle(
                        color: Color.fromARGB(255, 102, 102, 102),
                      ),
                    ),
                    SizedBox(height:15),
                    Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              // Navigate to the ForgotPasswordScreen when "Recovery Password" is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
              );
            },
            child: Text(
              "Recovery Password",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF707B81),
              ),
            ),
          ),
        ),
                  SizedBox(height: 35),
                  FractionallySizedBox(
                  widthFactor: 1.0,
                  child: CupertinoButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => navbarScreen()),
                      );},
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14),
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 16 ),
                  ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  FractionallySizedBox(
                  widthFactor: 1.0,
                  child: CupertinoTextField(
  padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 228, 228, 228),
    borderRadius: BorderRadius.circular(16),
  ),
  placeholderStyle: TextStyle(
    color: Color(0xFF2B2B2B),
  ),
  prefix: Center( // Use Center directly instead of Expanded
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 90.0, right: 8.0),
          child: SvgPicture.asset(
            'assets/logo/google.svg', // Ganti dengan path/logo Google SVG yang sesuai
            height: 22,
            width: 22,
          ),
        ),
        Text(
          'Sign In With Google',
          style: TextStyle(
            color: Color(0xFF2B2B2B),
          ),
        ),
      ],
    ),
  ),
),
                  ),


                  SizedBox(height: 35),
                  Padding(
          padding: EdgeInsets.only(top: 50),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "New User?  ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 114, 113, 113),
                    ),
                  ),
                  TextSpan(
                    text: 'Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to the RegistrasiScreen when "Create Account" is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrasiScreen()),
                        );
                      },
                  ),
      

                ],
                
              ),
                    ),
                  ),
                  ),
            ],
              
          
        ),
                ],
      
        ),
        ),
        ),
        ),
      ),
    );
  }
}
