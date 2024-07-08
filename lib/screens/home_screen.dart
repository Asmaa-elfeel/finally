import 'package:finally_1/constants.dart';
import 'package:finally_1/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: homeAppBar(),
        body: const HomeBody(),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'مرحباً بكم بمتجر الالكترونيات',
        textAlign: TextAlign.center,
        style: GoogleFonts.almarai(
          textStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: kPrimaryColor,
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
