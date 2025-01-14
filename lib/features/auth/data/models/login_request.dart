
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.g.dart';
@JsonSerializable()
class LoginRequest {
  LoginRequest({this.email, this.password});
 Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
  final String? email;
  final String? password;
}
