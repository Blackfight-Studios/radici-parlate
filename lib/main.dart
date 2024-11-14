import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radici_parlate/pages/home.dart';
import 'package:radici_parlate/theme/theme.dart';

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

  int _selectedIndexPage = 0;

  final List<Widget> _pages = [
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndexPage],
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
