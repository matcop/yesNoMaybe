import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "hola forest", fromWho: FromWho.me),
    Message(text: "ya regresaste del trabajo?", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: IMPLEMENTAR METODO CUANDO YO ESCRIBA EN EL TEXTBOX DEBO RECIBIR
    // LAS VARIABLES COMO EL MENSAJE, LA URL_IMAGEN, Y DATO DE QUIEN ENVIA.
  }
}
