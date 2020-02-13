import 'package:expensestracker/controller/productController.dart';
import 'package:expensestracker/model/proudctDetails.dart';

import 'package:flutter/material.dart';

ProductController productController = ProductController();

class ListTransaction extends StatelessWidget {
  final List<ProductDetails> prods;
  ListTransaction({this.prods});

  Widget viewTransactionDetails({@required String text}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: "font2",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              width: 100,
              child: Center(
                child: viewTransactionDetails(
                  text: prods[index].productAmount.toString(),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    color: Colors.blue, width: 1, style: BorderStyle.solid),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                viewTransactionDetails(
                  text: prods[index].productName.toString(),
                ),
                viewTransactionDetails(
                  text: prods[index].dateTime.toString(),
                ),
              ],
            ),
          ],
        );
      },
      itemCount: prods.length,
    );
  }
}
/*
* Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          padding: EdgeInsets.all(5.0),
          width: 100,
          child: Center(
            child: viewTransactionDetails(
              text: "sad",
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
                color: Colors.blue, width: 1, style: BorderStyle.solid),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            viewTransactionDetails(
              text: "mad",
            ),
            viewTransactionDetails(
              text: "cat",
            ),
          ],
        ),
      ],
    );*/
