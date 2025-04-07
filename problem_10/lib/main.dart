import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bottom Navigation Bar',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) => setState(() => _currentIndex = index),
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://www.trolleytours.com/wp-content/uploads/2016/06/washington-dc-white-house.jpg',
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const Text('Welcome Home!', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          'Search Anything...',
          style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/5JhfuP7_HOzXlo1Ayg0UrZqqSA-9SXB7bxLPxBH4mEMN1zC_3e4kQP8oWPfwazbGNHtJSX1dKac-lCso08NLPgPtzYmo9he0zrYHIoaQJIJASkrRupl6Hpc8WI1ThxkI=w1280',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Abdullah Al Mamun Saif',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Text('Flutter Developer', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
