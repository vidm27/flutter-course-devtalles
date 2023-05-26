import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/receiber_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/sender_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_filed_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anne Hateway'),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Anne_Hathaway_at_Berlinale_2023_%28cropped%29.jpg/1200px-Anne_Hathaway_at_Berlinale_2023_%28cropped%29.jpg'),
          ),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    //Voy estar pendiente de los cambios y los redibujo
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                  itemCount: chatProvider.messages.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messages[index];
                    return (message.fromWho == FromWho.her)
                        ? RecieberMessageBubble(
                            message: message,
                          )
                        : SenderMessageBubble(
                            message: message.text,
                          );
                  }),
            ),
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            )
          ],
        ),
      ),
    ); // require colocar para widget internos
  }
}
