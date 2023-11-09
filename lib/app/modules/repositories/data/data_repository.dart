import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:app_target/app/MockApi/constants.dart';
import 'package:app_target/app/modules/models/comment/comment_model.dart';
import 'package:app_target/app/modules/repositories/data/data_repository_interface.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataRepository extends IDataRepository {
  @override
  Future<List<String>?> loadComments() async {
    try {
      final List<String> listcomments = [];
      const url = '$baseApi/comments';
      final resp = await http.get(Uri.parse(url));

      List<dynamic> data = json.decode(resp.body);
      for (var i = 0; i < data.length; i++) {
        var comment = CommentModel.fromJson(data[i]);
        listcomments.add(comment.description!);
      }
      return listcomments;
    } on HttpException catch (error) {
      debugPrint('Erro ao conectar a API: $error');
    } on TimeoutException {
      debugPrint('Timeout excedido ao conectar a API!');
    }
    return [];
  }

  @override
  Future<List<String>> getAllItens() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var returnlist = prefs.getStringList("list");
    if (returnlist == null) {
      return [];
    }
    return returnlist;
  }

  @override
  Future<void> editDescription(
      {required String item, required int nrIndex}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var list = prefs.getStringList("list");
    list![nrIndex] = item;
    await prefs.setStringList("list", list);
    list = prefs.getStringList("list");
  }

  @override
  Future<void> insertDescriptionItem({required String item}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var list = prefs.getStringList("list");
    if (list != null) {
      list.add(item);
      await prefs.setStringList("list", list);
    } else {
      await prefs.setStringList("list", [item]);
    }
  }

  @override
  Future<void> delete({required int nrIndex}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var list = prefs.getStringList("list");
    list!.removeAt(nrIndex);
    await prefs.setStringList("list", list);
  }
}
