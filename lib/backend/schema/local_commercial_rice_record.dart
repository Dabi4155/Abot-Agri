import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalCommercialRiceRecord extends FirestoreRecord {
  LocalCommercialRiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "prevailingpriece" field.
  double? _prevailingpriece;
  double get prevailingpriece => _prevailingpriece ?? 0.0;
  bool hasPrevailingpriece() => _prevailingpriece != null;

  // "highprice" field.
  double? _highprice;
  double get highprice => _highprice ?? 0.0;
  bool hasHighprice() => _highprice != null;

  // "lowprice" field.
  double? _lowprice;
  double get lowprice => _lowprice ?? 0.0;
  bool hasLowprice() => _lowprice != null;

  // "specification" field.
  String? _specification;
  String get specification => _specification ?? '';
  bool hasSpecification() => _specification != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _prevailingpriece = castToType<double>(snapshotData['prevailingpriece']);
    _highprice = castToType<double>(snapshotData['highprice']);
    _lowprice = castToType<double>(snapshotData['lowprice']);
    _specification = snapshotData['specification'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Local_Commercial_Rice');

  static Stream<LocalCommercialRiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocalCommercialRiceRecord.fromSnapshot(s));

  static Future<LocalCommercialRiceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LocalCommercialRiceRecord.fromSnapshot(s));

  static LocalCommercialRiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocalCommercialRiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocalCommercialRiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocalCommercialRiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocalCommercialRiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocalCommercialRiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocalCommercialRiceRecordData({
  String? name,
  double? prevailingpriece,
  double? highprice,
  double? lowprice,
  String? specification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'prevailingpriece': prevailingpriece,
      'highprice': highprice,
      'lowprice': lowprice,
      'specification': specification,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocalCommercialRiceRecordDocumentEquality
    implements Equality<LocalCommercialRiceRecord> {
  const LocalCommercialRiceRecordDocumentEquality();

  @override
  bool equals(LocalCommercialRiceRecord? e1, LocalCommercialRiceRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.prevailingpriece == e2?.prevailingpriece &&
        e1?.highprice == e2?.highprice &&
        e1?.lowprice == e2?.lowprice &&
        e1?.specification == e2?.specification;
  }

  @override
  int hash(LocalCommercialRiceRecord? e) => const ListEquality().hash([
        e?.name,
        e?.prevailingpriece,
        e?.highprice,
        e?.lowprice,
        e?.specification
      ]);

  @override
  bool isValidKey(Object? o) => o is LocalCommercialRiceRecord;
}
