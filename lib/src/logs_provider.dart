import 'dart:collection';
import 'dart:isolate';

import 'package:flutter/widgets.dart';

/*
  LogsProvider widget is an InheritedWidget which can be placed into the widget 
  tree.
*/
class LogsProvider extends InheritedWidget {
  final List<String> _messages = List.empty(growable: true);
  UnmodifiableListView<String> get messages => UnmodifiableListView(_messages);
  int get messageCount => _messages.length;
  final ReceivePort _recvPort = ReceivePort("LogsProvider");
  SendPort get sendPort => _recvPort.sendPort;

  LogsProvider({super.key, required super.child}) {
    _recvPort.listen((message) => addMessage(message));
  }

  void addMessage(String msg) {
    _messages.add(msg);
  }

  void clear() {
    _messages.clear();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    LogsProvider other = oldWidget as LogsProvider;
    return other.messageCount != messageCount;
  }

  static LogsProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LogsProvider>();
  }
}
