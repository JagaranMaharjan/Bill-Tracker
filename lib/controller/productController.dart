import 'package:expensestracker/model/proudctDetails.dart';
import 'package:flutter/cupertino.dart';

class ProductController {
  void addNewTransactionToList(
      {@required String title, @required double price}) {
    final addToList = ProductDetails(
      productName: title,
      productAmount: price,
      dateTime: DateTime.now(),
    );
    prod.add(addToList);
  }

  final List<ProductDetails> prod = [];
}
