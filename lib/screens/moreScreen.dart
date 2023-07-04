import 'package:flutter/material.dart';
import '../const/colors.dart';

import '../widgets/customNavBar.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = "/moreScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        // ignore: prefer_const_constructors
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      'Find Your',
                      // ignore: prefer_const_constructors
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 5,
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'Inspiration',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      // ignore: prefer_const_constructors
                      child: TextField(
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            // ignore: prefer_const_constructors
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                                // ignore: prefer_const_constructors
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      'Promo Today',
                      style:
                          // ignore: prefer_const_constructors
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 15,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/images/virtual/one.jpg'),
                          promoCard('assets/images/virtual/two.jpg'),
                          promoCard('assets/images/virtual/three.jpg'),
                          promoCard('assets/images/virtual/four.jpg'),
                        ],
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // ignore: prefer_const_constructors
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            // ignore: prefer_const_constructors
                            image: AssetImage('assets/images/virtual/three.jpg')),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              // ignore: prefer_const_literals_to_create_immutables
                              stops: [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),
                        // ignore: prefer_const_constructors
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          // ignore: prefer_const_constructors
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            // ignore: prefer_const_constructors
                            child: Text(
                              'Best Design',
                              style:
                                  // ignore: prefer_const_constructors
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              more: true,
            ),
          )
        ],
      ),
    );
  }
  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // ignore: prefer_const_literals_to_create_immutables
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}

class MoreCard extends StatelessWidget {
  const MoreCard({
    Key? key,
    required String name,
    required Image image,
    bool isNoti = false,
    required Function handler,
  })  : _name = name,
        _image = image,
        _isNoti = isNoti,
        _handler = handler,
        super(key: key);

  final String _name;
  final Image _image;
  final bool _isNoti;
  // ignore: unused_field
  final Function _handler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Container(
        height: 70,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(
                right: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: AppColor.placeholderBg,
              ),
              child: Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: AppColor.placeholder,
                      ),
                      child: _image),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    _name,
                    style: TextStyle(
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 30,
                width: 30,
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: AppColor.placeholderBg,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColor.secondary,
                  size: 17,
                ),
              ),
            ),
            if (_isNoti)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 20,
                  width: 20,
                  margin: const EdgeInsets.only(
                    right: 50,
                  ),
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "15",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
