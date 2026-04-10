import 'package:flutter/material.dart';

class AppTopo extends StatelessWidget implements PreferredSizeWidget {
  const AppTopo({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF7A9544),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(Icons.menu, color: Color(0xffffffff)),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications, color: Color(0xffffffff)),
          onPressed: () {},
          padding: EdgeInsets.symmetric(horizontal: 10),
        )
      ],
    );
  }

  @override //se tiver o implements coloque esta função
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
