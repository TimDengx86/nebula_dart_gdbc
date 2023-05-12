// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.blocking_sign_request;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class BlockingSignRequest implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("BlockingSignRequest");
  static final TField _SPACE_IDS_FIELD_DESC =
      new TField("space_ids", TType.LIST, 1);
  static final TField _SIGN_FIELD_DESC = new TField("sign", TType.I32, 2);

  List<int>? _space_ids;
  static const int SPACE_IDS = 1;
  int? _sign;
  static const int SIGN = 2;

  bool __isset_sign = false;

  BlockingSignRequest() {}

  // space_ids
  List<int>? get space_ids => this._space_ids;

  set space_ids(List<int>? space_ids) {
    this._space_ids = space_ids;
  }

  bool isSetSpace_ids() => this.space_ids != null;

  unsetSpace_ids() {
    this.space_ids = null;
  }

  // sign
  int? get sign => this._sign;

  set sign(int? sign) {
    this._sign = sign;
    this.__isset_sign = true;
  }

  bool isSetSign() => this.__isset_sign;

  unsetSign() {
    this.__isset_sign = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SPACE_IDS:
        return this.space_ids;
      case SIGN:
        return this.sign;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case SPACE_IDS:
        if (value == null) {
          unsetSpace_ids();
        } else {
          this.space_ids = value as List<int>?;
        }
        break;

      case SIGN:
        if (value == null) {
          unsetSign();
        } else {
          this.sign = value as int?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SPACE_IDS:
        return isSetSpace_ids();
      case SIGN:
        return isSetSign();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case SPACE_IDS:
          if (field.type == TType.LIST) {
            {
              TList _list306 = iprot.readListBegin();
              this.space_ids = <int>[];
              for (int _i307 = 0; _i307 < _list306.length; ++_i307) {
                int _elem308;
                _elem308 = iprot.readI32();
                this.space_ids?.add(_elem308);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SIGN:
          if (field.type == TType.I32) {
            this.sign = iprot.readI32();
            this.__isset_sign = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    if (!__isset_sign) {
      throw new TProtocolError(
          TProtocolErrorType.UNKNOWN,
          "Required field 'sign' was not found in serialized data! Struct: " +
              toString());
    }

    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.space_ids != null) {
      oprot.writeFieldBegin(_SPACE_IDS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.I32, this.space_ids?.length));
        for (var elem309 in this.space_ids ?? []) {
          oprot.writeI32(elem309);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_SIGN_FIELD_DESC);
    oprot.writeI32(this.sign);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("BlockingSignRequest(");

    ret.write("space_ids:");
    if (this.space_ids == null) {
      ret.write("null");
    } else {
      ret.write(this.space_ids);
    }

    ret.write(", ");
    ret.write("sign:");
    String? sign_name = EngineSignType.VALUES_TO_NAMES[this.sign];
    if (sign_name != null) {
      ret.write(sign_name);
      ret.write(" (");
    }
    ret.write(this.sign);
    if (sign_name != null) {
      ret.write(")");
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // alas, we cannot check 'sign' because it's a primitive and you chose the non-beans generator.
    // check that fields of type enum have valid values
    if (isSetSign() && !EngineSignType.VALID_VALUES.contains(sign)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN,
          "The field 'sign' has been assigned the invalid value $sign");
    }
  }
}
