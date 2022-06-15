// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipm_provinsi_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IpmProvinsiRecord> _$ipmProvinsiRecordSerializer =
    new _$IpmProvinsiRecordSerializer();

class _$IpmProvinsiRecordSerializer
    implements StructuredSerializer<IpmProvinsiRecord> {
  @override
  final Iterable<Type> types = const [IpmProvinsiRecord, _$IpmProvinsiRecord];
  @override
  final String wireName = 'IpmProvinsiRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, IpmProvinsiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ipm;
    if (value != null) {
      result
        ..add('ipm')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.namaProvinsi;
    if (value != null) {
      result
        ..add('namaProvinsi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  IpmProvinsiRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IpmProvinsiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ipm':
          result.ipm = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'namaProvinsi':
          result.namaProvinsi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$IpmProvinsiRecord extends IpmProvinsiRecord {
  @override
  final int ipm;
  @override
  final String namaProvinsi;
  @override
  final DocumentReference<Object> reference;

  factory _$IpmProvinsiRecord(
          [void Function(IpmProvinsiRecordBuilder) updates]) =>
      (new IpmProvinsiRecordBuilder()..update(updates)).build();

  _$IpmProvinsiRecord._({this.ipm, this.namaProvinsi, this.reference})
      : super._();

  @override
  IpmProvinsiRecord rebuild(void Function(IpmProvinsiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpmProvinsiRecordBuilder toBuilder() =>
      new IpmProvinsiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpmProvinsiRecord &&
        ipm == other.ipm &&
        namaProvinsi == other.namaProvinsi &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, ipm.hashCode), namaProvinsi.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IpmProvinsiRecord')
          ..add('ipm', ipm)
          ..add('namaProvinsi', namaProvinsi)
          ..add('reference', reference))
        .toString();
  }
}

class IpmProvinsiRecordBuilder
    implements Builder<IpmProvinsiRecord, IpmProvinsiRecordBuilder> {
  _$IpmProvinsiRecord _$v;

  int _ipm;
  int get ipm => _$this._ipm;
  set ipm(int ipm) => _$this._ipm = ipm;

  String _namaProvinsi;
  String get namaProvinsi => _$this._namaProvinsi;
  set namaProvinsi(String namaProvinsi) => _$this._namaProvinsi = namaProvinsi;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  IpmProvinsiRecordBuilder() {
    IpmProvinsiRecord._initializeBuilder(this);
  }

  IpmProvinsiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipm = $v.ipm;
      _namaProvinsi = $v.namaProvinsi;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpmProvinsiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpmProvinsiRecord;
  }

  @override
  void update(void Function(IpmProvinsiRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IpmProvinsiRecord build() {
    final _$result = _$v ??
        new _$IpmProvinsiRecord._(
            ipm: ipm, namaProvinsi: namaProvinsi, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
