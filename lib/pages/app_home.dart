import 'dart:html';

import 'package:flutter/material.dart';
import '../widgets/app_topo.dart';
import '../widgets/app_navegacao.dart';
import '../widgets/menu/app_menu_hamburger.dart';
import '../widgets/cards/card_temperatura_umidade.dart';
import '../widgets/cards/card_irrigacao.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
      bottomNavigationBar: AppNavegacao(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double maxWidth;

            // Limita largura em telas grandes
            if (constraints.maxWidth > 900) {
              maxWidth = 900;
            } else {
              maxWidth = constraints.maxWidth;
            }

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Dados Atuais",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: CardTempHumi(
                              message: "56%",
                              tipo: "umidade",
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: CardTempHumi(
                              message: "23°C",
                              tipo: "teperatura",
                            ),
                          ),
                        ],
                      ),
                      CardIrrigacao(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
