import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/AI/chat_page_viewmodel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> ChatPageViewmodel(), builder: (context,viewmodel,index){return Scaffold();});
  }
}
