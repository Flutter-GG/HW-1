import 'dart:async';

class WelcomeViewModel {
  bool _isBottomSheetVisible = false;

  bool get isBottomSheetVisible => _isBottomSheetVisible;

  void showBottomSheet() {
    Timer(const Duration(seconds: 2), () {
      _isBottomSheetVisible = true;
    });
  }
}
