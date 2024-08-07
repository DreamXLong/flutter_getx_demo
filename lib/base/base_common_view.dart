import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_demo/base/base_view.dart';
import 'package:get_demo/widget/loading_widget.dart';
import '../widget/empty_status.dart';
import 'base_common_controller.dart';
import 'base_controller.dart';
import 'base_list_controller.dart';

typedef BodyBuilder = Widget Function(BaseCommonController baseState);

abstract class BaseCommonView<T> extends BaseView<T> {
  BaseCommonView({Key? key}) : super(key: key);

  /// 创建空视图 (子视图实现的话 Widget就是子视图实现的)
  Widget createEmptyWidget() {
    return const EmptyStatusWidget(
      emptyType: EmptyStatusType.noMessage,
    );
  }

  /// 创建错误视图 (子视图实现的话 Widget就是子视图实现的)
  Widget createFailWidget(BaseCommonController controller) {
    return EmptyStatusWidget(
      emptyType: EmptyStatusType.fail,
      refreshTitle: '重新加载',
      width: 1.sw,
      height: 1.sh,
      onTap: () {
        /// 重新请求数据
        controller.getNetWorkData(controller.configNetWorkParams());
      },
    );
  }

  /// 创建页面主视图
  Widget createCommonView(BaseCommonController controller,BodyBuilder builder) {
    if (controller.netState == NetState.loadingState) {
      /// loading 不会有这个状态,只是写一个这样的判断吧(控制器里面已经封装好了单例了,防止在网络层直接操作控制不了loading的场景)
      return const LoadingWidget();
    } else if (controller.netState == NetState.emptyDataState) {
      /// 返回站位视图
      return createEmptyWidget();
    } else if (controller.netState == NetState.errorShowRefresh) {
      /// 返回站位刷新视图
      return createFailWidget(controller);
    } else if (controller.netState == NetState.dataSuccessState) {
      return builder(controller);
    } else if (controller.netState == NetState.initializeState) {
      return const SizedBox();
    } else {
      return const Center(child: Text('未知情况,待排查'));
    }
  }

}
