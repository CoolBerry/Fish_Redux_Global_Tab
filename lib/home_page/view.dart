import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'package:sample/home_page/action.dart';
import 'package:sample/home_page/state.dart';
import '../app.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {

  Widget _bodyBuilder(int tabIndex){
    switch(tabIndex){
      case 0:
        return AppRoute.global.buildPage('todo_list', null);
      case 1:
        return AppRoute.global.buildPage('setting', null);
    }
  }

  final List<BottomNavigationBarItem> bottomBarList = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.list), title:const Text('todo')),
    BottomNavigationBarItem(icon: Icon(Icons.settings), title:const Text('setting')),
  ];

  return Scaffold(
    body: _bodyBuilder(state.tabIndex),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: bottomBarList,
      selectedItemColor: Theme.of(viewService.context).primaryColor,
      currentIndex: state.tabIndex,
      onTap: (int index){
        dispatch(HomeActionCreator.updateIndex(index));
      },
    ),
  );;
}
