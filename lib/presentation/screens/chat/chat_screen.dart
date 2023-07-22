import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/en/thumb/9/94/Forest_Gump_Character.jpg/220px-Forest_Gump_Character.jpg'),
          ),
        ),
        title: const Text('Corre forest ***'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      // return const MyMessageBuble();
                      //return const HerMessageBuble();

                      return (index % 2 == 0)
                          ? const MyMessageBuble()
                          : const HerMessageBuble();
                    })),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
