import 'package:flutter/cupertino.dart';

class UserList{
  final ImageProvider? image;
  final String name;

  UserList(this.image, this.name);

  String get userInitial{
    /// nama = Wandy Purnomo
    final split = name.split(' ').map((e) => e.substring(0,1)).toList().join(''); /// ['wandy','purnomo']
    return split;
  }
}