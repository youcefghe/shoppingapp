import 'package:ecommerce/utilities/constants.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget {
  const item({@required this.link, this.text, this.itemColor});

  final String? link;
  final Text? text;
  final Color? itemColor;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                color: kSecondTextColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Image.asset(
                '$link',
                height: 130,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('AKG N700NCM2 Wireless Headphones',
                  style: TextStyle(
                      fontFamily: 'Sombra',
                      color: kMainTextColor,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                alignment: Alignment.centerLeft,
                child: text),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Text(
                '\$199.00',
                style: TextStyle(color: kBackImagesColor),
              ),
              alignment: Alignment.centerLeft,
            ),
          ],
        ));
  }
}
