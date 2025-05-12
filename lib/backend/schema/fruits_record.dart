import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FruitsRecord extends FirestoreRecord {
  FruitsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "prevailingprice" field.
  double? _prevailingprice;
  double get prevailingprice => _prevailingprice ?? 0.0;
  bool hasPrevailingprice() => _prevailingprice != null;

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
    _prevailingprice = castToType<double>(snapshotData['prevailingprice']);
    _highprice = castToType<double>(snapshotData['highprice']);
    _lowprice = castToType<double>(snapshotData['lowprice']);
    _specification = snapshotData['specification'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FRUITS');

  static Stream<FruitsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FruitsRecord.fromSnapshot(s));

  static Future<FruitsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FruitsRecord.fromSnapshot(s));

  static FruitsRecord fromSnapshot(DocumentSnapshot snapshot) => FruitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FruitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FruitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FruitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FruitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFruitsRecordData({
  String? name,
  double? prevailingprice,
  double? highprice,
  double? lowprice,
  String? specification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'prevailingprice': prevailingprice,
      'highprice': highprice,
      'lowprice': lowprice,
      'specification': specification,
    }.withoutNulls,
  );

  return firestoreData;
}

class FruitsRecordDocumentEquality implements Equality<FruitsRecord> {
  const FruitsRecordDocumentEquality();

  @override
  bool equals(FruitsRecord? e1, FruitsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.prevailingprice == e2?.prevailingprice &&
        e1?.highprice == e2?.highprice &&
        e1?.lowprice == e2?.lowprice &&
        e1?.specification == e2?.specification;
  }

  @override
  int hash(FruitsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.prevailingprice,
        e?.highprice,
        e?.lowprice,
        e?.specification
      ]);

  @override
  bool isValidKey(Object? o) => o is FruitsRecord;
}
