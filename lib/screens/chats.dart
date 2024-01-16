
import 'package:flutter/material.dart';
import 'package:untitled3/model.dart';

class ChatPage extends StatefulWidget {
  static const routeName = '/chat';

  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Me",
        image: 'images/OIP (2) (1).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "10:30 AM"),
    ChatModel(
        name: "Ahmed",
        image: 'images/OIP (1) (1).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "11:30 AM"),
    ChatModel(
        name: "Spider",
        image: 'images/download (5).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "11:00 AM"),
    ChatModel(
        name: "Don",
        image: 'images/OIP (3).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "12:00 BM"),
    ChatModel(
        name: "Aldsokey",
        image: 'images/OIP (4).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "3:30 BM"),
    ChatModel(
        name: "Ibrahim",
        image: 'images/OIP (5).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "5:30 BM"),
    ChatModel(
        name: "Osman",
        image: 'images/OIP (6).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "6:05 BM"),
    ChatModel(
        name: "Dana",
        image: 'images/th (1).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "7:03 AM"),
    ChatModel(
        name: "aml",
        image: 'images/th (2).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "11:30 AM"),
    ChatModel(
        name: "hassan",
        image: 'images/OIP (9).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "12:30 BM"),
    ChatModel(
        name: "fatma",
        image: 'images/th (3).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "19:30 AM"),
    ChatModel(
        name: "nahed",
        image: 'images/th (4).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "12:30 BM"),
    ChatModel(
        name: "malak",
        image: 'images/th (5).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "11:30 AM"),
    ChatModel(
        name: "yasser",
        image: 'images/OIP (7).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "10:30 AM"),
    ChatModel(
        name: "mohamed",
        image: 'images/OIP (8).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "11:30 AM"),
    ChatModel(
        name: "mostafa",
        image: 'images/th (6).png',
        message: "hi ahmed",
        nameColor: Colors.white,
        time: "10:30 BM"),
    // Add other initial chat data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      backgroundColor: const Color(0xFF232A42),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // Open a dialog or perform filter logic here
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: chats.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(chats[index].image),
                        radius: 25,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        chats[index].name,
                        style: TextStyle(color: chats[index].nameColor),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (ctx, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(chats[index].image),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(chats[index].name,
                            style: const TextStyle(color: Colors.white)),
                        Text(chats[index].message,
                            style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(chats[index].time,
                          style: const TextStyle(color: Colors.white)),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
