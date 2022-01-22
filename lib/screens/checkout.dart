// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce/components/custom_icon.dart';
import 'package:ecommerce/utilities/constants.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: CustomIconButton(
                    circul: 15,
                    iconColor: kMainTextColor,
                    backColor: kSecondTextColor,
                    cosIcon: Icons.arrow_back_ios_new,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text('Order details',
                    style: TextStyle(
                        fontFamily: 'Sombra',
                        color: kMainTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'My Cart',
                style: TextStyle(
                    fontFamily: 'Sombra',
                    color: kTitlesColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  decoration: BoxDecoration(
                    color: kSecondTextColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Image.asset(
                    'assets/headphones.jpg',
                    height: 130,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('AKG N700NCM2 Wireless Headphones',
                          style: TextStyle(
                              fontFamily: 'Sombra', color: kMainTextColor)),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0),
                        child: Text(
                          '\$199.00 (-\$4.00 Tax)',
                          style: TextStyle(color: kBackImagesColor),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.remove,
                              color: kMainTextColor,
                              size: 13,
                            ),
                          ),
                          Text('1'),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.add,
                              color: kMainTextColor,
                              size: 13,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              color: kSecondTextColor,
                            ),
                            child: Icon(
                              Icons.delete_outline,
                              color: kMainTextColor,
                              size: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Text(
                'Delevery Location',
                style: TextStyle(
                    fontFamily: 'Sombra',
                    color: kTitlesColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Container(),
                CustomIconButton(
                  circul: 45,
                  iconColor: kMainButtonsColor,
                  backColor: kSecondTextColor,
                  cosIcon: Icons.location_on,
                  onPressed: () {},
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Rustavili Ave 57',
                        style: TextStyle(
                            fontFamily: 'Sombra',
                            color: kMainTextColor,
                            fontSize: 15),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Text(
                'Payment Method',
                style: TextStyle(
                    fontFamily: 'Sombra',
                    color: kTitlesColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Container(),
                CustomIconButton(
                  circul: 45,
                  iconColor: kMainButtonsColor,
                  backColor: kSecondTextColor,
                  cosIcon: Icons.credit_card,
                  onPressed: () {},
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'VISA Classic',
                        style: TextStyle(
                            fontFamily: 'Sombra',
                            color: kMainTextColor,
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 15),
                        child: Text(
                          '****-0923',
                          style: TextStyle(
                              fontFamily: 'Sombra', color: kBackImagesColor),
                        ),
                      ),
                    ],
                  ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                'Order Info',
                style: TextStyle(
                    fontFamily: 'Sombra',
                    color: kTitlesColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text('Subtotal',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kBackImagesColor)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text('\$199.00',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kMainTextColor)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text('Shipping Cost',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kBackImagesColor)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Text('+\$10.00',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kMainTextColor)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Total',
                      style: TextStyle(
                          fontFamily: 'Sombra', color: kBackImagesColor)),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('\$209.00',
                      style: TextStyle(
                          fontFamily: 'Sombra',
                          color: kMainTextColor,
                          fontSize: 20)),
                )
              ],
            ),
            Center(
              child: SizedBox(
                height: 70,
                width: 350,
                child: TextButton(
                  child: Text('CHECKOUT (\$209.00)',
                      style: TextStyle(
                          fontFamily: 'Sombra',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  onPressed: () {},
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
        ),
      ),
    );
  }
}
