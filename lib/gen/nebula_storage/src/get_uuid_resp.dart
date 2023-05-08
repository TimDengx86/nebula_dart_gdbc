// ignore_for_file: unnecessary_this, unnecessary_new, non_constant_identifier_names, annotate_overrides, no_leading_underscores_for_local_identifiers, constant_identifier_names, unused_import, import_of_legacy_library_into_null_safe, slash_for_doc_comments, empty_constructor_bodies

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.get_uuid_resp;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class GetUUIDResp implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("GetUUIDResp");
  static final TField _RESULT_FIELD_DESC =
      new TField("result", TType.STRUCT, 1);
  static final TField _ID_FIELD_DESC = new TField("id", TType.STRUCT, 2);

  ResponseCommon? _result;
  static const int RESULT = 1;
  t_nebula.Value? _id;
  static const int ID = 2;

  GetUUIDResp() {}

  // result
  ResponseCommon? get result => this._result;

  set result(ResponseCommon? result) {
    this._result = result;
  }

  bool isSetResult() => this.result != null;

  unsetResult() {
    this.result = null;
  }

  // id
  t_nebula.Value? get id => this._id;

  set id(t_nebula.Value? id) {
    this._id = id;
  }

  bool isSetId() => this.id != null;

  unsetId() {
    this.id = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case RESULT:
        return this.result;
      case ID:
        return this.id;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case RESULT:
        if (value == null) {
          unsetResult();
        } else {
          this.result = value as ResponseCommon?;
        }
        break;

      case ID:
        if (value == null) {
          unsetId();
        } else {
          this.id = value as t_nebula.Value?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case RESULT:
        return isSetResult();
      case ID:
        return isSetId();
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
        case RESULT:
          if (field.type == TType.STRUCT) {
            this.result = new ResponseCommon();
            this.result?.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ID:
          if (field.type == TType.STRUCT) {
            this.id = new t_nebula.Value();
            this.id?.read(iprot);
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
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.result != null) {
      oprot.writeFieldBegin(_RESULT_FIELD_DESC);
      this.result?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.id != null) {
      oprot.writeFieldBegin(_ID_FIELD_DESC);
      this.id?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("GetUUIDResp(");

    ret.write("result:");
    if (this.result == null) {
      ret.write("null");
    } else {
      ret.write(this.result);
    }

    ret.write(", ");
    ret.write("id:");
    if (this.id == null) {
      ret.write("null");
    } else {
      ret.write(this.id);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    if (result == null) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN,
          "Required field 'result' was not present! Struct: ${toString()}");
    }
    // check that fields of type enum have valid values
  }
}