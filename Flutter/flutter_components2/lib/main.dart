import 'package:flutter/material.dart';
import 'package:flutter_components2/screens/screens.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const ListView2Screen(),
      initialRoute: 'home', // ? Se declara cual es la ruta inicial de la aplicacion
      routes: { // ? Se inicia el ruteo de las paginas
        'home' : (context) => const HomreScreen(),
        'listview1' : (BuildContext context) => const ListView1Screen(),
        'listview2' : (BuildContext context) => const ListView2Screen(),
        'alertscreen' : (context) => const AlertScreen(),
        'cardscreen' : (context) => const CardScreen()
      }, // routes
      onGenerateRoute: (settings) { //? Se utiliza cuando se trabaja con rutas dinamicas que se van creando cuando se utiliza la aplicacion
        print(settings);

        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}
