import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final searchFocusNode = FocusNode();
  List<Note> notes = [
    Note(
        title: "Note 1",
        note: "This is my first note",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 2",
        note: "This is my second note",
        updatedAt: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notes",
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: searchController,
                focusNode: searchFocusNode,
                onChanged: (value) {
                  // print(value);
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: "search notes",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: searchController.text.isNotEmpty
                      ? ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: IconButton(
                              onPressed: () {
                                searchController.clear();
                                searchFocusNode.unfocus();
                                setState(() {});
                              },
                              icon: const Icon(Icons.close),
                            ),
                          ),
                        )
                      : null,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
