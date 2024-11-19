import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(explicitToJson: true)
class Interest {
  final String? id;
  final String? name;
  final int? audience_size_lower_bound;
  final int? audience_size_upper_bound;
  final List<String>? path;
  final String? description;
  final String? topic;

  Interest({
    this.id,
    this.name,
    this.audience_size_lower_bound,
    this.audience_size_upper_bound,
    this.path,
    this.description,
    this.topic,
  });

  // Factory constructor for creating a new Interest instance from a map
  factory Interest.fromJson(Map<String, dynamic> json) => _$InterestFromJson(json);

  // Method for converting an Interest instance to a map
  Map<String, dynamic> toJson() => _$InterestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InterestList {
  final List<Interest>? data;

  InterestList({this.data});

  factory InterestList.fromJson(Map<String, dynamic> json) => _$InterestListFromJson(json);
  Map<String, dynamic> toJson() => _$InterestListToJson(this);
}