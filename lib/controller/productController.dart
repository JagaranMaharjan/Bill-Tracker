import 'package:expensestracker/model/proudctDetails.dart';
import 'package:expensestracker/widgets/showLatestTransaction.dart';
import 'package:flutter/cupertino.dart';

ListTransaction listTransaction = new ListTransaction();

class ProductController {
  String title;
  final controllerName = TextEditingController().toString();

  void addNewTransactionToList(
      {@required String title, @required double price}) {
    final addToList = ProductDetails(
      productName: title,
      productAmount: price,
      dateTime: DateTime.now(),
    );
    prod.add(addToList);
    ListTransaction(
      prods: prod,
    );
    displayList();
  }

  final List<ProductDetails> prod = [
    /*ProductDetails(
        productName: "watch", productAmount: 1000.0, dateTime: DateTime.now())*/
  ];

  void displayList() {
    for (var name in prod) {
      print(name);
    }
  }
}
