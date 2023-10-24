import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:singleton/pages/pagina1_page.dart';
import 'package:singleton/pages/pagina2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': (_) => Pagina1Page(),
        'pagina2': (_) => Pagina2Page()
      },
    );
  }
}
