import 'package:corelab_challenge/modules/dashboard/model/product_model.dart';
import 'package:flutter/material.dart';

class DashboardController extends ChangeNotifier {
  ProductModel? productModel;

  final List<ProductModel> items = [
    const ProductModel(
      imagePath: 'assets/not-found/not_found.png',
      title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
      price: 29.90,
      oldPrice: 300.00,
      promotionPercentage: 5,
      itemDescription: 'Em até 12x de R\$ 249,00',
      itemState: 'Novo',
      itemCategory: '',
    ),
    const ProductModel(
      imagePath: 'assets/not-found/not_found.png',
      title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
      price: 29.90,
      itemDescription: 'Em até 12x de R\$ 249,00',
      itemState: 'Novo',
      itemCategory: '',
    ),
    const ProductModel(
      imagePath: 'assets/not-found/not_found.png',
      title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
      price: 264.00,
      oldPrice: 1320.00,
      promotionPercentage: 20,
      itemDescription: 'Em até 12x de R\$ 249,00',
      itemState: 'Novo',
      itemCategory: '',
    ),
    const ProductModel(
      imagePath: 'assets/not-found/not_found.png',
      title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
      price: 29.90,
      itemDescription: 'Em até 12x de R\$ 249,00',
      itemState: 'Novo',
      itemCategory: '',
    ),
  ];
}
