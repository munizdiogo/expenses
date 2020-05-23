import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  
  final Transaction tr;
  final void Function(String p1) onRemove;

  const TransactionItem({
    Key key,
    @required this.tr,
    @required this.onRemove,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: FittedBox(
                child: Text('R\$${tr.value}'),
              ),
            ),
          ),
          title: Text(
            tr.title,
            style: Theme.of(context).textTheme.headline6,
          ),
          subtitle: Text(DateFormat('d MMM y').format(tr.data)),
          trailing: MediaQuery.of(context).size.width > 450
              ? FlatButton.icon(
                  icon: const Icon(Icons.delete),
                  textColor: Theme.of(context).errorColor,
                  label: const Text('Deletar'),
                  onPressed: () => onRemove(tr.id),
                )
              : IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).errorColor,
                  ),
                  onPressed: () => onRemove(tr.id),
                ),
        ));
  }
}