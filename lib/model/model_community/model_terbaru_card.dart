import 'package:flutter/material.dart';

class CommunityTerbaruCard {
  CircleAvatar profile;
  Image badge;
  String name;
  String timestamp;
  String content;
  String likes;
  String comment;
  String save;

  CommunityTerbaruCard({
    required this.profile,
    required this.badge,
    required this.name,
    required this.timestamp,
    required this.content,
    required this.likes,
    required this.comment,
    required this.save,
  });
}
