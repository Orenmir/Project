import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'user.dart';

class UserPreferences {
  static SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = User(
    imagePath: 'images/catpfp.jpg',
    name: 'Meower',
    about: '',
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    if (_preferences == null) {
      return myUser;
    }

    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
