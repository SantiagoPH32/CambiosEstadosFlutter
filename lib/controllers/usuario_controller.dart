import 'package:get/get.dart';
import 'package:singleton/models/usuario.dart';

class UsuarioController extends GetxController {
  var existeUsuario = false.obs;
  var usuario = Usuario().obs;

  get numerProfesiones {
    return usuario.value.profesiones.length;
  }

  void cargarUsuario(Usuario pUsuario) {
    this.existeUsuario.value = true;
    this.usuario.value = pUsuario;
  }

  void cambiarEdad(int edad) {
    this.usuario.update((val) {
      val!.edad = edad;
    });
  }

  void agragarProfesion(String profesion) {
    this.usuario.update((val) {
      val!.profesiones = [...val.profesiones, profesion];
    });
  }
}
