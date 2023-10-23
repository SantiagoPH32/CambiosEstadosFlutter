import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('Establecer Usuario'),
                color: Colors.black26,
                onPressed: () {}),
            MaterialButton(
                child: Text('Cambiar Edad'),
                color: Colors.black26,
                onPressed: () {}),
            MaterialButton(
                child: Text('Añadir Profesion'),
                color: Colors.black26,
                onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.abc),
          onPressed: () {
            Navigator.pushNamed(context, 'pagina1');
          }),
    );
  }
}
