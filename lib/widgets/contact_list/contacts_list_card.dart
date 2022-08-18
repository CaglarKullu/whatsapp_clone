import 'package:flutter/material.dart';

import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';
import 'package:whatsapp_clone/widgets/utilities/consts/color.dart';
import 'package:whatsapp_clone/widgets/utilities/consts/contacts.dart';

class ContactListCard extends StatelessWidget {
  int index;
  ContactListCard({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MobileChatScreen(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              title: Text(
                info[index]['name'].toString(),
                style: const TextStyle(
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  info[index]['message'].toString(),
                  style: const TextStyle(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  info[index]['profilePic'].toString(),
                ),
                radius: 30,
              ),
              trailing: Text(
                info[index]['time'].toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        const Divider(color: dividerColor, indent: 85),
      ],
    );
  }
}
