// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_prompt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentPromptModelImpl _$$RecentPromptModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentPromptModelImpl(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecentPromptModelImplToJson(
        _$RecentPromptModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'messages': instance.messages,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      createdAt: json['createdAt'] as String?,
      author: json['author'] as String?,
      body: json['body'] as String?,
      attachments: json['attachments'] as List<dynamic>?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'author': instance.author,
      'body': instance.body,
      'attachments': instance.attachments,
    };
