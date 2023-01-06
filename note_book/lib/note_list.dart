// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:note_book/note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  // var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NOTES')),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          navigateToDetail(context, 'Add Note');
        },
        tooltip: ("Click to add"),
      ),
    );
  }
}

ListView getNoteListView() {
  var count = 0;
  return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('Dummy'),
            subtitle: Text('Dummy'),
            trailing: Icon(Icons.delete),
            onTap: () {
              navigateToDetail(context, 'Edit Note');
            },
          ),
        );
      });
}

void navigateToDetail(BuildContext context, String title) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return NoteDetail(title);
  }));
}
