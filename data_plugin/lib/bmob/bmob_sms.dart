import 'package:data_plugin/bmob/bmob_dio.dart';
import 'package:data_plugin/bmob/bmob.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:data_plugin/bmob/response/bmob_handled.dart';
import 'package:data_plugin/bmob/response/bmob_sent.dart';

//此处与类名一致，由指令自动生成代码
part 'bmob_sms.g.dart';

@JsonSerializable()
class BmobSms {
  String mobilePhoneNumber="";
  String template="";

  BmobSms();

  ///查询单条数据
  Future<BmobSent> sendSms() async {
    Map<String, dynamic> responseData = await BmobDio.getInstance().post(
        Bmob.BMOB_API_SEND_SMS_CODE, data: getParams());
    BmobSent sent = BmobSent.fromJson(responseData);
    return sent;
  }

  ///查询多条数据
  Future<BmobHandled> verifySmsCode(smsCode) async {
    Map<String, dynamic> params = getParams();
    params.remove("template");
    Map<String, dynamic> responseData = await BmobDio.getInstance()
        .post(Bmob.BMOB_API_VERIFY_SMS_CODE + smsCode, data: params);
    BmobHandled bmobHandled = BmobHandled.fromJson(responseData);
    return bmobHandled;
  }

  //此处与类名一致，由指令自动生成代码
  factory BmobSms.fromJson(Map<String, dynamic> json) =>
      _$BmobSmsFromJson(json);

  //此处与类名一致，由指令自动生成代码
  Map<String, dynamic> toJson() => _$BmobSmsToJson(this);


  ///获取请求参数
  Map<String, dynamic> getParams() {
    Map<String, dynamic> map = toJson();
    Map<String, dynamic> params = toJson();
    map.forEach((k, v) {
      if (v == null) {
        params.remove(k);
      }
    });
    return params;
  }
}
