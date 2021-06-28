library servertime;

import 'package:json_annotation/json_annotation.dart';

part 'server_time.g.dart';

@JsonSerializable()
class ServerTime {
  int timestamp=0;
  String? datetime="";

  ServerTime();

  factory ServerTime.fromJson(Map<String, dynamic> json) =>
      _$ServerTimeFromJson(json);

  Map<String, dynamic> toJson(ServerTime instance) =>
      _$ServerTimeToJson(instance);
}
