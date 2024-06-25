import 'package:flutter/material.dart';
import 'package:mensajes_app/presentacion/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/zOlcJq_AHtnRG_SOVOE4iHgwpGpobTbaagCtLz4S_XNzW9zDVBUGH_1eVitXbba-nJ_G'),
          ),
        ),
        title: const Text("Alexa"),
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
                return const MyMessageBubble();
              },) 
            )],
          ),
      ),
    );
  }
}