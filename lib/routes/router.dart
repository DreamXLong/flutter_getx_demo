import 'package:get/get.dart';
import 'package:get_demo/shop_home/good_detail/binding.dart';
import 'package:get_demo/shop_message/message_detail/message_detail/binding.dart';
import 'package:get_demo/tabbar/binding/tabbar_binding.dart';
import 'package:get_demo/tabbar/view/tabbar_view.dart';
import '../shop_home/good_detail/view.dart';
import '../shop_message/message_detail/message_detail/view.dart';

class AppRoutes {
  static String infoDetail = '/info_detail';
  static String shopDetail = '/shop_detail';
  static String appMain = '/app_main';

  static List<GetPage> routes = [
    /// 资讯详情界面
    GetPage(name: infoDetail, page: () => MessageDetailPage(), binding: MessageDetailBinding()),

    /// 商品详情
    GetPage(name: shopDetail, page: () => GoodDetailPage(), binding: GoodDetailBinding()),

    /// 主页面
    GetPage(name: appMain, page: () => TabbarPage(), binding: TabbarBinding()),
  ];
}
