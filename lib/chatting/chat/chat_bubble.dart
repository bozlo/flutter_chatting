import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_8.dart';


class ChatBubbles extends StatelessWidget {
  final String message;
  final bool isMe;
  final String userName;
  final String userImage;

  const ChatBubbles({
    Key? key,
    required this.message,
    required this.isMe,
    required this.userName,
    required this.userImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Stack(
            children: [
                Row(
                mainAxisAlignment: isMe? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                    Padding(
                      padding: isMe? EdgeInsets.fromLTRB(0, 10, 45, 0) : EdgeInsets.fromLTRB(45, 10, 0, 0),
                      child: ChatBubble(
                        clipper: ChatBubbleClipper8(type: isMe? BubbleType.sendBubble:BubbleType.receiverBubble),
                        alignment: isMe? Alignment.topRight : Alignment.topLeft,
                        margin: EdgeInsets.only(top: 20),
                        backGroundColor: isMe? Colors.grey[300] : Colors.blue,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            crossAxisAlignment: isMe? CrossAxisAlignment.end : CrossAxisAlignment.start ,
                              children: [
                              Text(
                              userName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: isMe? Colors.black : Colors.white,
                              ),
                            ),
                            Text(
                              message,
                              style: TextStyle(color: isMe? Colors.black : Colors.white),
                            ),
                          ]
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Positioned(
                top: 0,
                right: isMe? 5:null,
                left: isMe? null:5,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(userImage),
                ),
              ),
          ],
        );
  }
}
