import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream:  FirebaseFirestore.instance
            .collection("chats/l4BzlCOguaOcF1Qs6fg7/messages")
            .snapshots(),
        builder: (ctx, streamSnapshot){
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, index) => Container(
              padding: const EdgeInsets.all(8),
              child: const Text('This Works!'),
            ),
          );
        },


      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final doc = FirebaseFirestore.instance
              .collection("chats/l4BzlCOguaOcF1Qs6fg7/messages")
              .snapshots();
          doc.listen((data) {
            data.docs.forEach((document) {
              print(document['text']);
            });
          });
        },
      ),
    );
  }
}
