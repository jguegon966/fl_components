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
          CustomCardType2(imageUrl: 'https://img2.rtve.es/im/4694831', nombre: 'Nano y sus amigos',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://www.minutod.com/u/fotografias/m/2022/6/6/f500x333-59976_83779_174.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://img2.rtve.es/i/?w=1200&i=https://img2.rtve.es/imagenes/alonso-campeon-mundo/1534265668463.jpg', nombre: 'Nano bebiendo champan como un campeon',),
          SizedBox(height: 100,),

         ],
      ),
    );
  }
}

