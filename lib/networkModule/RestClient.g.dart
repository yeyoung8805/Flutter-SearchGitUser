// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RestClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.github.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Map<String, List<GitUserItems>>> getGitUserAPI(accept, query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'q': query};
    final _headers = <String, dynamic>{
      r'application/vnd.github.v3+json': accept
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, List<GitUserItems>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/search/users',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!.map((k, dynamic v) => MapEntry(
        k,
        (v as List)
            .map((i) => GitUserItems.fromJson(i as Map<String, dynamic>))
            .toList()));
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
}
