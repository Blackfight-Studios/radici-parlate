import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radici_parlate/pages/home.dart';
import 'package:radici_parlate/theme/theme.dart';
import 'package:radici_parlate/widgets/navigation/center_button.dart';
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
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndexPage],
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: AppNavigationBar(selectedIndex: _selectedIndexPage, onItemTapped: _onItemTapped),
        ),
      floatingActionButton: CenterNavigationButton(selectedIndex: _selectedIndexPage, onItemTapped: _onItemTapped),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }
}


