import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start LoginAPIS Group Code

class LoginAPISGroup {
  static String getBaseUrl() => 'https://dbf8-41-235-244-115.ngrok-free.app';
  static Map<String, String> headers = {
    'ngrok-skip-browser-warning': 'true',
    'Content-Type': 'application/json',
  };
  static GetUserNamesCall getUserNamesCall = GetUserNamesCall();
  static LoginCall loginCall = LoginCall();
}

class GetUserNamesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = LoginAPISGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetUserNames',
      apiUrl: '${baseUrl}/dropdown',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? usernameList(dynamic response) => (getJsonField(
        response,
        r'''$[:].username''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '0',
    String? password = '0',
  }) async {
    final baseUrl = LoginAPISGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"username":"${escapeStringForJson(username)}",
"password":"${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'true',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? logedUserName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  String? logedRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.role''',
      ));
}

/// End LoginAPIS Group Code

/// Start BatchAPIs Group Code

class BatchAPIsGroup {
  static String getBaseUrl() => 'https://dbf8-41-235-244-115.ngrok-free.app';
  static Map<String, String> headers = {
    'ngrok-skip-browser-warning': 'true',
    'Content-Type': 'application/json',
  };
  static GetopenbatchCall getopenbatchCall = GetopenbatchCall();
  static CheckCodeStatusCall checkCodeStatusCall = CheckCodeStatusCall();
}

class GetopenbatchCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatchAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getopenbatch',
      apiUrl: '${baseUrl}/getopenbatch',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'true',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? batchNO(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].BatchNO''',
      ));
  String? batchMFG(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].MFG''',
      ));
  String? workOrder(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].WorkOrder''',
      ));
}

class CheckCodeStatusCall {
  Future<ApiCallResponse> call({
    String? palletCode = '',
  }) async {
    final baseUrl = BatchAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "PalletCode": "${escapeStringForJson(palletCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckCodeStatus ',
      apiUrl: '${baseUrl}/CheckCodeStatus',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'true',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? palletCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Pallet_Code''',
      ));
  String? productionStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Production_Status''',
      ));
  String? qualityStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Quality_Status''',
      ));
  String? warehouseStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Warehouse_Status''',
      ));
}

/// End BatchAPIs Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
