import 'package:flutter/material.dart';
import 'package:saat/config/color.dart';
import 'package:saat/screen/HOME/home_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     IconButton(
            //       icon: const Icon(
            //         Icons.favorite_border,
            //       ),
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const HomePage()));
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
        body: ListView.separated(
          itemCount: 25,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              onLongPress: () {
                PopupMenuButton<String>(
                  onSelected: (String value) {
                    setState(() {});
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Open',
                      child: Text('Open'),
                    ),
                  ],
                );
              },
              title: const Text(
                'Adarsh',
                style: TextStyle(fontWeight: FontWeight.w500, color: blue3),
              ),
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/DemoImage3.jpg"),
              ),
              trailing: Text("12:1$index"),
              subtitle: const Text("hey there...."),
            );
          },
        ));
  }
}
