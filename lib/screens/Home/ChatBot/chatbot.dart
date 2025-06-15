import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import 'package:uuid/uuid.dart';

class ChatMessageModel {
  final String sender;
  final String content;
  final bool isMe; // true if sent by this user

  ChatMessageModel({
    required this.sender,
    required this.content,
    required this.isMe,
  });
}

class chatbot extends StatefulWidget {
  @override
  State<chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<chatbot> {
  final TextEditingController _controller = TextEditingController();
  late StompClient stompClient;
  String? userId;

  List<ChatMessageModel> messages = [];

  @override
  void initState() {
    super.initState();
    _initUserId();
  }

  Future<void> _initUserId() async {
    final prefs = await SharedPreferences.getInstance();

    String? savedUserId = prefs.getString('userId');

    if (savedUserId == null) {
      var uuid = Uuid();
      savedUserId = uuid.v4();
      await prefs.setString('userId', savedUserId);
    }

    setState(() {
      userId = savedUserId;
    });

    _connectToWebSocket();
  }

  void _connectToWebSocket() {
    if (userId == null) return;

    stompClient = StompClient(
      config: StompConfig.SockJS(
        url: 'http://10.0.2.2:8080/chat-websocket?userId=$userId',  // <-- add userId here
        onConnect: _onConnect,
        onWebSocketError: (error) {
          print('❌ WebSocket Error: $error');
        },
        onStompError: (frame) {
          print('❗ STOMP Error: ${frame.body}');
        },
        onDisconnect: (frame) {
          print('🔌 Disconnected');
        },
        onDebugMessage: (msg) => print('🐞 DEBUG: $msg'),

      ),
    );
    print(" userid of this phone is this :$userId");

    stompClient.activate();
  }

  void _onConnect(StompFrame frame) {
    print("✅ Connected to WebSocket");

    stompClient.subscribe(
      destination: '/user/queue/messages',
      callback: (frame) {
        if (frame.body != null) {
          final data = json.decode(frame.body!);
          final incomingMessage = ChatMessageModel(
            sender: data['sender'] ?? 'unknown',
            content: data['content'] ?? '',
            isMe: data['sender'] == userId,
          );
          setState(() {
            messages.add(incomingMessage);
          });
        }
      },
    );

  }

  void _sendMessage() {
    String message = _controller.text.trim();
    if (message.isNotEmpty && userId != null) {
      final chatMessage = {
        "sender": userId,
        "receiver": "admin",
        "content": message,
        "type": "CHAT"
      };

      stompClient.send(
        destination: "/app/chat.sendMessage",
        body: json.encode(chatMessage),
      );

      final outgoingMessage = ChatMessageModel(
        sender: userId!,
        content: message,
        isMe: true,
      );

      setState(() {
        messages.add(outgoingMessage);
      });

      _controller.clear();
    }
  }

  @override
  void dispose() {
    stompClient.deactivate();
    super.dispose();
  }

  Widget _buildMessage(ChatMessageModel msg) {
    final alignment = msg.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final bgColor = msg.isMe ? Colors.blueAccent : Colors.grey.shade700;
    final textColor = Colors.white;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Text(
              msg.content,
              style: TextStyle(color: textColor, fontSize: 16),
            ),
          ),
          SizedBox(height: 2),
          Text(
            msg.isMe ? "You" : msg.sender,
            style: TextStyle(color: Colors.white70, fontSize: 12),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (userId == null) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sarthi ChatBot"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/Second_Onboarding_Screen.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(color: Colors.black.withOpacity(0)),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.all(12),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    // Show latest message at bottom
                    final msg = messages[messages.length - 1 - index];
                    return _buildMessage(msg);
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                color: Colors.black.withOpacity(0.5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Type your message...",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                        ),
                        onSubmitted: (_) => _sendMessage(),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
