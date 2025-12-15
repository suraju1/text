import 'package:flutter/material.dart';

class clientClass extends ChangeNotifier {
  String name ="";
  String email ="";
  String password ="";

  clientClass({
   required this.name,
   required this.email,
   required this.password
  }
    );

    void newName (String newName){
      name =newName;
      notifyListeners();
    }
    void newEmail (String newEmail){
      name =newEmail;
      notifyListeners();
    }
    void newPassword (String newPassword){
      name =newPassword;
      notifyListeners();
    }

}