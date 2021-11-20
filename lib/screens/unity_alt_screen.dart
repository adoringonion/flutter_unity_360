import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityAltScreen extends StatefulWidget {
  const UnityAltScreen({Key? key}) : super(key: key);

  @override
  _UnityAltScreenState createState() => _UnityAltScreenState();
}

class _UnityAltScreenState extends State<UnityAltScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  late UnityWidgetController _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Unity Widget'),
        ),
        body: SafeArea(
          bottom: false,
          child: Stack(children: <Widget>[
            UnityWidget(
              onUnityCreated: _onUnityCreated,
              borderRadius: BorderRadius.circular(8),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Card(
                    elevation: 4,
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ElevatedButton(
                                  onPressed: _play, child: Text("Play")),
                              ElevatedButton(
                                  onPressed: _pause, child: Text("Pause")),
                            ])))),
          ]),
        ));
  }

  void _onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;
  }

  void _play() {
    _unityWidgetController.postMessage('VideoPlayer', 'Play', "");
  }

  void _pause() {
    _unityWidgetController.postMessage('VideoPlayer', 'Pause', "");
  }
}
