import 'package:freezed_annotation/freezed_annotation.dart';


part 'sign_up_request_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.avatar,
    required this.name,
    required this.phone,
  });

  final String name;
  final String email;
  final String password;
  final String avatar;
   final String phone;

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
