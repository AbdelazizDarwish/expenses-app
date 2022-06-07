import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:uidesign/addexpense.dart';
import 'package:uidesign/model.dart';
import 'package:uidesign/providers/provider_transaction.dart';

class HomePage extends StatefulWidget {
  //ExpenseList items;

  HomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   _formkey = GlobalKey();
  //   final  controller = TextEditingController();
  //   final taskItems = Provider.of<ListProvider>(context, listen: false);
  // }

  // @override
  // void disopose() {
  //   controller.dispose();
  // }

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final categoryController = TextEditingController();
  final dateTimeController = TextEditingController();
  final notesController = TextEditingController();
  bool income = true;
  bool addsub = false;

  void showCustomDialog(BuildContext context) async {
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return StatefulBuilder(builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // ignore: unnecessary_new
                new Container(
                  padding: EdgeInsets.all(20),
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(1),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: Scaffold(
                    resizeToAvoidBottomInset: false,
                    backgroundColor: Colors.transparent,
                    body: Column(
                      children: [
                        const Divider(
                          indent: 150,
                          endIndent: 150,
                          color: Colors.grey,
                          thickness: 1.5,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  income = !income;
                                  if (income == true) {
                                    addsub = true;
                                    print('minus');
                                  }
                                });
                              },
                              child: income
                                  ? Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Expense',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    )
                                  : Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Expense',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                    ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  income = !income;
                                  if (income == false) {
                                    addsub = false;
                                    print('add');
                                  }
                                });
                              },
                              child: income
                                  ? Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Income',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                    )
                                  : Container(
                                      height: 40,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Income',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.attach_money_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Enter Title",
                              fillColor: Colors.white70),
                          controller: titleController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.attach_money_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Enter Amount",
                              fillColor: Colors.white70),
                          controller: amountController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.list_alt_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Category",
                              fillColor: Colors.white70),
                          controller: categoryController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_today_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Date",
                              fillColor: Colors.white70),
                          controller: dateTimeController,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.note_add_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Notes",
                              fillColor: Colors.white70),
                          controller: notesController,
                        ),
                        TextButton(
                            onPressed: () {
                              print(notesController.text);
                              addTaskAndAmount(

                                  // titleController.text,
                                  // double.parse(amountController.text),
                                  // categoryController.text),
                                  titleController.text,
                                  double.parse(amountController.text),
                                  categoryController.text,
                                  addsub);

                              Navigator.pop(context);
                            },
                            child: Text('data'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(0, 1), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(0, 1), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

  List<ExpenseList> expenseList = [];
  void addTaskAndAmount(
      String title, double amount, String category, bool addorsub) {
    final expenses = ExpenseList(
        title: title, amount: amount, category: category, addorsub: addsub);
    setState(() {
      // expenseList.insert(0, expenses);
      expenseList.add(expenses);
    });
  }

  void deleteExpenseList(int index) {
    setState(() {
      expenseList.removeAt(index);
    });
  }

  //List<ExpenseList>? items;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text('Hola!'),
                subtitle: const Text(
                  'Abdelaziz',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.notifications_active,
                  color: Colors.blue[200],
                ),
              ),
              CarouselSlider.builder(
                itemCount: 1,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  //decoration: BoxDecoration(color: Colors.amber),
                  child: Stack(
                    children: [
                      Image.asset('lib/images/download.png'),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Abdelaziz Nagy',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Center(
                              child: Text(
                                '         1234 5678 9102 3212',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Credit Card',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  '3000 £',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                options: CarouselOptions(
                  //height: 300.0,
                  enableInfiniteScroll: false,
                ),
              ),
              Expanded(
                child: ListView(
                  //shrinkWrap: false,
                  //scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(
                            indent: 150,
                            endIndent: 150,
                            color: Colors.grey,
                            thickness: 1.5,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Transactions',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'See All',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: expenseList.length < 5
                                    ? expenseList.length
                                    : 5,
                                itemBuilder: (context, int index) {
                                  return GestureDetector(
                                    onLongPress: () => deleteExpenseList(index),
                                    child: Card(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              expenseList[index].title,
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            // Text(
                                            //   '${expenseList[index].amount}',
                                            //   style: TextStyle(fontSize: 20),
                                            // ),
                                            expenseList[index].addorsub
                                                ? Text(
                                                    '- ${expenseList[index].amount}',
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  )
                                                : Text(
                                                    '+ ${expenseList[index].amount}',
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                          ],
                                        ),
                                        Text(
                                          expenseList[index].category,
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    )),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => showCustomDialog(context)),
      ),
    );
  }
}
