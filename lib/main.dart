import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App modificacion user matcopDev',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      home: ChatScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Material App Bar'),
      //   ),
      //   body: Center(
      //       child: FilledButton.tonal(
      //     onPressed: () {},
      //     child: Text('click me'),
      //   )),
      // ),
    );
  }
}
