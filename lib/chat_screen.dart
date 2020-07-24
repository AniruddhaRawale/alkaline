import 'package:chat_app/chat_message.dart';
import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage> [];




  void _handleSubmitted(String text){
    //after entering message this will clear the screen
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });

  }

  Widget _textComposerWidget(){
  return IconTheme(
    data: IconThemeData(color: Colors.black),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
     child: Row(
       children: <Widget>[
         //flexible takes entire screen
         //collapsed takes remaining screen
         Flexible(
           child: TextField(
             decoration: InputDecoration.collapsed(hintText: "Send A Message"),
             controller: _textController,
             onSubmitted: _handleSubmitted,
           ),
         ),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 4.0),
           child: IconButton(
               icon: Icon(Icons.send,
              // color: Colors.black,
               ),
               onPressed: ()=> _handleSubmitted(_textController.text)
           ),
         )
       ],
     ),

    ),
  )  ;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
        Flexible(
        child: ListView.builder(
        padding: EdgeInsets.all(8.0),
    reverse: true,
    itemBuilder:(_,int index) => _messages[index] ,
    itemCount: _messages.length,
    )
    ),
    Divider(height:  1.0,),
    Container(
    decoration: BoxDecoration(
    color: Theme.of(context).cardColor
    ),
    child: _textComposerWidget(),
    ),
    ]
    );
  }
}

