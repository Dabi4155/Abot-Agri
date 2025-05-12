import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpicesRecord extends FirestoreRecord {
  SpicesRecord._(
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

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _prevailingprice = castToType<double>(snapshotData['prevailingprice']);
    _highprice = castToType<double>(snapshotData['highprice']);
    _lowprice = castToType<double>(snapshotData['lowprice']);
    _specification = snapshotData['specification'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SPICES');

  static Stream<SpicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpicesRecord.fromSnapshot(s));

  static Future<SpicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpicesRecord.fromSnapshot(s));

  static SpicesRecord fromSnapshot(DocumentSnapshot snapshot) => SpicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpicesRecordData({
  String? name,
  double? prevailingprice,
  double? highprice,
  double? lowprice,
  String? specification,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'prevailingprice': prevailingprice,
      'highprice': highprice,
      'lowprice': lowprice,
      'specification': specification,
      'image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpicesRecordDocumentEquality implements Equality<SpicesRecord> {
  const SpicesRecordDocumentEquality();

  @override
  bool equals(SpicesRecord? e1, SpicesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.prevailingprice == e2?.prevailingprice &&
        e1?.highprice == e2?.highprice &&
        e1?.lowprice == e2?.lowprice &&
        e1?.specification == e2?.specification &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(SpicesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.prevailingprice,
        e?.highprice,
        e?.lowprice,
        e?.specification,
        e?.imageUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is SpicesRecord;
}
