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
        note:
            "This is my first note. I am a boy. My name is Shaikh Mohd Raza Mohd Rafique. I am a third year computer engineering student.",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 2",
        note:
            "This is my second note. I am a boy. My name is Shaikh Mohd Raza Mohd Rafique. I am a third year computer engineering student.",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 3",
        note:
            "This is my third note. I am a boy. My name is Shaikh Mohd Raza Mohd Rafique. I am a third year computer engineering student.",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 4",
        note:
            "This is my fourth note. I am a boy. My name is Shaikh Mohd Raza Mohd Rafique. I am a third year computer engineering student.",
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
            Expanded(
              child: ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (context, index) => Card(
                        margin: const EdgeInsets.only(top: 20.0),
                        child: ListTile(
                          title: const Text("Note no 1"),
                          subtitle: const Text(
                            "THIS IS MY FIRST NOTE\ni am testing welcome to my app. Lorem lorem lorem lorem mohd raza",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () {},
                          minVerticalPadding: 10.0,
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
