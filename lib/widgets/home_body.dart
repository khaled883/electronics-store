import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';
// ignore: unused_import
import 'package:store_app/models/product.dart';
import 'package:store_app/screens/product_details_screen.dart';
import 'package:store_app/widgets/product_card.dart';

class HomeBody extends StatelessWidget {

  

  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      //bottom: false,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(//Expanded cannot be used inside a Stack.You should use Expanded only within a Column, Row or Flex
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount:products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    viewProduct: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context)=>DetailsScreen(product: products[index],)
                        ),
                      );
                      //Navigator.pushNamed(context,DetailsScreen.screenRoute);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

