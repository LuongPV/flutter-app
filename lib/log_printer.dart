import 'dart:developer';
import 'dart:isolate';

import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {

  @override
  List<String> log(LogEvent event) {
    return [
      '[${Service.getIsolateID(Isolate.current)}] ${DateTime.now()} => ${event.message} stacktrace = ${event.stackTrace}'
    ];
  }

}