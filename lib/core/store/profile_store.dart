import 'package:flutter/material.dart';

class ProfileStore extends ChangeNotifier {
  String username = "";
  String thumbUrl = "";

  void updateProfile(String username, String thumbUrl) {
    this.username = username;
    this.thumbUrl = thumbUrl;

    notifyListeners();
  }
}
