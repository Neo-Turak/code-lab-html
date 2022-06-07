import 'dart:convert';

class DiscussModel {
  final String? s;
  final int? n;
  final bool? b;

  DiscussModel({
      required this.s,
      required this.n,
      required this.b,
  });

  factory DiscussModel.fromRawJson(String str) => 
      DiscussModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DiscussModel.fromJson(dynamic json) => DiscussModel(
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
