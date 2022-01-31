class ChatModel {
  String name;
  String icon;
  String time;
  String currentMessage;
  bool isGroup;

  ChatModel({required this.name, required this.icon,
    required this.time, required this.currentMessage,
     required this.isGroup,});
}