import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align the content to start (top-left)
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.list,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(width: 80),
                        Text(
                          "Explore",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: '.SF Compact',
                            package: 'CupertinoIcons',
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(width: 80),
                    Icon(
                          Icons.shopping_bag_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                      
                    ),
                    SizedBox(
                    height: 35,
                  ),
                  FractionallySizedBox(
                  widthFactor: 0.7,
                  child: CupertinoTextField(
                        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
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
                        padding: const EdgeInsets.only(left: 20.0, right: 8.0),
                        child: Icon(
                          Icons.search, // Replace 'Icons.loop' with the icon you want to use
                          size: 22,
                          color: Colors.black, // Set the icon color
                        ),
                      ),
                              Text(
                                'Looking for shoes',
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Select Category",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: CupertinoTextField(
                            placeholder: "All Shoes",
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            placeholderStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:14,
                              
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: CupertinoTextField(
                            placeholder: "Outdoor",
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            placeholderStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize:14,
                              
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        
                        SizedBox(width: 20),
                        Expanded(
                          child: CupertinoTextField(
                            placeholder:"Tennis",
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            placeholderStyle: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize:14,
                              
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Popular Shoes", style: TextStyle(fontSize: 16)),
                        SizedBox(width: 200),
                        Text("See all", style: TextStyle(fontSize: 12,color: Colors.blue,)),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/Frame 250.png', // Replace 'assets/shoe_image.png' with your shoe image path
                                                width: 137,
                                                height: 97,
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                'Best Seller',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Text(
                                                'Nike Jordan',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Rp. 302.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                                    InkWell(
                                                      onTap: () {
                                                        // Add button functionality here
                                                      },
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(3.0),
                                                          child: Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          ),
                                                          ),
                                            ],
                                          ),
                                        ),
                                      ),

                        SizedBox(width: 20),
                      
                        Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                'assets/images/Frame 251.png', // Replace 'assets/shoe_image.png' with your shoe image path
                                                width: 137,
                                                height: 97,
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                'Best Seller',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 12,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Text(
                                                'Nike Air Max',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Rp. 752.000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                                    InkWell(
                                                      onTap: () {
                                                        // Add button functionality here
                                                      },
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: Colors.blue,
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(3.0),
                                                          child: Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          ),
                                                          ),
                                            ],
                                          ),
                                        ),
                                      ),
                      ],
                    ),
                      SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("New Arrival", style: TextStyle(fontSize: 16)),
                        SizedBox(width: 215),
                        Text("See all", style: TextStyle(fontSize: 12,color: Colors.blue,)),
                        
                      ],
                    ),
                    SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                      widthFactor: 1.0,
                      child: CupertinoTextField(
                        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        placeholderStyle: TextStyle(
                          color: Color(0xFF2B2B2B),
                        ),
                        prefix: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 8.0),
                                child: Image.asset(
                                  'assets/images/Frame 293.png', // Replace this with the path to your discount image
                                  height: 55,
                                  width: 131,
                                ),
                              ),
                              SizedBox(width: 30),
                              Image.asset(
                                'assets/images/newww.png', // Replace this with the path to your shoe image
                                height: 99.65,
                                width: 111.32,
                              ),
                            ],
                          ),
                        ),
                      ),
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
