import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radici_parlate/screens/dictionary.dart';
import 'package:radici_parlate/screens/home.dart';
import 'package:radici_parlate/screens/tradition.dart';
import 'package:radici_parlate/theme/theme.dart';
import 'package:radici_parlate/widgets/navigation/navigation_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radici Parlate',
      theme: appTheme,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndexPage = 2; // default Home page

  final List<Widget> _pages = [
    const DictionaryScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const TraditionScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          _pages[_selectedIndexPage],
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: AppNavigationBar(selectedIndex: _selectedIndexPage,
                      onItemTapped: _onItemTapped))),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }
}


