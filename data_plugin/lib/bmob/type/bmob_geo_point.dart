library bmobgeopoint;

import 'package:json_annotation/json_annotation.dart';

part 'bmob_geo_point.g.dart';

@JsonSerializable()
class BmobGeoPoint {
  factory BmobGeoPoint.fromJson(Map<String, dynamic> json) =>
      _$BmobGeoPointFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BmobGeoPointToJson(this);

  double latitude = 0.0;
  double longitude = 0.0;

  @JsonKey(name: "__type")
  String type = "GeoPoint";

  BmobGeoPoint();
}
