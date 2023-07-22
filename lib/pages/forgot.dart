
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/pages/login.dart';
import 'package:nike_app/pages/otp.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
   void _showAlertDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.fromLTRB(24, 20, 24, 0), // Adjust top padding here
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.drafts_outlined, size: 40),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Check your email",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "We Have Sent a Password Recovery\nCode to Your Email.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
              );
            },
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 0),
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
                  MaterialPageRoute(builder: (context) => LoginPage()),
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
      child: Align(
        alignment: Alignment.topCenter, // Align the content to the top center
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password",
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
                      "Enter your Email account to reset\nyour password",
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
                      "Your Name",
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
                      placeholder: "xxxxxxxx",
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
                    
                  SizedBox(height: 25),
                  FractionallySizedBox(
                  widthFactor: 1.0,
                  child: CupertinoButton(
                    onPressed: () {_showAlertDialog();},
                    child: Text(
                      'Sign Up',
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
      

                ],
                
              ),
                ],    
              ),
                  ),
            
              
          
        ),
                
                
      
        ),
      ),
      ),
    );  
  }
}
