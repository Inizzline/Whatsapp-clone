import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leadingWidth: 80,
          titleSpacing: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back,size: 30),
                SizedBox(width: 10),
                CircleAvatar(
                  child: SvgPicture.asset(
                    widget.chatModel.isGroup? "assets/groups.svg":"assets/person.svg",
                    color: Colors.white, height: 35, width: 35,),
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                )
              ],
            ),
          ),
          title: InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.chatModel.name,
                    style: TextStyle(fontSize: 18.5,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("last seen today at 13:33",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
            IconButton(icon: Icon(Icons.call), onPressed: () {}),
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("New Contact"), value: "New Contact"),
                PopupMenuItem(child: Text("Report"), value: "Report"),
                PopupMenuItem(child: Text("Block"), value: "Block"),
                PopupMenuItem(child: Text("Search"), value: "Search"),
                PopupMenuItem(child: Text("Mute Notification"), value: "Mute Notification"),
                PopupMenuItem(child: Text("Wallpaper"), value: "Wallpaper"),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width-60,
                          child: Card(
                            margin: EdgeInsets.only(left: 11, right: 3, bottom: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type a message",
                                  prefixIcon: IconButton(
                                    icon: Icon(Icons.emoji_emotions, color: Colors.blueGrey),
                                    onPressed: () {}
                                    ),
                                   suffixIcon: Row(
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       IconButton(
                                           icon: Icon(Icons.attach_file,
                                               color: Colors.blueGrey),
                                           onPressed: () {}),
                                       IconButton(
                                           icon: Icon(Icons.camera_alt,
                                               color: Colors.blueGrey),
                                           onPressed: () {}),
                                     ],
                                   ),
                                  contentPadding: EdgeInsets.all(5),
                                ),
                              )
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, right: 3, left: 2),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF128C7E),
                          radius: 25,
                          child: IconButton(
                            icon: Icon(Icons.mic, color: Colors.white),
                            onPressed: () {},),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}