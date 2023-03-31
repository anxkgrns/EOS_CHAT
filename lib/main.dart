import 'package:eos_chat/chatting/chat/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:eos_chat/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp
    (const MyApp());
}
class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Chatting App',
      theme: ThemeData(

        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        )
      ),
      home: ChatScreen() // TODO : 알맞은 위젯 채우기
      //원해는 LoginSignUpScreen
    );
  }
}
