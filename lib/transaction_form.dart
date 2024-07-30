import 'package:flutter/material.dart';

class Transactionform extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  Transactionform({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      print(titleController.text);
                      print(valueController.text);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.purple),
                    child: Text('Nova Transação')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
