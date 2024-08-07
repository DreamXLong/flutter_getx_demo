import 'package:get_demo/base/base_common_controller.dart';
import 'package:get_demo/shop_home/good_detail/good_detail_state.dart';
import 'package:get_demo/shop_home/model/good_item_model.dart';

import '../../base/base_controller.dart';
import '../../net/http_mork.dart';

class GoodDetailLogic extends BaseCommonController {
  GoodDetailState goodDetailState = GoodDetailState();

  @override
  void initData() {
    getNetWorkData(configNetWorkParams());
  }

  @override
  Future<void> getNetWorkData(Map<String, dynamic> info) async {
    super.getNetWorkData(info);
    try {
      Map<String, dynamic> result =
          await HttpMork.getMockDataWithPath(path: 'lib/mock/good_detail_data.json');
      goodDetailState.model = GoodItemModel.fromJson(result['data']);
      netState = NetState.dataSuccessState;
      update();
    } catch (e) {
      netState = NetState.errorShowRefresh;
      update();
    } finally {}
  }

  @override
  Map<String, dynamic> configNetWorkParams() {
    return {};
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }
}
