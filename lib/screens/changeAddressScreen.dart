// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';


import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';
// ignore: unnecessary_import, unused_import
import '../widgets/searchBar.dart';


// ignore: use_key_in_widget_constructors
class ChangeAddressScreen extends StatelessWidget {
  static const routeName = "/changeAddressScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      // ignore: prefer_const_constructors
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Text(
                      "Change Address",
                      // ignore: deprecated_member_use
                      style: Helper.getTheme(context).headline5,
                    )
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: Helper.getScreenHeight(context) * 0.6,
                      child: Image.asset(
                        Helper.getAssetName(
                          "map.png",
                          "real",
                        ),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      right: 40,
                      child: Image.asset(
                        Helper.getAssetName(
                          "current_loc.png",
                          "virtual",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 180,
                      child: Image.asset(
                        Helper.getAssetName(
                          "loc.png",
                          "virtual",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 30,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        width: Helper.getScreenWidth(context) * 0.45,
                        // ignore: prefer_const_constructors
                        decoration: ShapeDecoration(
                          color: AppColor.orange,
                          // ignore: prefer_const_constructors
                          shape: RoundedRectangleBorder(
                            // ignore: prefer_const_constructors
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              // ignore: prefer_const_constructors
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Text(
                              "Your Current Location",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(
                              height: 10,
                            ),
                            // ignore: prefer_const_constructors
                            Text(
                              "653 Nostrand Ave., Brooklyn, NY 11216",
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      right: 205,
                      child: ClipPath(
                        clipper: CustomTriangleClipper(),
                        child: Container(
                          width: 30,
                          height: 30,
                          color: AppColor.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: ShapeDecoration(
                          // ignore: prefer_const_constructors
                          shape: CircleBorder(),
                          color: AppColor.orange.withOpacity(0.2),
                        ),
                        // ignore: prefer_const_constructors
                        child: Icon(
                          Icons.star_rounded,
                          color: AppColor.orange,
                          size: 30,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        width: 10,
                      ),
                      // ignore: prefer_const_constructors
                      Expanded(
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Choose a saved place",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                )
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Positioned(
            bottom: 0,
            left: 0,
            // ignore: prefer_const_constructors
            child: CustomNavBar(),
          ),
        ],
      ),
    );
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
