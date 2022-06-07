import 'package:flutter/material.dart';
import 'package:uidesign/model.dart';

class transaction extends ChangeNotifier {
  final List<ExpenseList> _items = [];

  List<ExpenseList> get getTransaction {
    return _items;
  }

  void add(ExpenseList item) {
    _items.add(item);
    notifyListeners();
  }
}

// class ListProvider extends ChangeNotifier {
//   List<String> list = [];
//   void addItem(String item) {
//     list.add(item);
//     notifyListeners(); 
//   }
// }
