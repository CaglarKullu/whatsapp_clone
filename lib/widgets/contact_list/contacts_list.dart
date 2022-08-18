import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:whatsapp_clone/widgets/contact_list/contacts_list_card.dart';

import 'package:whatsapp_clone/widgets/utilities/consts/contacts.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return ContactListCard(index: index);
        },
      ),
    );
  }
}
