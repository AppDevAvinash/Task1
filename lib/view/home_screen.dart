import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/widget/bottomnavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text(
          'Home',
          style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
