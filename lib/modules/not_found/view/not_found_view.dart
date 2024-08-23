import 'package:flutter/material.dart';

/* Módulo Coringa ==============================================================
  Rota que será chamada sempre que passar uma rota que não existe
    - Não lança um erro, mas joga para uma tela que informa ao usuário sobre um 
    erro interno. 
 */

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
