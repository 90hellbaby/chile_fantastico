import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreguntaBRecord extends FirestoreRecord {
  PreguntaBRecord._(
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
          ? parent.collection('pregunta_b')
          : FirebaseFirestore.instance.collectionGroup('pregunta_b');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('pregunta_b').doc();

  static Stream<PreguntaBRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreguntaBRecord.fromSnapshot(s));

  static Future<PreguntaBRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreguntaBRecord.fromSnapshot(s));

  static PreguntaBRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreguntaBRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreguntaBRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreguntaBRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreguntaBRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreguntaBRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreguntaBRecordData({
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

class PreguntaBRecordDocumentEquality implements Equality<PreguntaBRecord> {
  const PreguntaBRecordDocumentEquality();

  @override
  bool equals(PreguntaBRecord? e1, PreguntaBRecord? e2) {
    return e1?.pregunta == e2?.pregunta && e1?.isTrue == e2?.isTrue;
  }

  @override
  int hash(PreguntaBRecord? e) =>
      const ListEquality().hash([e?.pregunta, e?.isTrue]);

  @override
  bool isValidKey(Object? o) => o is PreguntaBRecord;
}
