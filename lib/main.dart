import 'package:flutter/material.dart';

//depois de programar a tela
import 'Tela/tela_categorias.dart';
 
void main() => runApp(AppCardapio());
 
class AppCardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Schyler',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleSmall : const TextStyle (
            fontSize: 20,
            fontFamily: "Schyler"
          )
        )
      ),
      home: PaginaInicial(),
    );
  }
}
 
class PaginaInicial extends StatefulWidget {
  @override
  PaginaInicialState createState() => PaginaInicialState();
}
 
class PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio'),
      ),
      body: Center(
        child: Text('Corpo do meu APP'),
      ),
    );
    home: TelaCategorias();
  }
}
//home: TelaCategorias(),
//pegar a fonte schyler e colcoar no assets