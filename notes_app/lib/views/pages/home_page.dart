import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/views/pages/add_note_page.dart';
import 'package:notes_app/views/pages/note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final searchFocusNode = FocusNode();
  var isSearching = false;
  List<Note> allNotes = [
    Note(
        title: "Note 1",
        note:
            "This is my first note. I am a boy. My name is Shaikh Mohd Raza Mohd Rafique.",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 2",
        note:
            "This is my second note. I am a boy. I am a third year computer engineering student.",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 3",
        note:
            "My name is Shaikh Mohd Raza Mohd Rafique. I am a third year computer engineering student.",
        updatedAt: DateTime.now()),
    Note(
        title: "Note 4",
        note:
            "This is my fourth note. I am a boy. My name is Shaikh Mohd Raza Mohd Rafique. I am a third year computer engineering student.",
        updatedAt: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    List<Note> notes;
    if (isSearching) {
      notes = allNotes
          .where((note) =>
              note.title!
                  .toLowerCase()
                  .contains(searchController.text.toLowerCase()) ||
              note.note!
                  .toLowerCase()
                  .contains(searchController.text.toLowerCase()))
          .toList();
    } else {
      notes = allNotes;
    }
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // NAVIGATING
          var result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddNotePage()));

          if (result != null) {
            Note note = result;
            if (note.title!.isNotEmpty || note.note!.isNotEmpty) {
              notes.insert(0, result);
              setState(() {});
            }
          }
        },
        child: const Icon(Icons.add),
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
                  if (value.isNotEmpty) {
                    isSearching = true;
                  } else {
                    isSearching = false;
                  }
                  // (value.isNotEmpty)?isSearching=true:isSearching=false;
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
            const SizedBox(
              height: 20.0,
            ),
            notes.isEmpty
                ? Text(
                    isSearching
                        ? "Note not found"
                        : "You haven't added a note yet\nPress + to add a note.",
                    textAlign: TextAlign.center,
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: notes.length,
                      itemBuilder: (context, index) => Card(
                        // margin: const EdgeInsets.only(top: 20.0),
                        child: ListTile(
                          title: Text(notes[index].title ?? ""),
                          subtitle: Text(
                            notes[index].note ?? "",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          onTap: () async {
                            var updatedNote = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotePage(
                                  note: notes[index],
                                ),
                              ),
                            );
                            if (updatedNote != null) {
                              // removing the old note.
                              allNotes.remove(notes[index]);
                              // adding updated note
                              allNotes.insert(0, updatedNote);
                              setState(() {});
                            }
                          },
                          minVerticalPadding: 10.0,
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
