import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  TextEditingController titleController;
  TextEditingController valueController;

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Título'
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)'
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Nova Transação'),
                        textColor: Colors.purple,
                        onPressed: (){
                          print(titleController);
                          print(valueController);
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}