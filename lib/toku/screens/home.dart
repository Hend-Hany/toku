import 'package:flutter/material.dart';
import 'package:toku/toku/components/category.dart';
import 'package:toku/toku/screens/colors_page.dart';
import 'package:toku/toku/screens/familymembers_page.dart';
import 'package:toku/toku/screens/number_page.dart';
import 'package:toku/toku/screens/phrases_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Number',
            color: Color(0xFFEF9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return NumberPage();
              }));
            },
          ),
          Category(
            text: 'Family Members',
            color: Color(0xFF558B37),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return FamilyMemberPage();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xFF79359F),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return ColorPage();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xFF50ADC7),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
