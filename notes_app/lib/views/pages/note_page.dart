import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class NotePage extends StatelessWidget {
  NotePage({super.key, required this.note});
  // NotePage({Key? key,required this.note}) : super(key: key);
  final Note note;
  final titleController = TextEditingController();
  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleController.text = note.title!;
    noteController.text = note.note!;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print("Deleted successfully");
            },
            icon: const Icon(Icons.delete)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.grey,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
                // remove it later.
              },
              child: const Text("Save")),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              textCapitalization: TextCapitalization.sentences,
              style: Theme.of(context).textTheme.titleLarge,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
                hintStyle: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            TextField(
              controller: noteController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Note",
                hintStyle: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
