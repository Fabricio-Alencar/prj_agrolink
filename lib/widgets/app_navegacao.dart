import 'package:flutter/material.dart';

class AppNavegacao extends StatefulWidget {
  const AppNavegacao({super.key});

  @override
  _AppNavegacaoState createState() => _AppNavegacaoState();
}

class _AppNavegacaoState extends State<AppNavegacao> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        if (index == 0) {
          // Estatisticas
          Navigator.pushNamed(context, '/estatisticas');
        } else if (index == 1) {
          // Home
          Navigator.pushNamed(context, '/');
        } else if (index == 2) {
          // Perfil
          Navigator.pushNamed(context, '/perfil');
        }
      },
      backgroundColor: Color(0xFF7A9544),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart), label: "Estatísticas"),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
      ],
    );
  }
}
