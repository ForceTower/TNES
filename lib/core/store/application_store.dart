import 'package:mobx/mobx.dart';

part 'application_store.g.dart';

class ApplicationStore = _ApplicationStore with _$ApplicationStore;

abstract class _ApplicationStore with Store {
  @observable
  bool initialized = false;
  @observable
  bool isConnected = false;

  Future<void> initializeApp() async {
    await Future.delayed(Duration(seconds: 2), () {
      print('nothing happening...');
    });
    _setAppInitialised(true);
  }

  @action
  _setAppInitialised(bool flag) {
    initialized = flag;
  }
}