import 'package:flutter/material.dart';
// ignore: camel_case_types
class CardPlanetData{
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final double imageSize;
  final Widget? background;
  const CardPlanetData({
    required this.title,
     required this.subtitle,
      required this.image,
       required this.backgroundColor,
        required this.titleColor,
         required this.subtitleColor,
         this.imageSize = 0.0, // Tamaño predeterminado de la imagen
         this.background,
  });
}

class CardPlanet extends StatelessWidget {
  const CardPlanet ({super.key, required this.data});

  final CardPlanetData data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        if(data.background != null) data.background!,
      Padding(
        padding:const EdgeInsets.symmetric(
        horizontal: 20,
        vertical:40, 
        ),
        child: Column(
        children: [
         const Spacer( flex: 4,),
         Flexible(
          flex: 20,
          child: Image(image:data.image),),
          Spacer(),
          Text(
            data.title.toUpperCase(),
            style: TextStyle(
              color: data.titleColor,
              fontSize:20,
              fontWeight:FontWeight.bold,
              letterSpacing: 1,
            ),
            maxLines: 1,
          ),const Spacer( flex: 1,),
          Text(data.subtitle,
          style: TextStyle(
            color: data.subtitleColor,
            fontSize:10,
          ),
          textAlign: TextAlign.center,
          maxLines: 7,
          ),
          const Spacer( flex: 10,),
        ],
      ),
      ),
      ],
    );
  }
}