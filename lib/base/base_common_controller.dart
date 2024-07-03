import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../base/abstract_network.dart';
import '../../base/base_controller.dart';

/**
 *  普通视图控制器
 * */

abstract class BaseCommonController extends BaseController
    with AbstractNetWork {

  @override
  void getNetWorkData(Map<String, dynamic> info) {
    // TODO: implement getNetWorkData
  }

  @override
  Map<String, dynamic> configNetWorkParams() {
    // TODO: implement configNetWorkParams
    throw UnimplementedError();
  }
}
