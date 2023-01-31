import 'package:flutter_riverpod/flutter_riverpod.dart';

final errorStateProvider = NotifierProvider<ErrorNotifier, bool>(() {
  return ErrorNotifier();
});

class ErrorNotifier extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  void setState(bool hasError) {
    state = hasError;
  }
}
