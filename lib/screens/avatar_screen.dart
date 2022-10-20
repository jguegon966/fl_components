
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fernando Alonso'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.amber[700],
              child: const Text('FL'),
            ),
          )
      ]),
      body: Center(
         child: Column(
          children: [
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 100, top: 360, bottom: 100, left: 100),
              child: FadeInImage(
                
                image: NetworkImage('https://fotografias.lasexta.com/clipping/cmsimages01/2022/10/07/3B62C78B-D0ED-416D-8F7E-6E6DCFCDBA4F/fernando-alonso_98.jpg?crop=3178,1788,x0,y763&width=1900&height=1069&optimize=low&format=webply'),
                placeholder: const AssetImage('assets/jar-loading.gif'),
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}