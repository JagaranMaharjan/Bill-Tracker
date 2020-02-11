import 'package:expensestracker/controller/productController.dart';
import 'package:flutter/material.dart';

ProductController productController = new ProductController();
final _controllerName = TextEditingController().text.toString();

class AddNewProduct extends StatefulWidget {
  @override
  _AddNewProductState createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  String _title;

  void submitProduct() {
    if (_title == "productName" && _controllerName.isEmpty) {
      String _productName1 = _controllerName;
      if (_title == "productPrice" && _controllerName.isEmpty) {
        double _price1 = double.parse(_controllerName);
        //---add product
        productController.addNewTransactionToList(
            title: _productName1, price: _price1);
        Navigator.pop(context);
      } else {
        return;
      }
    } else {
      return;
    }
  }

  Widget txtField({@required title, @required controllerName}) {
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
            title: "Enter your product name", controllerName: "productName"),
        txtField(
            title: "Enter your product price", controllerName: "productPrice"),
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
