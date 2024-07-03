import 'package:flutter/cupertino.dart';

/// 配置列表网络请求规范
abstract class AbstractListNetWork {
  @protected
  Map<String, dynamic> configNetWorkParams();

  /// 网络请求
  @protected
  void getNetWorkData(Map<String, dynamic> info);

  /// 下拉刷新
  void refreshData();

  /// 上拉刷新
  void loadMore();
}

/// 配置普通网络请求规范
abstract class AbstractNetWork {
  @protected
  Map<String, dynamic> configNetWorkParams();

  /// 网络请求
  @protected
  void getNetWorkData(Map<String, dynamic> info);
}
