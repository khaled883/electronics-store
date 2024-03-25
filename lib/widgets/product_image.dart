// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/color_dot.dart';

class ProductImage extends StatelessWidget {
  final Product product;
  const ProductImage({
    super.key,
    required this.size, required this.image, required this.product,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
    //height: 300,
      decoration: const BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              //color: Colors.black,
              margin: EdgeInsets.symmetric(vertical:20),
              height: size.width*0.8,//80 % of the width of the query size
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: size.width*0.7,
                    height: size.width*0.7,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                
                    ),
                  ),
                  Image.asset(image,
                  //height: size.width*0.75,
                  //width: size.width*0.75,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                colorDot(
                  productColor: kTextLightColor,
                  isSelected: true,
                ),
                colorDot(
                  productColor: Colors.blue,
                  isSelected: false,
                ),
                colorDot(
                  productColor: Colors.red,
                  isSelected: false,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15,),
            child: Text(product.title,
            style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Text('${product.price}\$',
           style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w800,
            color: Colors.amber,
           ),
         ),
         SizedBox(height: 15,)
        ],
      ),
    );
  }
}

