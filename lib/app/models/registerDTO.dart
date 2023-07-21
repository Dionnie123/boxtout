import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
part 'registerDTO.freezed.dart';
part 'registerDTO.g.dart';
part 'registerDTO.gform.dart';

@freezed
@Rf()
class RegisterDTO with _$RegisterDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  factory RegisterDTO({
    String? full_name,
    String? email,
    String? password,
    String? password_confirmation,
    bool? is_agree,
  }) = _RegisterDTO;

  factory RegisterDTO.fromJson(Map<String, dynamic> json) =>
      _$RegisterDTOFromJson(json);
}
