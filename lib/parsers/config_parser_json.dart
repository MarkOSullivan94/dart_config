library config_parser_json;

import 'dart:async';
import 'dart:convert';

import '../config.dart';

class JsonConfigParser implements ConfigParser {
  Future<Map<String, Object>> parse(String configText) {
    var completer = new Completer<Map<String, Object>>();

    var map = jsonDecode(configText);
    completer.complete(map);

    return completer.future
        .then((val) => val.map((k, v) => MapEntry(k.toString(), v)));
    ;
  }
}
