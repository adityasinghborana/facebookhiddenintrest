// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interest _$InterestFromJson(Map<String, dynamic> json) => Interest(
      id: json['id'] as String?,
      name: json['name'] as String?,
      audience_size_lower_bound:
          (json['audience_size_lower_bound'] as num?)?.toInt(),
      audience_size_upper_bound:
          (json['audience_size_upper_bound'] as num?)?.toInt(),
      path: (json['path'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      topic: json['topic'] as String?,
    );

Map<String, dynamic> _$InterestToJson(Interest instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'audience_size_lower_bound': instance.audience_size_lower_bound,
      'audience_size_upper_bound': instance.audience_size_upper_bound,
      'path': instance.path,
      'description': instance.description,
      'topic': instance.topic,
    };

InterestList _$InterestListFromJson(Map<String, dynamic> json) => InterestList(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InterestListToJson(InterestList instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
