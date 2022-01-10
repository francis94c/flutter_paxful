library flutter_paxful;

import 'package:flutter_paxful/api/currency_client.dart';
import 'package:flutter_paxful/api/models/currency.dart';

import 'package:dio/dio.dart';
import 'package:flutter_paxful/api/responses/paxful_array_response.dart';

/// Flutter PAXFul SDK.
class FlutterPaxful {
  static String? _appId;
  static String? _secretKey;

  static String? _token;

  static late final CurrencyClient _currencyClient = CurrencyClient(Dio());

  FlutterPaxful._();

  static void initialize(String appId, String secretKey) {
    _appId = appId;
    _secretKey = secretKey;
  }

  static FlutterPaxful? _instance;

  static Future<FlutterPaxful> get instance async {
    if (_appId == null || _secretKey == null) {
      throw Exception('FlutterPaxful not initialized');
    }
    if (_token == null) {}
    _instance ??= FlutterPaxful._();
    return _instance!;
  }

  Future<List<Currency>> getCurrencies() async {
    PaxfulArrayResponse response =
        await _currencyClient.getCurrencies("Bearer $_token");
    return Future.value((response.data?["currencies"] as List<dynamic>)
        .map((e) => Currency.fromJson(e))
        .toList());
  }
}
