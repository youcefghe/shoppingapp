// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/components/custom_icon.dart';
import 'package:ecommerce/components/item.dart';
import 'package:ecommerce/screens/checkout.dart';
import 'package:ecommerce/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/components/carousel.dart';

class ProductDiscription extends StatefulWidget {
  const ProductDiscription({Key? key}) : super(key: key);

  @override
  _ProductDiscriptionState createState() => _ProductDiscriptionState();
}

double activeIndex = 0;

class _ProductDiscriptionState extends State<ProductDiscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: kSecondTextColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomIconButton(
                      iconColor: kMainTextColor,
                      circul: 15,
                      backColor: Colors.white,
                      cosIcon: Icons.arrow_back_ios_new,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Hero(
                    tag: 'hero',
                    child: CarouselSlider(
                        options: CarouselOptions(
                            height: 250,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            autoPlay: false,
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index.toDouble())),
                        items: imgList
                            .map((item) => Container(
                                  child: Center(
                                      child: Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                    height: 250,
                                  )),
                                ))
                            .toList()),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: DotsIndicator(
                      dotsCount: imgList.length,
                      position: activeIndex,
                      decorator: DotsDecorator(
                          spacing: EdgeInsets.only(left: 3, right: 3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          size: Size(50, 4),
                          activeSize: Size(50, 4),
                          color: Colors.grey,
                          activeColor: kMainTextColor),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: kMainButtonsColor,
                  ),
                  Text(
                    'Shopping',
                    style: TextStyle(color: kMainButtonsColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AKG N700NCM2',
                    style: TextStyle(
                        color: kTitlesColor,
                        fontSize: 25,
                        fontFamily: 'Sombra',
                        fontWeight: FontWeight.bold),
                  ),
                  CustomIconButton(
                    circul: 45,
                    iconColor: kMainButtonsColor,
                    backColor: Color(0xffe8fbfc),
                    cosIcon: Icons.link,
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(
                'Audio shop on Rustavili Ave 57',
                style: TextStyle(fontFamily: 'Sombra', color: kBackImagesColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: Text(
                'This shop offers both producs and services',
                style: TextStyle(fontFamily: 'Sombra', color: kBackImagesColor),
              ),
            ),
            Row(
              children: [
                Container(),
                CustomIconButton(
                  circul: 45,
                  iconColor: kMainButtonsColor,
                  backColor: Color(0xffe8fbfc),
                  cosIcon: Icons.location_on,
                  onPressed: () {},
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 15),
                      child: Text(
                        'Rustavili Ave 57',
                        style: TextStyle(
                            fontFamily: 'Sombra', color: kBackImagesColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 15),
                      child: Text(
                        '17-001,Batimun',
                        style: TextStyle(
                            fontFamily: 'Sombra', color: kBackImagesColor),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: CustomIconButton(
                    circul: 45,
                    iconColor: kMainTextColor,
                    backColor: Colors.white54,
                    cosIcon: Icons.arrow_forward_ios_rounded,
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Divider(
              color: kBackImagesColor,
              indent: 20,
              endIndent: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    '\$199.00',
                    style: TextStyle(
                        fontFamily: 'Sombra',
                        color: kTitlesColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 10, 15),
                  child: Text('Tax Rate 2% -\$4.00 (=\$195.00)',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kBackImagesColor)),
                ),
                Center(
                  child: SizedBox(
                    height: 70,
                    width: 350,
                    child: TextButton(
                      child: Text('ADD TO CART',
                          style: TextStyle(
                              fontFamily: 'Sombra',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkout()));
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: Colors.white,
                        backgroundColor: kMainButtonsColor,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
