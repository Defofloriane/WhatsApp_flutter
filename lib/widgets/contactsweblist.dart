import 'package:flutter/material.dart';
import 'package:whassapp1/color.dart';
import 'package:whassapp1/data/info.dart';
import 'package:whassapp1/screens/mobile_chat.dart';

class ContacwebtList extends StatelessWidget {
  const ContacwebtList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: 
          ListView.builder(
            shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return Column(
                  children: 
                    [
                      InkWell(
                      onTap: () { 
                          Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>const MobileChat(),
                          ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18)),
                          subtitle:  Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(info[index]['message'].toString(),style: TextStyle(fontSize: 15),),
                          ),
                          leading:
                          CircleAvatar(
                            
                          ),
                         /*  CircleAvatar(
                            backgroundImage: NetworkImage(
                              info[index]['image'].toString(),
                            ),
                          ),*/
                          trailing: Text(info[index]['time'].toString(),style: TextStyle(fontSize: 13,color: Colors.grey)),
                        ),
                      ),
                    ),
                    const Divider(color: dividerColor,indent: 85,)
                  ],
                );
              }),
            
     

    );
  }
}
