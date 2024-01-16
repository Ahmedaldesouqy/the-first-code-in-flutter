import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String image;
  final Color nameColor;
  final String time; // Add time field
  final String message;

  ChatModel(
      {required this.name,
      required this.image,
      required this.nameColor,
      required this.time, // Initialize time in the constructor
      required this.message});
}
