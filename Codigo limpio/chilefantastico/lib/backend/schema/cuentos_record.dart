import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuentosRecord extends FirestoreRecord {
  CuentosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "portada" field.
  String? _portada;
  String get portada => _portada ?? '';
  bool hasPortada() => _portada != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "idquiz" field.
  DocumentReference? _idquiz;
  DocumentReference? get idquiz => _idquiz;
  bool hasIdquiz() => _idquiz != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _portada = snapshotData['portada'] as String?;
    _link = snapshotData['link'] as String?;
    _idquiz = snapshotData['idquiz'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cuentos');

  static Stream<CuentosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuentosRecord.fromSnapshot(s));

  static Future<CuentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuentosRecord.fromSnapshot(s));

  static CuentosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CuentosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuentosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuentosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuentosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuentosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuentosRecordData({
  String? titulo,
  String? descripcion,
  String? portada,
  String? link,
  DocumentReference? idquiz,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'portada': portada,
      'link': link,
      'idquiz': idquiz,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuentosRecordDocumentEquality implements Equality<CuentosRecord> {
  const CuentosRecordDocumentEquality();

  @override
  bool equals(CuentosRecord? e1, CuentosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.portada == e2?.portada &&
        e1?.link == e2?.link &&
        e1?.idquiz == e2?.idquiz;
  }

  @override
  int hash(CuentosRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.descripcion, e?.portada, e?.link, e?.idquiz]);

  @override
  bool isValidKey(Object? o) => o is CuentosRecord;
}
