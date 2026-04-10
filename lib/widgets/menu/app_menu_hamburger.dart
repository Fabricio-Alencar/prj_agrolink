import 'package:flutter/material.dart';

class AppMenuHamburger extends StatelessWidget {
  const AppMenuHamburger({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 65,
              child: const DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF7A9544)),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pushNamed(context, '/configuracoes');
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pushNamed(context, '/perfil');
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Nova Pagina'),
              onTap: () {
                Navigator.pushNamed(context, '/nova');
              },
            ),
          ],
        ),
      ),
    );
  }
}
