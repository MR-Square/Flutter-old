import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final titleController = TextEditingController();
  final noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.grey,
        actions: [
          TextButton(
              onPressed: () {
                var newNote = Note(
                    title: titleController.text,
                    note: noteController.text,
                    updatedAt: DateTime.now());
                Navigator.pop(context,newNote);
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
