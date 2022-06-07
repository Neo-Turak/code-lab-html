import 'dart:convert';

class ProfileModel {
  final String? s;
  final int? n;
  final bool? b;

  ProfileModel({
      required this.s,
      required this.n,
      required this.b,
  });

  factory ProfileModel.fromRawJson(String str) => 
      ProfileModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileModel.fromJson(dynamic json) => ProfileModel(
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
