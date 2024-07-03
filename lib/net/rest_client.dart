import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../shop_message/model/info_work_model.dart';
import 'result.dart';
part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  /// 列表接口
  @GET('searchV5')
  Future<Result<InfoWorkModel>> getInfoListData(
    @Query('pn') int page,
    @Query('ps') int pageSize,
    @Query('q') String name,
    @Query('t') String t,
  );

  @GET('layout/getNewLayDetail')
  Future<Result<InfoWorkModel>> getHomeListData(
    @Query('queryFuture') String queryFuture,
    @Query('storeId') String storeId,
    @Query('layoutIds') String layoutIds,
    @Query('_timestemp') int _timestemp,
  );

  /// 详情接口
  @GET('pc/items/info')
  Future<Result<InfoWorkModel>> getInfoDetailData(
    @Query('entityId') int entityId,
  );

  /// 点赞接口
  @POST('thumbsUpOrDown')
  Future<Result<InfoWorkModel>> likeThumbsUpOrDown(@Body() Map<String, dynamic> param);
}
