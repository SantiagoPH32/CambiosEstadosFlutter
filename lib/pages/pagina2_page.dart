import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:singleton/controllers/usuario_controller.dart';
import 'package:singleton/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.find<UsuarioController>();
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
                onPressed: () {
                  usuarioCtrl.cargarUsuario(Usuario(nombre: 'Juan', edad: 12));
                  Get.snackbar(
                      'Usuario Establecido', 'Juan es el nombre del usuario',
                      backgroundColor: Colors.white,
                      boxShadows: [
                        BoxShadow(color: Colors.black, blurRadius: 10)
                      ]);
                }),
            MaterialButton(
                child: Text('Cambiar Edad'),
                color: Colors.black26,
                onPressed: () {
                  usuarioCtrl.cambiarEdad(78172);
                }),
            MaterialButton(
                child: Text('Añadir Profesion'),
                color: Colors.black26,
                onPressed: () {
                  usuarioCtrl.agragarProfesion(
                      'Profesion #${usuarioCtrl.numerProfesiones + 1}');
                }),
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
