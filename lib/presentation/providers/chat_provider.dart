import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    notifyListeners();
  }
}
