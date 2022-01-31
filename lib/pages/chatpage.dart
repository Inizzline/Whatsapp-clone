import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';
import 'package:whatsapp_clone/customUI/customcard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Iniobong Joseph",
        icon: "assets/person.svg",
        time: "19:10",
        currentMessage: "Senior Software Engr Needed",
        isGroup: false),
    ChatModel(
        name: "Boo💞😍💕🐣",
        icon: "assets/bb.svg",
        time: "22:10",
        currentMessage: "Baby I'm on my way already...",
        isGroup: false),
    ChatModel(
        name: "Lawrence Adu",
        icon: "assets/person.svg",
        time: "2:47",
        currentMessage: "I develop Mobile Apps",
        isGroup: false),
    ChatModel(
        name: "Senior Bro",
        icon: "assets/person.svg",
        time: "14:20",
        currentMessage: "What is the time of your flight?",
        isGroup: false),
    ChatModel(
        name: "Boss Samuel HaggleX",
        icon: "assets/person.svg",
        time: "9:14",
        currentMessage: "I am leaving the country",
        isGroup: false),
    ChatModel(
        name: "🌈🌈🌈Feminist🌈🌈🌈",
        icon: "assets/person.svg",
        time: "17:11",
        currentMessage: "Ini please when can we see? ",
        isGroup: false),
    ChatModel(
        name: "Low Budget Ritualist💰💸₦🤑",
        icon: "assets/person.svg",
        time: "10:45",
        currentMessage: "oboi baba say make i no...",
        isGroup: false),
    ChatModel(
        name: "Just4Laughs🤣🤣🤣",
        icon: "assets/person.svg",
        time: "16:12",
        currentMessage: "A boy once asked the father....",
        isGroup: true),
    ChatModel(
        name: "Church Group",
        icon: "assets/person.svg",
        time: "11:47",
        currentMessage: "Choir meeting holds by 4pm,..",
        isGroup: true),
    ChatModel(
        name: "Side Chick🍑🔥🍑🔥",
        icon: "assets/person.svg",
        time: "15:33",
        currentMessage: "Baby I am pregnant, and its al...",
        isGroup: false),
    ChatModel(
        name: "Tech Gurus",
        icon: "assets/person.svg",
        time: "21:57",
        currentMessage: "We need more women in tech...",
        isGroup: true),
    ChatModel(
        name: "Emmanuel Peters",
        icon: "assets/person.svg",
        time: "20:45",
        currentMessage: "Guy olosho plenty make we...",
        isGroup: false),
    ChatModel(
        name: "Crypto Signals💹",
        icon: "assets/person.svg",
        time: "12:24",
        currentMessage: "Always remember to buy.....",
        isGroup: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Color(0xFF128C7E),
      ),
      body: ListView.builder(
        itemCount: chats.length,
          itemBuilder: (context, index) => CustomCards(chatModel: chats[index],) )
    );
  }
}
