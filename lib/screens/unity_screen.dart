import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_unity_360/main.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityScreen extends ConsumerWidget {
  const UnityScreen({Key? key}) : super(key: key);
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unity = ref.watch(unityProvider);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Unity Widget'),
      ),
      body: SafeArea(
        bottom: false,
        child: UnityWidget(
          onUnityCreated: unity.create,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
