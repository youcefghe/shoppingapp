// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/components/item.dart';
import 'package:ecommerce/screens/product_description.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utilities/constants.dart';
import 'package:ecommerce/components/custom_icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/components/carousel.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  circul: 15,
                  iconColor: kMainTextColor,
                  backColor: kSecondTextColor,
                  cosIcon: Icons.arrow_back_ios_new,
                  onPressed: () {},
                ),
                CustomIconButton(
                  circul: 15,
                  iconColor: kMainTextColor,
                  backColor: Colors.white70,
                  cosIcon: Icons.search,
                  onPressed: () {},
                  bordering: Border.all(color: Colors.black12),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'HI-FI Shop & Service',
                      style: TextStyle(
                          fontFamily: 'Sombra',
                          color: kMainTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    child: Text(
                      'Audio shop on Rustavili Ave 57',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kBackImagesColor),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                    child: Text(
                      'This shop offers both producs and services',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kBackImagesColor),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                  child: Text(
                    'Products',
                    style: TextStyle(
                        fontFamily: 'Sombra',
                        color: kTitlesColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '41',
                  style: TextStyle(
                      fontFamily: 'Sombra',
                      color: kBackImagesColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show all',
                      style: TextStyle(
                          color: Color(0xff537BFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDiscription()));
                  },
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            decoration: BoxDecoration(
                              color: kSecondTextColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Hero(
                              tag: 'hero',
                              child: Image.asset(
                                'assets/headphones.jpg',
                                height: 130,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text('AKG N700NCM2 Wireless Headphones',
                                style: TextStyle(
                                    fontFamily: 'Sombra',
                                    color: kMainTextColor,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 3, horizontal: 0),
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            child: Text(
                              '\$199.00',
                              style: TextStyle(color: kBackImagesColor),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      )),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDiscription()));
                  },
                  child: item(
                    link: 'assets/headphones2.jpg',
                  ),
                ))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
                  child: Text(
                    'Accessories',
                    style: TextStyle(
                        fontFamily: 'Sombra',
                        color: kTitlesColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '19',
                  style: TextStyle(
                      fontFamily: 'Sombra',
                      color: kBackImagesColor,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show all',
                      style: TextStyle(
                          color: Color(0xff537BFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: item(
                  itemColor: Colors.red,
                  text: Text(
                    '• Unavailable',
                    style: TextStyle(
                        fontFamily: 'Sombra',
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  link: 'assets/earphones.jpg',
                )),
                Expanded(
                    child: item(
                  itemColor: Colors.green,
                  text: Text(
                    '• Available',
                    style: TextStyle(
                        fontFamily: 'Sombra',
                        color: Color(0xff23BF8F),
                        fontWeight: FontWeight.bold),
                  ),
                  link: 'assets/earphones.jpg',
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
