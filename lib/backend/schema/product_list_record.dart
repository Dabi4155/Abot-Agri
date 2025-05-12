import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductListRecord extends FirestoreRecord {
  ProductListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "user_uid" field.
  String? _userUid;
  String get userUid => _userUid ?? '';
  bool hasUserUid() => _userUid != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "posterEmail" field.
  String? _posterEmail;
  String get posterEmail => _posterEmail ?? '';
  bool hasPosterEmail() => _posterEmail != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _userUid = snapshotData['user_uid'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _posterEmail = snapshotData['posterEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('product-list');

  static Stream<ProductListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductListRecord.fromSnapshot(s));

  static Future<ProductListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductListRecord.fromSnapshot(s));

  static ProductListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductListRecordData({
  String? name,
  String? description,
  String? image,
  int? price,
  String? userUid,
  String? productId,
  String? posterEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'user_uid': userUid,
      'product_id': productId,
      'posterEmail': posterEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductListRecordDocumentEquality implements Equality<ProductListRecord> {
  const ProductListRecordDocumentEquality();

  @override
  bool equals(ProductListRecord? e1, ProductListRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.price == e2?.price &&
        e1?.userUid == e2?.userUid &&
        e1?.productId == e2?.productId &&
        e1?.posterEmail == e2?.posterEmail;
  }

  @override
  int hash(ProductListRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.image,
        e?.price,
        e?.userUid,
        e?.productId,
        e?.posterEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductListRecord;
}
