import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'card_planet.dart';




class planetas extends StatefulWidget {
  @override
  _PlanetasState createState() => _PlanetasState();
}
class _PlanetasState extends State<planetas> { 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
       //  home: names,
      ),
        home: Names(),
    );
  }
}  

class Names extends StatelessWidget {
 Names({Key? key}) :super(key: key);
  final data =[
    CardPlanetData(
      title: "matsuda",
      subtitle:"center en el primer sencillo de sakurazaka46",
      image:AssetImage("images/26_matsuda.jpg"),
      backgroundColor: const Color.fromARGB(255, 39, 82, 176),
      titleColor:Colors.black,
      subtitleColor:Colors.black,
      background: LottieBuilder.asset("animations/Animation - 1701909229109.json"),
    ),
    CardPlanetData(
      title: "Your name ",
      subtitle:"Pelicula estrenada en 2016, cuenta la historia de 2 jovenes estudientes de preparatoria, uno es un estudiante en tokio mientras que el otro es un"
      "esdtudiante de una zona ruaral y por causa de de un metiero que pasa cerca de la tierra misteriosamente intercambian de lugar de manera inexplicable",
      image:AssetImage("images/Your-Name-Wallpapers.jpg"),
      backgroundColor:Color.fromARGB(255, 2, 27, 56),
      titleColor:Color.fromARGB(255, 0, 0, 0),
      subtitleColor:const Color.fromARGB(255, 10, 10, 10),
      background: LottieBuilder.asset("animations/Animation - 1701924638204.json"),
       
    ),
    CardPlanetData(
      title: "Stains Gate ",
      subtitle:"Un estudiante de ultimo año de preparatorio que tiene un laboratorio casero donde pasa el tiempo iventando "
       "future gatgets con su amigo hacker crea por accidente el telefono microndas que es capas de mandar mensajes al pasado pero por alguna razon el es el unico que puede notar los cambios que ocurren devido a la convergencia de las lineas temporales",
      image:AssetImage("images/steins-gate-0-thumb.jpg"),
      backgroundColor:Color.fromARGB(255, 58, 54, 48),
      titleColor:Color.fromARGB(255, 0, 0, 0),
      subtitleColor:Color.fromARGB(255, 0, 0, 0),
      background: LottieBuilder.asset("animations/Animation - 1701916229222.json"),
     
    ),
    CardPlanetData(
      title: "Zakurazaka46",
      subtitle:"Zakurazaka46 es el nuevo nombre que tomo la banda japones Keyakizaka46 este cambio de nombre fue echo el 14 de octubre del"
      " 2020 desde su concierto llamado the last live"
      "donde tubieron su ultima presentacion como Keyakizaka46 grupo que nacio el 21 de agosto del 2015, en este concierto sorprendieron a sus fans con su debut como acto de cierre como Sakurazaka y debutaron con su primera cancion bodys ",
      image:AssetImage("images/QnAYD6QT_400x400.jpg"),
      backgroundColor:Color.fromARGB(255, 233, 219, 223),
      titleColor:const Color.fromARGB(255, 24, 22, 23),
      subtitleColor:const Color.fromARGB(255, 5, 5, 5),
      background: LottieBuilder.asset("animations/Animation - 1701909229109.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
   body: ConcentricPageView(
   colors: data.map((e) => e.backgroundColor).toList(),
   itemCount: data.length,
   itemBuilder: (int index){
    return CardPlanet(data:data [index]);
              },
          ),
       );
     }
}