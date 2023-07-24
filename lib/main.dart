import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ChatProvider() )
    ],
      child: MaterialApp(
        title: 'Yes No App modificacion user matcopDev',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2).theme(),
        home: const ChatScreen(),
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
      ),
    );
  }
}
