// pensando na regra de negocio, nesse modulo teremos
// titulo do item - Condicionador Ácido Fosfórico 37% - AllPrime
// valor do item - R$29,90
// descricao do pagamento do item - Em até 12x de R$ 249,00
// estado do item - ex, novo, usado, seminovo
// imagem do item

// para os itens com promocao
// porcentagem do desconto
// valor antigo
// valor novo

// todos os itens estarão numa categoria

class ProductModel {
  final String imagePath;
  final String title;
  final double price;
  final double? oldPrice;
  final int? promotionPercentage;
  final String itemDescription;
  final String itemState;
  final String itemCategory;

  const ProductModel({
    required this.imagePath,
    required this.title,
    required this.price,
    this.oldPrice,
    this.promotionPercentage,
    required this.itemDescription,
    required this.itemState,
    required this.itemCategory,
  });
}
