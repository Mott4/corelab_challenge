import 'package:corelab_challenge/modules/shared/ui/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotFoundTitle extends StatelessWidget {
  final String? searchText;

  const NotFoundTitle({super.key, this.searchText});

  @override
  Widget build(BuildContext context) {
    final title = searchText != null ? 'Resultado não encontrado' : 'Página não encontrada';
    return Text(
      title,
      style: AppTextStyle.notFoundTitle,
      textAlign: TextAlign.center,
    );
  }
}

class NotFoundSubtitle extends StatelessWidget {
  final String? searchText;

  const NotFoundSubtitle({super.key, this.searchText});

  @override
  Widget build(BuildContext context) {
    final subtitle =
        searchText != null ? 'Não encontramos nenhum resultado parecido com "$searchText".' : 'A página que você está tentando acessar não existe.';
    return Text(
      subtitle,
      style: AppTextStyle.notFoundSubtitle,
      textAlign: TextAlign.center,
    );
  }
}

class NotFoundMessage extends StatelessWidget {
  final String? searchText;
  final String svgPath;
  final double svgHeight;
  final double svgWidth;

  const NotFoundMessage({
    super.key,
    this.searchText,
    this.svgPath = 'assets/not-found/not_found.svg',
    this.svgHeight = 200.0,
    this.svgWidth = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            height: svgHeight,
            width: svgWidth,
            fit: BoxFit.contain,
            semanticsLabel: searchText != null ? 'Nenhum resultado encontrado' : 'Página não encontrada',
          ),
          const SizedBox(height: 16),
          NotFoundTitle(searchText: searchText),
          const SizedBox(height: 8),
          NotFoundSubtitle(searchText: searchText),
        ],
      ),
    );
  }
}
