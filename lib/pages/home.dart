import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:hasar_ihbar/actions.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return StoreConnector<Map<String, dynamic>, HomeModel>(
          converter: (store) {
            return HomeModel(
              state: store.state,
              setText: () =>
                  store.dispatch(SetText('Changed')),
            );
          },
          builder: (BuildContext ctx, HomeModel model) {
            return Column(
              children: <Widget>[
                Text(model.state['text']),
                RaisedButton(
                  child: Text('Change Text'),
                  onPressed: model.setText,
                )
              ],
            );
          },
        );
      },
    );
  }
}

class HomeModel {
  final Map<String, dynamic> state;
  final Function() setText;

  HomeModel({this.state, this.setText});
}
