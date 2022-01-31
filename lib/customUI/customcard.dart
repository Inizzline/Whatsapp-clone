import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';
import 'package:whatsapp_clone/screens/individualpage.dart';

class CustomCards extends StatelessWidget {
  const CustomCards({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage(chatModel: chatModel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: SvgPicture.asset(
                chatModel.isGroup? "assets/groups.svg":"assets/person.svg",
                color: Colors.white, height: 35, width: 35,),
              radius: 25,
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(chatModel.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all, color: Colors.blue,),
                 SizedBox(width: 3,),
                Text(chatModel.currentMessage),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(thickness: 1,),
          )
        ],
      ),
    );
  }
}