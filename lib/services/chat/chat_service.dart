import 'package:chatapp/model/message.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chatservice extends ChangeNotifier {
  //get instance of auth and firestore
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //send Message
  Future<void> sendMessage(String receiverId, String message) async {
     // get current user info
     final String currentUserId = _firebaseAuth.currentUser!.uid;
     final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
     final Timestamp timestamp  = Timestamp.now();

    //create a new user
    Message newMessage = Message(
        senderId: currentUserId,
        senderEmail: currentUserEmail,
        receiverId: receiverId,
        timestamp: timestamp,
        message: message,
    );
    //construct chat room id from current user id and receiver id (sorted to ensure uniqueness)
    List<String> ids = [currentUserId, receiverId];
    ids.sort();
    String chatRoomId = ids.join("_");
    //add new message to database
    await _firestore
     .collection('chat_rooms')
     .doc(chatRoomId)
     .collection('messages')
     .add(newMessage.toMap());
  }
    //get message
    Stream<QuerySnapshot> getMessages(String userId, String otherUserid){
    //construct chat room id from ids (sorted to ensure it matches the id used when sending message
      List<String> ids = [userId, otherUserid];
      ids.sort();
      String chatRoomId = ids.join("_");

      return _firestore
          .collection('chat_rooms')
          .doc(chatRoomId)
          .collection('messages')
          .orderBy('timestamp', descending: false)
          .snapshots();
    }
}
