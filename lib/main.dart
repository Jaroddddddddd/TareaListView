
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/characters_data.dart';
import 'package:cartoons_flutter/widgets/character_widget.dart';

import 'model/character.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

void doSomething(Character characters) {
    // ignore: avoid_print
    print(characters.name);
    print(characters.age);
    print(characters.jobTitle);
    print(characters.stars);
    print(characters.image);


  }
  @override
  Widget build(BuildContext context) {
    var children2 = null;
    
    final characters = [
  Character(
    name: 'Albert Alemany',
    age: 28,
    image: 'images/albert.png',
    jobTitle: 'Flutter Developer',
    stars: 4,
  ),
  Character(
    name: 'Gerard Guasch',
    age: 21,
    image: 'images/gerard.png',
    jobTitle: 'Android Developer',
    stars: 3,
  ),
  Character(
    name: 'Ignasi Isern',
    age: 33,
    image: 'images/ignasi.png',
    jobTitle: 'iOS Developer',
    stars: 4,
  ),
  Character(
    name: 'Meritxell Maimó',
    age: 29,
    image: 'images/meritxell.png',
    jobTitle: 'React Native Developer',
    stars: 4,
  ),
  Character(
    name: 'Mònica Moragues',
    age: 24,
    image: 'images/monica.png',
    jobTitle: 'Web Developer',
    stars: 3,
  ),
  Character(
    name: 'Pol Pitarch',
    age: 19,
    image: 'images/pol.png',
    jobTitle: 'UI Designer',
    stars: 2,
  ),
  Character(
    name: 'Raquel Reixach',
    age: 35,
    image: 'images/raquel.png',
    jobTitle: 'Backend Developer',
    stars: 3,
  ),
  Character(
    name: 'Rebeca Roig',
    age: 31,
    image: 'images/rebeca.png',
    jobTitle: 'Project Manager',
    stars: 4,
  ),
  Character(
    name: 'Ricard Ricart',
    age: 22,
    image: 'images/ricard.png',
    jobTitle: 'QA Team Lead',
    stars: 4,
  ),
  Character(
    name: 'Sílvia Salom',
    age: 27,
    image: 'images/silvia.png',
    jobTitle: 'DevOps Team Lead',
    stars: 3,
  ),
    ];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartoooooonery'),
      ),
      body: ListView(
      children: characters

        
        .map((characters  ) => SongWidget(characters: characters, onDoubleTap: doSomething)).toList(),
        // TODO 1: Verifique la documentación oficial de ListView de Flutter.
        // Necesita pasar alguna propiedad a sus hijos.
        // Esta propiedad va a reemplazar el elemento null actual.
        // Si revisa el archivo characters_data.dart
        // encontrará que tiene acceso a una constante llamada "characters" de tipo "list of Character".
        // Usa aquí algún código funcional para convertir esa lista de datos en una lista de widgets que tienes
        // creado en TODO 0, revise el siguiente recurso: https://www.youtube.com/watch?v=R8rmfD9Y5-c
        // y tambien revisa el siguiente ejemplo: https://gitlab.com/aplicaciones-moviles-ii/flutter-ejercicio-5-listview-canciones.git
        // especialmente donde está la construcción del ListView.
      ),
    );
  }
}

class Character {
  final String name;
  final String jobTitle;
  final int age;
  final int stars;
  final String image;


  Character({required this.name, required this.jobTitle, required this.age, required this.stars, required this.image});
}

class SongWidget extends StatelessWidget {
  final Character characters;
  final Function onDoubleTap;

  const SongWidget({Key? key, required this.characters, required this.onDoubleTap})
      : super(key: key);



  // Read comments in order 1-2-3 please.
  @override
  Widget build(BuildContext context) {
    // 3 - Finally, as we want our widget to be able to respond to some gestures, we wrap
    // everything using a GestureDetector widget. In this cas we only use the double tap
    // gesture, but we could add more properties to detect more gestures using this same
    // GestureDetector, no need to add new widgets.
    return GestureDetector(
      onDoubleTap: () {
        onDoubleTap(characters);
      },
      // 2 - As we want some free space around texts, we wrap the Column widget with this
      // Padding widget. Its sole purpose is to add some padding around Column.
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // 1 - Column is actually "main" widget in this build() method. We want to show
        // two strings and use a Column for that. Nothing new here, nothing fancy.
        
        child: Container(
                padding: const EdgeInsets.all(20.0),
                height: 300,
                width: double.infinity,
                color: Color.fromARGB(255, 218, 217, 217),
          child: Column(
            
              children: [
              
               Center(child:Text(
                characters.name,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  
                  
                ),
                
              ),
              ),
            
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Center(child:Text(
                
                characters.stars.toString()+'      '+characters.jobTitle,
                style: TextStyle(
                  
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  
                ),
                
              ),
              ),
              ),
              
          //    child: Text(characters.name + "/n" + characters.stars.toString() + characters.jobTitle 
          //    + characters.image)
           
           
             Image.network(
               characters.image,
               scale: 4,
             )
          ],
          
              ),
           
            
              
          ),
        
        
      ),
    );
  }
}
