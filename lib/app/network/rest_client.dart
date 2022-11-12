// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:flutter_clean_architecture_bloc/app/enums.dart';
import 'package:flutter_clean_architecture_bloc/app/messages/printers.dart';
import 'package:http/http.dart' as http;

class RestClient {

  Future<http.Response> sendRequest(
    final String url,
    final HttpRequestType requestType, {
    final dynamic params,
    final Map<String, String>? headers,
  }) async {
    http.Response? response;
    Map<String, String>? requestHeader = {
      'Content-Type': 'application/json',
      'Connection': 'keep-alive',
    };

    if (headers != null) requestHeader = headers;

    switch (requestType) {
      case HttpRequestType.POST:
        realDebugPrint('body: $params');
        response = await http.post(Uri.parse(url),
            body: json.encode(params), headers: requestHeader);
        return response;

      case HttpRequestType.GET:
        response = await http.get(Uri.parse(url), headers: requestHeader);
        return response;

      case HttpRequestType.PUT:
        response = await http.put(Uri.parse(url),
            body: params, headers: requestHeader);
        return response;
    }
  }

}
