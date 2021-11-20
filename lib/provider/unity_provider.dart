import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityProvider {
  UnityWidgetController? _unityWidgetController;

  void create(UnityWidgetController controller) {
    _unityWidgetController ??= controller;
  }

  UnityWidgetController get unityWidgetController => _unityWidgetController!;
}
