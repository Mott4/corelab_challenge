import 'package:flutter/material.dart';

import '../app_text_style.dart';

class NotFoundMessage extends StatelessWidget {
  final String? searchText;
  const NotFoundMessage({super.key, this.searchText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/not-found/not_found.png'),
          const SizedBox(height: 16),
          Text(
            searchText != null ? 'Resultado não encontrado' : 'Página não encontrada',
            style: AppTextStyle.notFoundTitle,
          ),
          const SizedBox(height: 8),
          Text(
            searchText != null
                ? 'Não encontramos nenhum resultado parecido com "$searchText".'
                : 'A página que você está tentando acessar não existe.',
            style: AppTextStyle.notFoundSubtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
