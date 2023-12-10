import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizRecord extends FirestoreRecord {
  QuizRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "pregunta" field.
  String? _pregunta;
  String get pregunta => _pregunta ?? '';
  bool hasPregunta() => _pregunta != null;

  // "set" field.
  DocumentReference? _set;
  DocumentReference? get set => _set;
  bool hasSet() => _set != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _pregunta = snapshotData['pregunta'] as String?;
    _set = snapshotData['set'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizRecord.fromSnapshot(s));

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizRecord.fromSnapshot(s));

  static QuizRecord fromSnapshot(DocumentSnapshot snapshot) => QuizRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizRecordData({
  int? id,
  String? pregunta,
  DocumentReference? set,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'pregunta': pregunta,
      'set': set,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizRecordDocumentEquality implements Equality<QuizRecord> {
  const QuizRecordDocumentEquality();

  @override
  bool equals(QuizRecord? e1, QuizRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.pregunta == e2?.pregunta &&
        e1?.set == e2?.set;
  }

  @override
  int hash(QuizRecord? e) =>
      const ListEquality().hash([e?.id, e?.pregunta, e?.set]);

  @override
  bool isValidKey(Object? o) => o is QuizRecord;
}
