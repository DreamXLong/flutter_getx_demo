import 'dart:convert';

import 'package:dio/dio.dart';

import '../util/log_util.dart';
import 'result.dart';

class ApiResultInterceptor extends Interceptor {
  @override
  Future<void> onResponse(
      Response<dynamic> resp, ResponseInterceptorHandler handler) async {
    final String decode = utf8.decode(resp.data as List<int>);
    resp.data = json.decode(decode);
    final String urlPath = resp.requestOptions.path;
    logD('response-urlPath--->:$urlPath');
    logD('response--->:${json.encode(resp.data)}');
    /// http error错误处理
    if (resp.statusCode != 200) {
      handler.reject(
          DioError(requestOptions: resp.requestOptions, response: resp), true);
      return;
    }
    final result =
        Result<dynamic>.fromMapJson(resp.data as Map<String, dynamic>);

    if (result.code == 100200) {
      /// 成功
      handler.next(resp);
      return;
    } else {
      /// 失败
      handler.reject(
          result.toException()..requestOptions = resp.requestOptions, true);
    }
    // handler.next(resp);
  }
}
