import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
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
    //IMPLEMENTACIOJN DEL PROVIDER
    final chatProvider= context.watch<ChatProvider>();
//FINAL DE LA IMPLEMENTACION SOLO UNA LINEA
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      // return const MyMessageBuble();
                      //return const HerMessageBuble();
                      final message = chatProvider.messageList[index];


                      return (message.fromWho==FromWho.hers)
                      ?HerMessageBuble()
                      :MyMessageBuble(message:message);
                          
                    })),
             MessageFieldBox(onvalue: (value)=>chatProvider.sendMessage(value)),
          ],
        ),
      ),
    );
  }
}
