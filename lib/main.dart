import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:hasar_ihbar/reducer.dart';
import 'package:hasar_ihbar/state.dart';
import 'package:hasar_ihbar/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final store = Store<Map<String, dynamic>>(
    appReducer,
    initialState: initialState,
    middleware: [thunkMiddleware],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<Map<String, dynamic>>(
      store: store,
      child: MaterialApp(
        title: 'Test',
        
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (BuildContext context) => Home(),
        },
      ),
    );
  }
}
