import 'package:dio/dio.dart';
import 'package:flutter_app/networkModule/DataModel.dart';
import 'package:retrofit/http.dart';

import 'DataModel.dart';

part 'RestClient.g.dart';

@RestApi(baseUrl: "https://api.github.com")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/search/users")
  Future<Map<String, List<GitUserItems>>> getGitUserAPI(
      @Header("application/vnd.github.v3+json") String accept,
      @Query("q") String query);
}