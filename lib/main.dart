import 'package:chat_flutter/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized(); // Add this
  await Firebase.initializeApp(name: "Chat App",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Chat1',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:  ChatScreen(),
          );
  }
}
