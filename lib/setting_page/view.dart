import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(TestState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: const Text('Setting_Page', style: TextStyle(
        fontSize: 24,
      ),),
    ),
  );
}
