import 'package:flutter/material.dart';
import 'package:mensajes_app/presentacion/widgets/chat/her_message_bubble.dart';
import 'package:mensajes_app/presentacion/widgets/chat/my_message_bubble.dart';
import 'package:mensajes_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/zOlcJq_AHtnRG_SOVOE4iHgwpGpobTbaagCtLz4S_XNzW9zDVBUGH_1eVitXbba-nJ_G'),
          ),
        ),
        title: const Text("Alexa"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20,),
        centerTitle: true,
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
                itemCount: 101,
                itemBuilder: (context, index) {
                return (index %2==0)
                ? const HerMessageBubble()
                :const MyMessageBubble();
              })),

              /// Caja de texto de mensajes
              const MessageFieldBox(),
            ],
          ),
      ),
    );
  }
}