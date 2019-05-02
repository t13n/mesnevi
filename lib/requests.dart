import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

ThunkAction<Map<String, dynamic>> testLogin(BuildContext context, String page,
    [String username, String password]) {
  return (Store<Map<String, dynamic>> store) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    await http
        .post(
      'loginEndpoint',
      headers: headers,
      body: json.encode(
        {
          "UserName": username,
          "Password": password,
        },
      ),
    )
        .then((response) {
      return response;
    });
  };
}
