// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentzy_rpl/auth/main_page.dart';
import 'package:rentzy_rpl/pages/history.dart';

class Profile extends StatelessWidget {
  var user = FirebaseAuth.instance.currentUser!;
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff41436A),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 32,
                // right: 24,
                // left: 24,
              ),
              child: Center(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar-1.jpg'),
                      radius: 64,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      user.displayName!,
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Text(
                      user.email!,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Color(0xffffffff),
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),

                    //Edit Profile
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        top: 32,
                        right: 24,
                        left: 24,
                        bottom: 200,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 87,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 24,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  FeatherIcons.user,
                                  size: 20,
                                  color: Color(0xff0E0F0E),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  'Edit Profile',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0E0F0E)),
                                ),
                                Spacer(
                                  flex: 6,
                                ),
                                Icon(
                                  FeatherIcons.chevronRight,
                                  size: 20,
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 24,
                          ),

                          //History
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => History(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 24,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    FeatherIcons.map,
                                    size: 20,
                                    color: Color(0xff0E0F0E),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'History',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff0E0F0E)),
                                  ),
                                  Spacer(
                                    flex: 6,
                                  ),
                                  Icon(
                                    FeatherIcons.chevronRight,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 24,
                          ),

                          //LogOut
                          GestureDetector(
                            onTap: () {
                              FirebaseAuth.instance.signOut();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 24,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    FeatherIcons.logOut,
                                    size: 20,
                                    color: Color(0xffffffff),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'Log Out',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffffff)),
                                  ),
                                  Spacer(
                                    flex: 6,
                                  ),
                                  Icon(
                                    FeatherIcons.chevronRight,
                                    size: 20,
                                    color: Color(0xffffffff),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
