import 'package:flutter/material.dart';

class FotoArea extends StatelessWidget {
  final String foto_internet;

  const FotoArea({
    super.key,
    required this.foto_internet,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // Altura do header
      child: Stack(
        clipBehavior: Clip.none, // Permite elementos saírem do limite
        children: [
          // Fundo verde (primeira camada)
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF7A9544),
            ),
          ),

          // Card branco (segunda camada, topo arredondado)
          Positioned(
            top: 90, // Distância do topo
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
            ),
          ),

          // Avatar (terceira camada)
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 85, // Tamanho da borda branca
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 70, // Tamanho da foto
                  backgroundImage: NetworkImage(
                    foto_internet,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
