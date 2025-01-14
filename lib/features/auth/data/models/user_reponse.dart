import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_reponse.g.dart';
@JsonSerializable()
class UserReponse {
  UserReponse(this.userRole);
  factory UserReponse.fromJson(Map<String, dynamic> json) =>
      _$UserReponseFromJson(json);
  @JsonKey(name: 'role')
  final String? userRole;
}
