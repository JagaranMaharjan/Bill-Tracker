import 'package:expensestracker/controller/productController.dart';
import 'package:flutter/material.dart';

class AddNewTransaction extends StatefulWidget {
  @override
  _AddNewTransactionState createState() => _AddNewTransactionState();
}

class _AddNewTransactionState extends State<AddNewTransaction> {
  ProductController productController = new ProductController();

  final controllerName = TextEditingController();
  final controllerPrice = TextEditingController();
  void submitProduct() {
    if (controllerName.text.isNotEmpty || controllerPrice.text.isNotEmpty) {
      String _productName1 = controllerName.text;
      double _price1 = double.parse(controllerPrice.text);
      print('prod name :' + _productName1);
      print('prod price:' + _price1.toString());
      //---add product
      productController.addNewTransactionToList(
          title: _productName1, price: _price1);
      Navigator.pop(context);
    } else {
      return;
    }
  }

  Widget txtField(
      {@required String title,
      @required TextEditingController controllerName}) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      child: TextField(
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "font1",
          fontSize: 16,
          letterSpacing: 1,
          color: Colors.blue,
        ),
        decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "font1",
            fontSize: 18,
            letterSpacing: 1,
            color: Colors.blue,
          ),
        ),
        controller: controllerName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        txtField(
            title: "Enter your product name", controllerName: controllerName),
        txtField(
          title: "Enter your product price",
          controllerName: controllerPrice,
        ),
        RaisedButton(
          colorBrightness: Brightness.dark,
          child: Text(
            "Add Product",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "font1",
              fontSize: 16,
              letterSpacing: 1,
              color: Colors.white,
            ),
          ),
          color: Colors.blue,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.elliptical(20, 20),
            ),
          ),
          hoverColor: Colors.orange,
          onPressed: () {
            submitProduct();
          },
        ),
      ],
    );
  }
}
