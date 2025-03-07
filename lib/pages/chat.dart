/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : Netflix Clone Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Chat extends StatefulWidget {
  final String image;
  final String name;
  static const String id = 'Chat';

  const Chat({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Item> messages = <Item>[
    const Item('left',
        'long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
    const Item('right',
        'The point of using  a more-or-less normal distribution of letters, as'),
    const Item('left', 'Lorem Ipsum is that it has'),
    const Item('right',
        'The point of using  a more-or-less normal distribution of letters'),
    const Item(
        'left', 'ablished fact that a reader will be distracted by the re'),
    const Item('right', 'done'),
    const Item('right',
        'The point of using  a more-or-less normal distribution of letters'),
    const Item(
        'left', 'ablished fact that a reader will be distracted by the re'),
    const Item('right', 'done'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        title:
             Text(widget.name, style: const TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: messages.map((Item msg) {
            return msg.side == 'left'
                ? Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery.of(context).size.width - 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                         CircleAvatar(
                          backgroundImage: AssetImage(widget.image),
                          radius: 14,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                    color: backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    )),
                                child: Text(
                                  msg.msg,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 6),
                                child: smallText('10.34pm'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        width: MediaQuery.of(context).size.width - 120,
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.all(16),
                                        decoration: const BoxDecoration(
                                          color: appColor,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(16),
                                            topLeft: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                          ),
                                        ),
                                        child: Text(
                                          msg.msg,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                          padding: const EdgeInsets.only(
                                              right: 10, top: 6),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              smallText('10.34pm'),
                                              const SizedBox(width: 4),
                                              const Icon(
                                                Icons.check,
                                                size: 16,
                                                color: appColor,
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
          }).toList(),
        ));
  }

  Widget _buildBottom() {
    return SingleChildScrollView(
      reverse: true,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(38.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 0),
                        blurRadius: 2.0),
                  ],
                ),
                child: TextField(
                  onChanged: (String txt) {},
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  cursorColor: appColor,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.emoji_emotions_outlined,
                          color: Colors.black45),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.attachment_outlined,
                              color: Colors.black45),
                          SizedBox(width: 16),
                          Icon(Icons.camera_alt, color: Colors.black45),
                        ],
                      ),
                      border: InputBorder.none,
                      hintText: 'Message',
                      hintStyle:
                          const TextStyle(color: Colors.black54, fontSize: 16)),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: appColor,
                radius: 22,
                child: Icon(Icons.send, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
