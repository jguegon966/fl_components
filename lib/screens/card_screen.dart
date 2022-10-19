import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Tarjeta de Widgets'),
      ),

      body: ListView(
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         children: const [

          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2()

         ],
      ),
    );
  }
}

