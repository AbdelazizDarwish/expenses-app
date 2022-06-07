import 'package:flutter/material.dart';

class ExpenseList {
  //List<dynamic> _list = [];
  String title;
  double amount;
  String category;
  bool addorsub;
  ExpenseList({
    required this.title,
    required this.amount,
    required this.category,
    required this.addorsub,
  });
}
