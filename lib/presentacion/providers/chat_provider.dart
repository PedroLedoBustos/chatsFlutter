import 'package:flutter/material.dart';
import 'package:mensajes_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList=[
    Message(text: 'Hola Alexa!', fromWho: FromWho.me),
    Message(text: 'Ya regresastes?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async{
    final newMessage= Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
  }

}