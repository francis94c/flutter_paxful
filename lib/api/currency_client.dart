import 'package:flutter_paxful/api/config/lib.dart';
import 'package:flutter_paxful/api/responses/paxful_array_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'currency_client.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class CurrencyClient {
  factory CurrencyClient(Dio dio) = _CurrencyClient;

  @GET("assets/{assetId}")
  Future<PaxfulArrayResponse> getCurrencies(
      @Header("Authorization") String authorization);
}
