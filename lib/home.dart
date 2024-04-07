import 'package:flutter/material.dart';
import 'package:to_do/note.dart';

class Home extends StatefulWidget {
  const Home({super.key, this.indextN, this.valueNote});

  final int? indextN;
  final String? valueNote;

  @override
  State<Home> createState() => _HomeState(indextN, valueNote);
}

class _HomeState extends State<Home> {
  _HomeState([this.indextN, this.valueNote]);

  int? indextN;
  String? valueNote;

  List<String> note = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    note.insert((indextN ?? 0), (valueNote ?? "Tap here to write"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.note_add),
          title: const Text(
            "TO DO",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  note.removeAt(0);
                });
              },
              child: const Icon(Icons.delete),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  note.add("Tap here to write ");
                });
              },
              child: const Icon(Icons.add_box),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: note.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NoteTaker(indextNumber: i);
                      }));
                    },
                    child: Text("${i + 1}. ${note[i]}")),
              );
            }));
  }
}
