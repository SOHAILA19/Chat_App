import 'package:chatapp/core/themes/colors.dart';
import 'package:flutter/material.dart';

abstract class AssetIcons {
  // ignore: constant_identifier_names
  static const Search = Icon(
    Icons.search,
    size: 35,
    color: Colors.black,
  );
  static const options = Icon(
    Icons.more_vert,
    size: 35,
    color: Colors.black,
  );
  static const person = Icon(
    Icons.person,
    size: 40,
    color: Colors.white,
  );
  static const chat = Icon(
    Icons.chat,
    size: 40,
    color: ColorsApp.primaryColor,
  );
  static const status = Icon(
    Icons.lightbulb,
    size: 40,
    color: ColorsApp.primaryColor,
  );
  static const call = Icon(
    Icons.call,
    size: 40,
    color: ColorsApp.primaryColor,
  );
  static const add = Icon(
    Icons.add,
    size: 16,
    color: ColorsApp.primaryColor,
  );
  static const edit = Icon(
    Icons.edit,
    size: 20,
    color: Colors.white,
  );
  static const arrowBack = Icon(
    Icons.arrow_back,
    size: 30,
    color: ColorsApp.primaryColor,
  );
  static const save = Icon(
    Icons.save,
    color: Colors.white,
  );
}
