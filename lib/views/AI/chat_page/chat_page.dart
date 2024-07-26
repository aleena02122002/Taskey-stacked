import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/AI/chat_page/chat_page_viewmodel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ChatPageViewmodel(),
        builder: (context, viewmodel, index) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text(
                "Ask AI",
                style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
              ),
              titleSpacing: 60,
              leading: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ],
            ),
            body: DashChat(
                messageOptions: const MessageOptions(
                    currentUserContainerColor: Color(0xFF3580FF),
                    containerColor: Colors.white24,
                    textColor: Colors.white),
                currentUser: viewmodel.currentUser,
                onSend: (ChatMessage m) {
                  viewmodel..getChatResponce(m);
                },
                messages: viewmodel.message),
          );
        });
  }
}
