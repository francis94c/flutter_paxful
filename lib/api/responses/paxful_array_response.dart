import 'package:json_annotation/json_annotation.dart';

part 'paxful_array_response.g.dart';

@JsonSerializable()
class PaxfulArrayResponse {
  String status;
  int timestamp;

  Map<String, dynamic>? data;

  PaxfulArrayResponse(this.status, this.timestamp);

  factory PaxfulArrayResponse.fromJson(Map<String, dynamic> json) =>
      _$PaxfulArrayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaxfulArrayResponseToJson(this);
}
