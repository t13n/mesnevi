import 'dart:io';

enum Actions {
  LOGOUT,
  RESET_DOCS,
}

class SetText {
  String _value;

  String get value => this._value;

  SetText(this._value);
}
