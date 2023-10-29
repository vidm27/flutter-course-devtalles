
import 'package:flutter/material.dart' show AppLifecycleState;
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStatePrivder = StateProvider<AppLifecycleState>((ref){
  return AppLifecycleState.resumed;
});