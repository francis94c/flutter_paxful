import 'package:json_annotation/json_annotation.dart';

part 'paxful_auth_response.g.dart';

@JsonSerializable()
class PaxfulAuthResponse {
  String status;
  int timestamp;

  Map<String, dynamic>? data;

  PaxfulAuthResponse(this.status, this.timestamp);

  factory PaxfulAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$PaxfulAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaxfulAuthResponseToJson(this);
}
