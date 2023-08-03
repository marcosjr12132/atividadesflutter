import 'package:flutter/material.dart';
import './categorias.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CategoriaListScreen(),
    );
  }
}

class CategoriaListScreen extends StatelessWidget {
  final List<Categoria> categorias = mockCategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categorias')),
      body: ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          Categoria categoria = categorias[index];
          return ListTile(
            leading: CircleAvatar(backgroundColor: categoria.color),
            title: Text(categoria.titulo),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}
