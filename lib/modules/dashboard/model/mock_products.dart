import 'product_model.dart';

final List<ProductModel> mockProducts = [
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/3ded/87b5/07c8c009afd033ee12f5c860c659db64?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QDa~haswQgAEKGGqUqk5qrnLC0LKcyIgB7EMoQGxiTHw~-KsrDhXrEOkva8lf7wx65tXu1Cn4P8o42EmmA6EDva4SyvXnLBKW6cPUQuqx9RIYJus1ysrNlV7VpGUIXLjmp9OaAEA5jyAMM5nYjucc-iWWNeMXousjB8ggrFa3PDRrN7Uc~Jdwc-CJ5B8xfqUTg~DS2Qa4Rlg3HZxcxUSoorlTYFUlEBbLviLX8pHX~HhSToCS4vbLIzvgo76CkXVWjl5MAtVpOczxbn4-f2BnJHYsXbkwJLlRA8-A~~PNu7bFAtk64MlrHsjLH~79XphAr9mtP1DlWtZwEGhaTIQaQ__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 290.00,
    oldPrice: 300.00,
    discount: 5,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now(),
  ),
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/d56c/2671/cf797f31fdd77ef19dbe24818374720e?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qwz5sLfaI1LDCPR-JWcN6P5Kdj71Z82ecgEDUgOXVJtsrN0ytviP3gCVGMhe95uaFY2ebdVRlnnrvD5uHq4ZnGCgscy2gi-KMvaBR64xw7uUJDRzpy7Tp-74k-1eiAY8I2KYJ7wWz4TQKBupPdmcAbALFwH80TDhKlzCLg~3Zurvn2OqznjasWimEZBejzwCi4ExBc4Gdy3zTCUte8q-Xw7tMRjc1LxyvCTMEKmLAiYk5r6fuSfSz3eq8fCCntfcV1z4JTXOPCsB6vIEQvyB4FKMx2-knpfzvEDM9NymAuIE46UNvQaZ1AO61gJLI-Q2XgIKqQwSNF4YsmS20J5Sew__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 29.90,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/d56c/2671/cf797f31fdd77ef19dbe24818374720e?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qwz5sLfaI1LDCPR-JWcN6P5Kdj71Z82ecgEDUgOXVJtsrN0ytviP3gCVGMhe95uaFY2ebdVRlnnrvD5uHq4ZnGCgscy2gi-KMvaBR64xw7uUJDRzpy7Tp-74k-1eiAY8I2KYJ7wWz4TQKBupPdmcAbALFwH80TDhKlzCLg~3Zurvn2OqznjasWimEZBejzwCi4ExBc4Gdy3zTCUte8q-Xw7tMRjc1LxyvCTMEKmLAiYk5r6fuSfSz3eq8fCCntfcV1z4JTXOPCsB6vIEQvyB4FKMx2-knpfzvEDM9NymAuIE46UNvQaZ1AO61gJLI-Q2XgIKqQwSNF4YsmS20J5Sew__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 264.00,
    oldPrice: 1320.00,
    discount: 20,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now(),
  ),
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/d56c/2671/cf797f31fdd77ef19dbe24818374720e?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qwz5sLfaI1LDCPR-JWcN6P5Kdj71Z82ecgEDUgOXVJtsrN0ytviP3gCVGMhe95uaFY2ebdVRlnnrvD5uHq4ZnGCgscy2gi-KMvaBR64xw7uUJDRzpy7Tp-74k-1eiAY8I2KYJ7wWz4TQKBupPdmcAbALFwH80TDhKlzCLg~3Zurvn2OqznjasWimEZBejzwCi4ExBc4Gdy3zTCUte8q-Xw7tMRjc1LxyvCTMEKmLAiYk5r6fuSfSz3eq8fCCntfcV1z4JTXOPCsB6vIEQvyB4FKMx2-knpfzvEDM9NymAuIE46UNvQaZ1AO61gJLI-Q2XgIKqQwSNF4YsmS20J5Sew__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 29.90,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/d56c/2671/cf797f31fdd77ef19dbe24818374720e?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qwz5sLfaI1LDCPR-JWcN6P5Kdj71Z82ecgEDUgOXVJtsrN0ytviP3gCVGMhe95uaFY2ebdVRlnnrvD5uHq4ZnGCgscy2gi-KMvaBR64xw7uUJDRzpy7Tp-74k-1eiAY8I2KYJ7wWz4TQKBupPdmcAbALFwH80TDhKlzCLg~3Zurvn2OqznjasWimEZBejzwCi4ExBc4Gdy3zTCUte8q-Xw7tMRjc1LxyvCTMEKmLAiYk5r6fuSfSz3eq8fCCntfcV1z4JTXOPCsB6vIEQvyB4FKMx2-knpfzvEDM9NymAuIE46UNvQaZ1AO61gJLI-Q2XgIKqQwSNF4YsmS20J5Sew__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 290.00,
    oldPrice: 300.00,
    discount: 5,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
  ),
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/3ded/87b5/07c8c009afd033ee12f5c860c659db64?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QDa~haswQgAEKGGqUqk5qrnLC0LKcyIgB7EMoQGxiTHw~-KsrDhXrEOkva8lf7wx65tXu1Cn4P8o42EmmA6EDva4SyvXnLBKW6cPUQuqx9RIYJus1ysrNlV7VpGUIXLjmp9OaAEA5jyAMM5nYjucc-iWWNeMXousjB8ggrFa3PDRrN7Uc~Jdwc-CJ5B8xfqUTg~DS2Qa4Rlg3HZxcxUSoorlTYFUlEBbLviLX8pHX~HhSToCS4vbLIzvgo76CkXVWjl5MAtVpOczxbn4-f2BnJHYsXbkwJLlRA8-A~~PNu7bFAtk64MlrHsjLH~79XphAr9mtP1DlWtZwEGhaTIQaQ__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 29.90,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
  ),
  ProductModel(
    imagePath:
        'https://s3-alpha-sig.figma.com/img/d56c/2671/cf797f31fdd77ef19dbe24818374720e?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Qwz5sLfaI1LDCPR-JWcN6P5Kdj71Z82ecgEDUgOXVJtsrN0ytviP3gCVGMhe95uaFY2ebdVRlnnrvD5uHq4ZnGCgscy2gi-KMvaBR64xw7uUJDRzpy7Tp-74k-1eiAY8I2KYJ7wWz4TQKBupPdmcAbALFwH80TDhKlzCLg~3Zurvn2OqznjasWimEZBejzwCi4ExBc4Gdy3zTCUte8q-Xw7tMRjc1LxyvCTMEKmLAiYk5r6fuSfSz3eq8fCCntfcV1z4JTXOPCsB6vIEQvyB4FKMx2-knpfzvEDM9NymAuIE46UNvQaZ1AO61gJLI-Q2XgIKqQwSNF4YsmS20J5Sew__',
    title: 'Condicionador Ácido Fosfórico 37% - AllPrime',
    price: 290.00,
    oldPrice: 300.00,
    discount: 5,
    parcelsInfo: 'Em até 12x de R\$ 249,00',
    productState: 'Novo',
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
  ),
];
