import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ipm_provinsi_record.g.dart';

abstract class IpmProvinsiRecord
    implements Built<IpmProvinsiRecord, IpmProvinsiRecordBuilder> {
  static Serializer<IpmProvinsiRecord> get serializer =>
      _$ipmProvinsiRecordSerializer;

  @nullable
  int get ipm;

  @nullable
  String get namaProvinsi;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IpmProvinsiRecordBuilder builder) => builder
    ..ipm = 0
    ..namaProvinsi = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ipmProvinsi');

  static Stream<IpmProvinsiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<IpmProvinsiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  IpmProvinsiRecord._();
  factory IpmProvinsiRecord([void Function(IpmProvinsiRecordBuilder) updates]) =
      _$IpmProvinsiRecord;

  static IpmProvinsiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIpmProvinsiRecordData({
  int ipm,
  String namaProvinsi,
}) =>
    serializers.toFirestore(
        IpmProvinsiRecord.serializer,
        IpmProvinsiRecord((i) => i
          ..ipm = ipm
          ..namaProvinsi = namaProvinsi));
