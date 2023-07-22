import 'package:flutter/material.dart';
import 'package:nike_app/pages/login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _pages = [
  OnboardingPage(
    title: 'Welcome to\nNIKE',
    image: Image.asset('assets/images/slide1.png'),
    subtitle: '---', // Tambahkan teks yang sesuai untuk slide pertama
  ),
  OnboardingPage(
    image: Image.asset('assets/images/slide2.png'),
    title: 'Let’s Start Journey With Nike',
    subtitle: 'Smart, Gorgeous & Fashionable Collection\nExplore Now', // Tambahkan teks yang sesuai untuk slide kedua
  ),
  OnboardingPage(
    image: Image.asset('assets/images/slide3.png'),
    title: 'You Have the Power To',
    subtitle: 'There Are Many Beautiful And Attractive Plants To Your Room', // Tambahkan teks yang sesuai untuk slide ketiga
  ),
];


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _navigateToNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1483C2),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  return _pages[index];
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigateToNextPage,
              child: Text(
                _currentPage == _pages.length - 2 ? 'Mulai' : 'Lanjut',
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _pages.length; i++) {
      indicators.add(
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 8),
          height: 8,
          width: _currentPage == i ? 24 : 8,
          decoration: BoxDecoration(
            color: _currentPage == i ? Color.fromARGB(255, 255, 123, 0) : const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
    }
    return indicators;
  }
}

class OnboardingPage extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;

  const OnboardingPage({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          image,
          SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
