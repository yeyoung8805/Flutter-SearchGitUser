// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitUserItems _$GitUserItemsFromJson(Map<String, dynamic> json) => GitUserItems(
      login: json['login'] as String,
      avatar_url: json['avatar_url'] as String,
      html_url: json['html_url'] as String,
    );

Map<String, dynamic> _$GitUserItemsToJson(GitUserItems instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar_url,
      'html_url': instance.html_url,
    };
