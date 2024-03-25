// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/product_image.dart';

class DetailsScreenBody extends StatelessWidget {
  //const DetailsScreenBody({super.key});
  final Product product;

  const DetailsScreenBody({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    
    Size size =MediaQuery.of(context).size;//so we can get the dimentions of the mobile screen >>>
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(size: size, image: product.image, product: product,),//the image frome data base>>>>
          Container(
            margin:EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(product.description,
            style: TextStyle(color: Colors.white,fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

