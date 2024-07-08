import 'package:finally_1/widgets/details/details_body.dart';
import 'package:flutter/material.dart';
import 'package:finally_1/models/product.dart';
import 'package:finally_1/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: detailsAppBar(context),
        body: DetailsBody(
          product: product,
        ),
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'رجوع',
        style: GoogleFonts.almarai(
          textStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
