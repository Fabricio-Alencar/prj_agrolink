import 'package:flutter/material.dart';
import 'pages/app_home.dart';
import 'pages/app_perfil.dart';
import 'pages/app_estatisticas.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo StateFulWidget",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/perfil': (context) => const Perfil(),
        '/estatisticas': (context) => const Estatisticas(),
      },
    );
  }
}
