import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreguntaDRecord extends FirestoreRecord {
  PreguntaDRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pregunta" field.
  String? _pregunta;
  String get pregunta => _pregunta ?? '';
  bool hasPregunta() => _pregunta != null;

  // "is_true" field.
  bool? _isTrue;
  bool get isTrue => _isTrue ?? false;
  bool hasIsTrue() => _isTrue != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _pregunta = snapshotData['pregunta'] as String?;
    _isTrue = snapshotData['is_true'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pregunta_d')
          : FirebaseFirestore.instance.collectionGroup('pregunta_d');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('pregunta_d').doc();

  static Stream<PreguntaDRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreguntaDRecord.fromSnapshot(s));

  static Future<PreguntaDRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreguntaDRecord.fromSnapshot(s));

  static PreguntaDRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreguntaDRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreguntaDRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreguntaDRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreguntaDRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreguntaDRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreguntaDRecordData({
  String? pregunta,
  bool? isTrue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pregunta': pregunta,
      'is_true': isTrue,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreguntaDRecordDocumentEquality implements Equality<PreguntaDRecord> {
  const PreguntaDRecordDocumentEquality();

  @override
  bool equals(PreguntaDRecord? e1, PreguntaDRecord? e2) {
    return e1?.pregunta == e2?.pregunta && e1?.isTrue == e2?.isTrue;
  }

  @override
  int hash(PreguntaDRecord? e) =>
      const ListEquality().hash([e?.pregunta, e?.isTrue]);

  @override
  bool isValidKey(Object? o) => o is PreguntaDRecord;
}
