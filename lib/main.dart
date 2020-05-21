
import 'package:flutter/material.dart';


main() => runApp(ExpensesApp());




class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        children: [
          Card(
            child: Text('Gráfico'),
          ),
          Card(
            child: Text('Versão Inicial'),
            )
        ],
      )
    );
  }
}