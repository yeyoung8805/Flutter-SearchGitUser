import 'package:json_annotation/json_annotation.dart';

part 'DataModel.g.dart';

class DataModel {}

@JsonSerializable()
class GitUserItems {
  String login;
  String avatar_url;
  String html_url;

  GitUserItems(
  {required this.login, required this.avatar_url, required  this.html_url});

  factory GitUserItems.fromJson(Map<String, dynamic> json) =>
      _$GitUserItemsFromJson(json);

  Map<String,dynamic> toJson() => _$GitUserItemsToJson(this);
}