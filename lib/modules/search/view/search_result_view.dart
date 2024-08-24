import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView({super.key});

  @override
  State<SearchResultView> createState() => _SearchResultViewState();
}

class _SearchResultViewState extends State<SearchResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ],
        title: Container(
          height: 44,
          decoration: const BoxDecoration(color: AppColors.backgroundColor, borderRadius: BorderRadius.all(Radius.circular(8))),
          // child: TextField(
          //   showCursor: false,
          //   onChanged: (value) {},
          //   decoration: const InputDecoration(
          //     hintText: 'Buscar',
          //     hintStyle: TextStyle(fontFamily: 'DM-Sans', color: AppColors.greyColor),
          //     suffixIcon: Icon(Icons.search, color: AppColors.appBarColor, size: 24),
          //     border: InputBorder.none,
          //     contentPadding: EdgeInsets.symmetric(vertical: 10),
          //   ),
          // ),
        ),
      ),
    );
  }
}
