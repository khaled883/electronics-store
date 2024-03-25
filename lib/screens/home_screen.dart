

import 'package:flutter/material.dart';
import 'package:store_app/app_constants.dart';
import 'package:store_app/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {

static const String screenRoute='home_screen';//the route to home screen>>>>>>

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF219EBC),
      appBar: homeAppBar(),
      body: const HomeBody(),//the body is implemented in a separated screen,
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor:Color(0xFF219EBC) ,
      elevation: 0,
      title: const Text('Welcome to Smart Home store',
      style: TextStyle(color: Colors.white,fontSize: 20),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.menu),
          ),
        ],
    );
  }
}