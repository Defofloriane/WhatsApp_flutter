import 'package:flutter/material.dart';
import 'package:whassapp1/color.dart';
import 'package:whassapp1/data/user.dart';
import 'package:whassapp1/screens/mobile_chat.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: usersList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                     Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>const MobileChat(),
                          ));
                
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ListTile(
                        title: Text(usersList[index]['name'].toString(),
                            style: TextStyle(fontSize: 18)),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            usersList[index]['message'].toString(),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(usersList[index]['img']),
                        ),
                        trailing: Text(usersList[index]['time'].toString(),
                            style: TextStyle(fontSize: 13, color: Colors.grey)),
                      ),
                    ),
                  );
                }),
          ),
          const Divider(
            color: dividerColor,
            indent: 85,
          )
        ],
      ),
    );
  }
}
