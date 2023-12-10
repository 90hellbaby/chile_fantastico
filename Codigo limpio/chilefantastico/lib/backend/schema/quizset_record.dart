import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizsetRecord extends FirestoreRecord {
  QuizsetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "totalpreguntas" field.
  int? _totalpreguntas;
  int get totalpreguntas => _totalpreguntas ?? 0;
  bool hasTotalpreguntas() => _totalpreguntas != null;

  // "duracion" field.
  int? _duracion;
  int get duracion => _duracion ?? 0;
  bool hasDuracion() => _duracion != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _totalpreguntas = castToType<int>(snapshotData['totalpreguntas']);
    _duracion = castToType<int>(snapshotData['duracion']);
    _descripcion = snapshotData['descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizset');

  static Stream<QuizsetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizsetRecord.fromSnapshot(s));

  static Future<QuizsetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizsetRecord.fromSnapshot(s));

  static QuizsetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizsetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizsetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizsetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizsetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizsetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizsetRecordData({
  String? nombre,
  int? totalpreguntas,
  int? duracion,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'totalpreguntas': totalpreguntas,
      'duracion': duracion,
      'descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizsetRecordDocumentEquality implements Equality<QuizsetRecord> {
  const QuizsetRecordDocumentEquality();

  @override
  bool equals(QuizsetRecord? e1, QuizsetRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.totalpreguntas == e2?.totalpreguntas &&
        e1?.duracion == e2?.duracion &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(QuizsetRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.totalpreguntas, e?.duracion, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is QuizsetRecord;
}
