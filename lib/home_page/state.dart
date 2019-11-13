import 'package:fish_redux/fish_redux.dart';

class HomeState implements Cloneable<HomeState> {

  int tabIndex;

  @override
  HomeState clone() {
    return HomeState();
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState()..tabIndex = 0;
}
