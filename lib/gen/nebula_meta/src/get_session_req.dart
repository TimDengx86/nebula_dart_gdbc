/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.get_session_req;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class GetSessionReq implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("GetSessionReq");
  static final TField _SESSION_ID_FIELD_DESC =
      new TField("session_id", TType.I64, 1);

  int _session_id = 0;
  static const int SESSION_ID = 1;

  bool __isset_session_id = false;

  GetSessionReq() {}

  // session_id
  int get session_id => this._session_id;

  set session_id(int session_id) {
    this._session_id = session_id;
    this.__isset_session_id = true;
  }

  bool isSetSession_id() => this.__isset_session_id;

  unsetSession_id() {
    this.__isset_session_id = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SESSION_ID:
        return this.session_id;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case SESSION_ID:
        if (value == null) {
          unsetSession_id();
        } else {
          this.session_id = value as int;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SESSION_ID:
        return isSetSession_id();
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
        case SESSION_ID:
          if (field.type == TType.I64) {
            this.session_id = iprot.readI64();
            this.__isset_session_id = true;
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
    oprot.writeFieldBegin(_SESSION_ID_FIELD_DESC);
    oprot.writeI64(this.session_id);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("GetSessionReq(");

    ret.write("session_id:");
    ret.write(this.session_id);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}