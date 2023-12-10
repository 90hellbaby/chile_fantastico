// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImgtemporalStruct extends FFFirebaseStruct {
  ImgtemporalStruct({
    String? imgtemporal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _imgtemporal = imgtemporal,
        super(firestoreUtilData);

  // "imgtemporal" field.
  String? _imgtemporal;
  String get imgtemporal => _imgtemporal ?? '';
  set imgtemporal(String? val) => _imgtemporal = val;
  bool hasImgtemporal() => _imgtemporal != null;

  static ImgtemporalStruct fromMap(Map<String, dynamic> data) =>
      ImgtemporalStruct(
        imgtemporal: data['imgtemporal'] as String?,
      );

  static ImgtemporalStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ImgtemporalStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'imgtemporal': _imgtemporal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imgtemporal': serializeParam(
          _imgtemporal,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImgtemporalStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImgtemporalStruct(
        imgtemporal: deserializeParam(
          data['imgtemporal'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImgtemporalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImgtemporalStruct && imgtemporal == other.imgtemporal;
  }

  @override
  int get hashCode => const ListEquality().hash([imgtemporal]);
}

ImgtemporalStruct createImgtemporalStruct({
  String? imgtemporal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImgtemporalStruct(
      imgtemporal: imgtemporal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImgtemporalStruct? updateImgtemporalStruct(
  ImgtemporalStruct? imgtemporalStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imgtemporalStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImgtemporalStructData(
  Map<String, dynamic> firestoreData,
  ImgtemporalStruct? imgtemporalStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imgtemporalStruct == null) {
    return;
  }
  if (imgtemporalStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imgtemporalStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imgtemporalStructData =
      getImgtemporalFirestoreData(imgtemporalStruct, forFieldValue);
  final nestedData =
      imgtemporalStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imgtemporalStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImgtemporalFirestoreData(
  ImgtemporalStruct? imgtemporalStruct, [
  bool forFieldValue = false,
]) {
  if (imgtemporalStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imgtemporalStruct.toMap());

  // Add any Firestore field values
  imgtemporalStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImgtemporalListFirestoreData(
  List<ImgtemporalStruct>? imgtemporalStructs,
) =>
    imgtemporalStructs
        ?.map((e) => getImgtemporalFirestoreData(e, true))
        .toList() ??
    [];
