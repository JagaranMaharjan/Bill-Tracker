import 'package:expensestracker/widgets/newTransactionWidgets.dart';
import 'package:expensestracker/widgets/showLatestTransaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesTracker());

class ExpensesTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses Tracker",
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        brightness: Brightness.dark,
        titleSpacing: 25,
        title: Text(
          "Expenses Tracker",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "font1",
            fontSize: 23,
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.0),
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.elliptical(5, 5),
              ),
              side: BorderSide(
                  color: Colors.blue, width: 1, style: BorderStyle.solid),
            ),
            child: AddNewTransaction(),
          ),
          SizedBox(
            width: 20,
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(5.0),
              width: double.infinity,
              child: ListTransaction(), //display transaction list
            ),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                  color: Colors.blue, style: BorderStyle.solid, width: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
