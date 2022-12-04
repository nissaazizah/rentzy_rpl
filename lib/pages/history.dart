import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentzy_rpl/auth/main_page.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 32,
              right: 24,
              left: 24,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      FeatherIcons.clock,
                      size: 28,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "History",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    //Order History
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
