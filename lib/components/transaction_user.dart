import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      data: DateTime.now()
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      data: DateTime.now()
    ),
    Transaction(
      id: 't3',
      title: 'Conta de Agua',
      value: 211.30,
      data: DateTime.now()
    ),
    Transaction(
      id: 't4',
      title: 'Conta de Celular',
      value: 41.30,
      data: DateTime.now()
    ),
    Transaction(
      id: 't5',
      title: 'Fatura do Cartão',
      value: 2011.30,
      data: DateTime.now()
    ),
    Transaction(
      id: 't6',
      title: 'Conta de Telefone',
      value: 81.30,
      data: DateTime.now()
    ),
  ];

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      data: DateTime.now()
    );

    setState(() {
      _transactions.add(newTransaction);
    });

  }






  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}