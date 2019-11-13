import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { updateIndex }

class HomeActionCreator {
  static Action updateIndex(int tabIndex) {
    return Action(HomeAction.updateIndex, payload: tabIndex);
  }
}
