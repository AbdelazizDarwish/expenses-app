// import 'package:flutter/material.dart';
// import 'package:uidesign/homepage.dart';
// import 'package:uidesign/model.dart';

// class AddExpense extends StatefulWidget {
//   const AddExpense({Key? key}) : super(key: key);

//   @override
//   State<AddExpense> createState() => _AddExpenseState();
// }

// //List<ExpenseList> expenseList = [];

// class _AddExpenseState extends State<AddExpense> {
//   // void addTaskAndAmount(String title, double amount) {
//   //   final expenses = ExpenseList(title: title, amount: amount);
//   //   setState(() {
//   //     // expenseList.insert(0, expenses);
//   //     expenseList.add(expenses);
//   //   });
//   // }

//   final titleController = TextEditingController();
//   final amountController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [
//         SizedBox(
//           height: 30,
//         ),
//         Expanded(
//             child: ListView(
//           children: [
//             Card(
//               elevation: 8,
//               shadowColor: Colors.green,
//               margin: EdgeInsets.all(20),
//               shape: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide(color: Colors.green, width: 1)),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: titleController,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'title',
//                       filled: true,
//                       fillColor: Colors.white,
//                       contentPadding: const EdgeInsets.only(
//                           left: 14.0, bottom: 6.0, top: 8.0),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.red),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Card(
//               elevation: 8,
//               shadowColor: Colors.green,
//               margin: EdgeInsets.all(20),
//               shape: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide(color: Colors.green, width: 1)),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: amountController,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: 'amount',
//                       filled: true,
//                       fillColor: Colors.white,
//                       contentPadding: const EdgeInsets.only(
//                           left: 14.0, bottom: 6.0, top: 8.0),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.red),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ))
//       ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // addTaskAndAmount(
//           //     titleController.text, double.parse(amountController.text));
//           // print(expenseList);
//           // Navigator.push(
//           // context,
//           // MaterialPageRoute(
//           // builder: (context) => HomePage(
//           // items: expenseList,
//           //  )),
//           // );
//         },
//       ),
//     );
//   }
// }
