import 'package:fish_redux/fish_redux.dart';

import 'package:sample/home_page/action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.updateIndex: _onUpdate,
    },
  );
}

HomeState _onUpdate(HomeState state, Action action) {
  final HomeState newState = state.clone();
  newState.tabIndex = action.payload??0;
  return newState;
}
