import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreguntaARecord extends FirestoreRecord {
  PreguntaARecord._(
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
          ? parent.collection('pregunta_a')
          : FirebaseFirestore.instance.collectionGroup('pregunta_a');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('pregunta_a').doc();

  static Stream<PreguntaARecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreguntaARecord.fromSnapshot(s));

  static Future<PreguntaARecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreguntaARecord.fromSnapshot(s));

  static PreguntaARecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreguntaARecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreguntaARecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreguntaARecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreguntaARecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreguntaARecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreguntaARecordData({
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

class PreguntaARecordDocumentEquality implements Equality<PreguntaARecord> {
  const PreguntaARecordDocumentEquality();

  @override
  bool equals(PreguntaARecord? e1, PreguntaARecord? e2) {
    return e1?.pregunta == e2?.pregunta && e1?.isTrue == e2?.isTrue;
  }

  @override
  int hash(PreguntaARecord? e) =>
      const ListEquality().hash([e?.pregunta, e?.isTrue]);

  @override
  bool isValidKey(Object? o) => o is PreguntaARecord;
}
