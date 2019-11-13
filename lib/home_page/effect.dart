import 'package:fish_redux/fish_redux.dart';
import 'package:sample/home_page/action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}
