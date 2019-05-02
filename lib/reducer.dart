import 'package:hasar_ihbar/actions.dart';

Map<String, dynamic> appReducer(Map<String, dynamic> state, dynamic action) {
  if (action is SetText) {
    state['text'] = action.value;
    return state;
  }
  return state;
}
