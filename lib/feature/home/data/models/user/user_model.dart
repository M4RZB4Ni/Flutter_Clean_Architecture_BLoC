


import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModelAuth with _$UserModelAuth {
  const factory UserModelAuth({
    @Default(0) int id,
    @Default('') String username,
    @Default('') String password,
    @Default('') String email,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String gender,
    @Default('') String image,
    @Default('') String token,
  }) = _UserModelAuth;

  factory UserModelAuth.fromJson(Map<String, dynamic> json) =>
      _$UserModelAuthFromJson(json);
}