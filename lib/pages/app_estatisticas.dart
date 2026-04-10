import 'package:flutter/material.dart';
import '../widgets/app_topo.dart';
import '../widgets/app_navegacao.dart';
import '../widgets/menu/app_menu_hamburger.dart';

class Estatisticas extends StatefulWidget {
  const Estatisticas({super.key});

  @override
  State<Estatisticas> createState() => EstatisticasState();
}

class EstatisticasState extends State<Estatisticas> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppTopo(),
      drawer: AppMenuHamburger(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Estatísticas",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppNavegacao(),
    );
  }
}
