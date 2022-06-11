import 'dart:convert';

class ClabModel {
  final String? s;
  final int? n;
  final bool? b;

  ClabModel({
      required this.s,
      required this.n,
      required this.b,
  });

  factory ClabModel.fromRawJson(String str) => 
      ClabModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClabModel.fromJson(dynamic json) => ClabModel(
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
