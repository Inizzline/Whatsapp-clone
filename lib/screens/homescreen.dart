import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/chatpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (context) => [
            PopupMenuItem(child: Text("New Group"), value: "New Group"),
            PopupMenuItem(child: Text("New Broadcast"), value: "New Broadcast"),
            PopupMenuItem(child: Text("Linked Devices"), value: "Linked Devices"),
            PopupMenuItem(child: Text("Starred Message"), value: "Starred Message"),
            PopupMenuItem(child: Text("Settings"), value: "Settings"),
          ],
        ),
      ],
      bottom: TabBar(
        controller: _controller,
        indicatorColor: Colors.white,
        indicatorWeight: 1.5,
        tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          ),
        ],
      ),
      ),
      body: TabBarView(
        controller: _controller,
      children: [
        Text("Camera"),
        ChatPage(),
        Text("Status"),
        Text("Calls")
      ],
      ),
    );
  }
}
