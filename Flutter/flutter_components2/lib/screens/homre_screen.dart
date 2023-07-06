import 'package:flutter/material.dart';
import 'package:flutter_components2/screens/screens.dart';

class HomreScreen extends StatelessWidget {
  
  const HomreScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: 
      ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: const Text('Nombre de la ruta'),
          leading: const Icon(Icons.account_balance_sharp),
          onTap: () {
            
           // final route = MaterialPageRoute(builder: (context) => const ListView1Screen()); // ? Se crea la ruta a la cual va dirigiri cuando se presione el boton 

           // Navigator.push(context, route); //? Context = Funciona como una memoria par asaber como esta formada la aplicacion hasta ese punto 

          Navigator.pushNamed(context, 'cardscreen2');  // ? Es una mejor manera de navegar, porque se pueden utilizar las rutas ya creadas en el main y se pueden mandar argumentos

          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 100
        )
    );
  }
}