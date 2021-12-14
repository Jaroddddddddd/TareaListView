import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/characters_data.dart';
import 'package:cartoons_flutter/widgets/character_widget.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartoooooonery'),
      ),
      body: ListView(
        // TODO 1: Verifique la documentación oficial de ListView de Flutter.
        // Necesita pasar alguna propiedad a sus hijos.
        // Esta propiedad va a reemplazar el elemento null actual.
        // Si revisa el archivo characters_data.dart
        // encontrará que tiene acceso a una constante llamada "characters" de tipo "list of Character".
        // Usa aquí algún código funcional para convertir esa lista de datos en una lista de widgets que tienes
        // creado en TODO 0, revise el siguiente recurso: https://www.youtube.com/watch?v=R8rmfD9Y5-c
        // y tambien revisa el siguiente ejemplo: https://gitlab.com/aplicaciones-moviles-ii/flutter-ejercicio-5-listview-canciones.git
        // especialmente donde está la construcción del ListView.
        children: null,
      ),
    );
  }
}
