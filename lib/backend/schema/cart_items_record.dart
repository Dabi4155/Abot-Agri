import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemsRecord extends FirestoreRecord {
  CartItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "UserRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _productName = snapshotData['product_name'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _userId = snapshotData['user_id'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _userRef = snapshotData['UserRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart_items');

  static Stream<CartItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartItemsRecord.fromSnapshot(s));

  static Future<CartItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartItemsRecord.fromSnapshot(s));

  static CartItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartItemsRecordData({
  String? productName,
  String? productId,
  int? price,
  int? quantity,
  String? userId,
  String? imageUrl,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_name': productName,
      'product_id': productId,
      'price': price,
      'quantity': quantity,
      'user_id': userId,
      'image_url': imageUrl,
      'UserRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartItemsRecordDocumentEquality implements Equality<CartItemsRecord> {
  const CartItemsRecordDocumentEquality();

  @override
  bool equals(CartItemsRecord? e1, CartItemsRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productId == e2?.productId &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.userId == e2?.userId &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(CartItemsRecord? e) => const ListEquality().hash([
        e?.productName,
        e?.productId,
        e?.price,
        e?.quantity,
        e?.userId,
        e?.imageUrl,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CartItemsRecord;
}
