import 'package:flutter/material.dart';
import 'package:radici_parlate/theme/theme.dart';
import 'package:radici_parlate/utils/strings.dart';
import 'package:radici_parlate/widgets/clipper/wave_clipper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header = Expanded(
      flex: 4,
      child: ClipPath(
        clipper: WaveClipper(),
        child: Container(
          height: double.infinity,
          color: primaryColor,
        ),
      ),
    );
    Widget content = Expanded(
        flex: 6,
        child: Padding(padding: const EdgeInsets.all(10), child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Strings.appName, style: Theme.of(context).textTheme.titleMedium, textAlign: TextAlign.center,),
            const Padding(padding: EdgeInsets.all(10)),
            Text(Strings.appPresentation, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
          ],
        )),
    );
    
    return Scaffold(
      body: Column(
        children: [
          header,
          content,
        ],
      ),
    );
  }
}