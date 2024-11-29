import 'package:flutter/material.dart';

class UserModel with ChangeNotifier {
  String _name = '';
  String _email = '';
  bool _isUserAdded = false;

  String get name => _name;
  String get email => _email;
  bool get isUserAdded => _isUserAdded;

  void addUser(String name, String email) {
    _name = name;
    _email = email;
    _isUserAdded = true;
    notifyListeners();
  }

  void updateUser({String? name, String? email}) {
    if (name != null) _name = name;
    if (email != null) _email = email;
    notifyListeners();
  }

  void resetUser() {
    _name = '';
    _email = '';
    _isUserAdded = false;
    notifyListeners();
  }
}
