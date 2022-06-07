import 'dart:convert';

class CommunityModel {
  final String? s;
  final int? n;
  final bool? b;

  CommunityModel({
      required this.s,
      required this.n,
      required this.b,
  });

  factory CommunityModel.fromRawJson(String str) => 
      CommunityModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommunityModel.fromJson(dynamic json) => CommunityModel(
      s: json['s'] == null ? null : json['s'] as String,
      n: json['n'] == null ? null : json['n'] as int,
      b: json['b'] == null ? null : json['b'] as bool,
  );

  Map<String, dynamic> toJson() => {
      's': s == null ? null : s,
      'n': n == null ? null : n,
      'b': b == null ? null : b,
  };
}
