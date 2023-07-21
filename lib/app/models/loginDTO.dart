import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
part 'loginDTO.freezed.dart';
part 'loginDTO.g.dart';
part 'loginDTO.gform.dart';

@freezed
@Rf()
class LoginDTO with _$LoginDTO {
  // ignore: invalid_annotation_target
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  factory LoginDTO({
    @RfControl<String>() String? email,
    @RfControl<String>() String? password,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);
}
