import 'package:app_target/app/MockApi/constants.dart';
import 'package:app_target/app/modules/repositories/login/login_repository_interface.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class LoginRepository extends ILoginRepository {
  Future<bool> authLocal(
      {required String usuario, required String senha}) async {
    return true;
  }

  Future<bool> authUser(
      {required String usuario, required String senha}) async {
    try {
      const url = '$baseApi/users';
      final resp = await http.get(Uri.parse(url));
      List<dynamic> data = json.decode(resp.body);
      print(data);

      return true;
    } on HttpException catch (error) {
      debugPrint('Erro ao conectar a API: $error');
    } on TimeoutException {
      debugPrint('Timeout excedido ao conectar a API!');
    }
    return false;
  }
}
