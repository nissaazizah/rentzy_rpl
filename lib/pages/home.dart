// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentzy_rpl/pages/history.dart';
import 'package:rentzy_rpl/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 42,
                  right: 24,
                  left: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Avatar
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                            );
                          },
                          child: Container(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/avatar-1.jpg'),
                              radius: 22,
                            ),
                          ),
                        ),

                        //History Icon
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => History(),
                              ),
                            );
                          },
                          child: Icon(
                            FeatherIcons.clock,
                            size: 32,
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 80,
                    ),

                    //Text Title
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Find the Best ",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0E0F0E),
                              ),
                            ),
                            Text(
                              "Bike",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff41436A),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "to Rent Today!",
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0E0F0E),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 56,
                    ),

                    //Search Bar
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 2.5, 0, 2.5),
                        child: TextField(
                          // controller: _emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff0E0F0E),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 42,
                    ),

                    //Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Available
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 42,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff41436A),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Available",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        //All
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 66,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "All",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Color(0xff0E0F0E),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 56,
                    ),

                    //Units List
                    // Container(
                    //   child: ListView(
                    //     semanticChildCount: 3,
                    //     shrinkWrap: true,
                    //     children: [
                    //       Container(
                    //         child: Row(
                    //           children: [
                    //             Container(
                    //               padding: EdgeInsets.only(right: 85.7),
                    //               decoration: BoxDecoration(
                    //                   color: Color(0xffD9D9D9),
                    //                   borderRadius: BorderRadius.circular(8)),
                    //               child: Row(
                    //                 children: [
                    //                   ClipRRect(
                    //                     borderRadius: BorderRadius.only(
                    //                       topLeft: Radius.circular(8),
                    //                       bottomLeft: Radius.circular(8),
                    //                     ),
                    //                     child: Image.network(
                    //                       'https://drive.google.com/uc?export=view&id=1o5YqxFUHay9SgDzMa-nBE0HRfxkaz9ZZ',
                    //                     ),
                    //                   ),
                    //                   SizedBox(
                    //                     width: 8,
                    //                   ),
                    //                   Column(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     children: [
                    //                       Text(
                    //                         "ZX-6R",
                    //                         style: GoogleFonts.montserrat(
                    //                             fontSize: 24,
                    //                             fontWeight: FontWeight.w700),
                    //                       ),
                    //                       Text(
                    //                         'Kawasaki',
                    //                         style: GoogleFonts.montserrat(
                    //                             fontSize: 12,
                    //                             fontWeight: FontWeight.w300),
                    //                       ),
                    //                       SizedBox(
                    //                         height: 32,
                    //                       ),
                    //                       Row(
                    //                         crossAxisAlignment:
                    //                             CrossAxisAlignment.end,
                    //                         children: [
                    //                           Text(
                    //                             'Rp',
                    //                             style: GoogleFonts.montserrat(
                    //                                 fontSize: 14,
                    //                                 fontWeight:
                    //                                     FontWeight.w700),
                    //                           ),
                    //                           Text(
                    //                             '60.000',
                    //                             style: GoogleFonts.montserrat(
                    //                                 fontSize: 20,
                    //                                 fontWeight:
                    //                                     FontWeight.w700),
                    //                           ),
                    //                           Text(
                    //                             '/ Day',
                    //                             style: GoogleFonts.montserrat(
                    //                               fontSize: 20,
                    //                               fontWeight: FontWeight.w300,
                    //                             ),
                    //                           )
                    //                         ],
                    //                       )
                    //                     ],
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
