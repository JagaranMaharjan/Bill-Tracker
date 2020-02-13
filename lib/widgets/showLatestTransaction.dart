import 'package:expensestracker/controller/productController.dart';

import 'package:flutter/material.dart';

class ShowTransaction extends StatefulWidget {
  @override
  _ShowTransactionState createState() => _ShowTransactionState();
}

ProductController productController = ProductController();

class _ShowTransactionState extends State<ShowTransaction> {
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
      itemCount: productController.prod.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              width: 100,
              child: Center(
                child: viewTransactionDetails(
                  text: productController.prod[index].productAmount.toString(),
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
                  text: productController.prod[index].productName.toString(),
                ),
                viewTransactionDetails(
                  text: productController.prod[index].dateTime.toString(),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
