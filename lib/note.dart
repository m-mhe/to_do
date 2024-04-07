import 'package:flutter/material.dart';
import 'package:to_do/home.dart';

class NoteTaker extends StatelessWidget {
  NoteTaker({super.key, required this.indextNumber});

  final int indextNumber;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.note_add),
        title: const Text("Note"),
      ),
      body: TextField(
        decoration: InputDecoration(hintText: "Type..", labelText: "Note"),
        controller: myController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) {
            return Home(indextN: indextNumber, valueNote: myController.text);
          }), (route) => true);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
