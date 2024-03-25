// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  static const String screenRoute='product_details_screen';
  final Product product;
  

  const DetailsScreen({super.key, required this.product});//this is the route to the details screen

  //const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBarDetails(context),
      body: DetailsScreenBody(product: product,),//the body is implemented in a separated sceeen
    );
  }

  AppBar AppBarDetails(BuildContext context) {
    return AppBar(
      title: Text(product.title),
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(left: 15),
          icon: const Icon(
           Icons.arrow_back,
           color: kPrimaryColor,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
       ),
    );
  }
}