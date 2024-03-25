import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';

class colorDot extends StatelessWidget {
  const colorDot({
    super.key, required this.productColor, this.isSelected=false,
  });
  final Color productColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding/2.5),
      padding: EdgeInsets.all(3),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: productColor,
        ),
      ),
    );
  }
}