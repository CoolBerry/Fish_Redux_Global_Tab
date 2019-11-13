import 'package:fish_redux/fish_redux.dart';
import 'state.dart';
import 'view.dart';

class TestPage extends Page<TestState, Map<String, dynamic>> with KeepAliveMixin<TestState> {
  TestPage()
      : super(
            initState: initState,
            view: buildView,
            dependencies: Dependencies<TestState>(
                adapter: null,
                slots: <String, Dependent<TestState>>{
                }),
            middleware: <Middleware<TestState>>[
            ],);

}
