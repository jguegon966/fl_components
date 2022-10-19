import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children:  [

        const FadeInImage(
          image: NetworkImage('https://pbs.twimg.com/media/EcZhMCtWsAELBKw?format=jpg&name=4096x4096'), 
          placeholder: AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),

        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: const Text('El mejor corredor de F1 del mundo'),
        )

      ],
      )
    );
  }
}