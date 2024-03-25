
import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';
import 'package:store_app/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.itemIndex, required this.product, required this.viewProduct,
  });
  final int itemIndex;
  final Product product;
  final VoidCallback viewProduct;//the onTap function to open the product details
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;//to get the size of the application or widget
    return Container(
      
      //color: Colors.lightGreen, // so we can see the main container
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      height: 186,
      child: InkWell(
        onTap: viewProduct,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 167,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black26
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
            child: 
            Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,),
              height: 160,
              width: 200,
              child: Image.asset(product.image,//the image from the database>>>>>>>>
              fit: BoxFit.cover,
              ),
            ),
            ),
            //Spacer(),
            Positioned(
              right: 0,
              bottom: 0,
              child: 
                SizedBox(
                  height: 137,
                  width: size.width-200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,//>>>>>>
                    children: [
                      //Spacer(),//makes an issue
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(product.title,//title from database>>>>>>>>>>
                        style:Theme.of(context).textTheme.bodyLarge ,
                        ),
                      ),
                      Spacer(),//makes an issue
                      Padding(
                        
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(product.subTitle,//subtitle from data base>>>>>>>>>>
                        style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Spacer(),//makes an issue
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal:30,
                            vertical: 7 
                          ),
                          decoration: BoxDecoration(
                            color:Color(0xFFfcca46),
                            borderRadius: BorderRadius.circular(25),
                           ),
                           child: Text('${product.price}\$'),//the price from the datbase
                           
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ],
          
        ),
      ),
    );
  }
}