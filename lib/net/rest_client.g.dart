// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Result<InfoWorkModel>> getInfoListData(
    int page,
    int pageSize,
    String name,
    String t,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'pn': page,
      r'ps': pageSize,
      r'q': name,
      r't': t,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Result<InfoWorkModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'searchV5',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Result<InfoWorkModel>.fromJson(
      _result.data!,
      (json) => InfoWorkModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Result<InfoWorkModel>> getHomeListData(
    String queryFuture,
    String storeId,
    String layoutIds,
    int _timestemp,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'queryFuture': queryFuture,
      r'storeId': storeId,
      r'layoutIds': layoutIds,
      r'_timestemp': _timestemp,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Result<InfoWorkModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'layout/getNewLayDetail',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Result<InfoWorkModel>.fromJson(
      _result.data!,
      (json) => InfoWorkModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Result<InfoWorkModel>> getInfoDetailData(int entityId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'entityId': entityId};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Result<InfoWorkModel>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'pc/items/info',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Result<InfoWorkModel>.fromJson(
      _result.data!,
      (json) => InfoWorkModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<Result<InfoWorkModel>> likeThumbsUpOrDown(
      Map<String, dynamic> param) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(param);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Result<InfoWorkModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'thumbsUpOrDown',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Result<InfoWorkModel>.fromJson(
      _result.data!,
      (json) => InfoWorkModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
