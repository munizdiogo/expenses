import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;
  final double total = 0;

  ChartBar({
    @required this.label,
    @required this.value,
    @required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Text('${value.toStringAsFixed(2)}'),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Color.fromRGBO(220, 220, 200, 1),
                    borderRadius: BorderRadius.circular(5)),
              ),
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                      color: DateFormat.E().format(DateTime.now())[0] == label
                          ? Theme.of(context).primaryColorDark
                          : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                ),
              )
            ],
          ),
        ),
        // Container(
        //   margin: EdgeInsets.all(8.0),
        //   padding: EdgeInsets.all(8.0),
        //   width: 20,
        //   height: (100 * value) / total ,
        //   color: Theme.of(context).primaryColor,
        //   child: Text('${value / 100}',
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 6
        //   ),
        //   ),
        // ),
        Text(
          '$label',
          style: TextStyle(
              color: DateFormat.E().format(DateTime.now())[0] == label
                  ? Theme.of(context).primaryColorDark
                  : Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}
