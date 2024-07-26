import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:stacked/stacked.dart';
import 'package:taskey/views/AI/consts.dart';

class ChatPageViewmodel extends BaseViewModel {
  final openAI = OpenAI.instance.build(
    token: OPENAI_API_KEY,
    baseOption: HttpSetup(
      receiveTimeout: Duration(seconds: 5),
    ),
    enableLog: true,
  );

  final ChatUser currentUser =
      ChatUser(id: "1", firstName: "Aleena", lastName: "Khan");
  final ChatUser aiChat = ChatUser(id: "2", firstName: "AI", lastName: "Chat");
  List<ChatMessage> message = <ChatMessage>[];

  Future<void> getChatResponce(ChatMessage m) async {
    message.insert(0, m);
    rebuildUi();
    List<Map<String, dynamic>> messagesHistory =
    message.reversed.toList().map((m) {
      if (m.user == currentUser) {
        return Messages(role: Role.user, content: m.text).toJson();
      } else {
        return Messages(role: Role.assistant, content: m.text).toJson();
      }
    }).toList();
    final request = ChatCompleteText(
      messages: messagesHistory,
      maxToken: 200,
      model: Gpt4O2024ChatModel(),
    );
    final response = await openAI.onChatCompletion(request: request);
    for (var element in response!.choices) {
      if (element.message != null) {
        message.insert(
          0,
          ChatMessage(
              user: aiChat,
              createdAt: DateTime.now(),
              text: element.message!.content),
        );
        rebuildUi();
      }
    }
  }
}
