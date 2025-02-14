import 'package:data_plugin/bmob/table/bmob_object.dart';
import 'package:json_annotation/json_annotation.dart';
//此处与类名一致，由指令自动生成代码
part 'bmob_installation.g.dart';
@JsonSerializable()
class BmobInstallation extends BmobObject {
  String? deviceType = "android";
  String? installationId ="";
  String? timeZone="";
  String? deviceToken="";


  BmobInstallation(){
    timeZone = "";
  }
  //此处与类名一致，由指令自动生成代码
  factory BmobInstallation.fromJson(Map<String, dynamic> json) =>
      _$BmobInstallationFromJson(json);

  //此处与类名一致，由指令自动生成代码
  Map<String, dynamic> toJson() => _$BmobInstallationToJson(this);



  @override
  Map<String, dynamic> getParams() {
    return toJson();
  }
}
