// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.create_space_as_req;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class CreateSpaceAsReq implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("CreateSpaceAsReq");
  static final TField _OLD_SPACE_NAME_FIELD_DESC =
      new TField("old_space_name", TType.STRING, 1);
  static final TField _NEW_SPACE_NAME_FIELD_DESC =
      new TField("new_space_name", TType.STRING, 2);
  static final TField _IF_NOT_EXISTS_FIELD_DESC =
      new TField("if_not_exists", TType.BOOL, 3);

  Int8List? _old_space_name;
  static const int OLD_SPACE_NAME = 1;
  Int8List? _new_space_name;
  static const int NEW_SPACE_NAME = 2;
  bool? _if_not_exists = false;
  static const int IF_NOT_EXISTS = 3;

  bool __isset_if_not_exists = false;

  CreateSpaceAsReq() {}

  // old_space_name
  Int8List? get old_space_name => this._old_space_name;

  set old_space_name(Int8List? old_space_name) {
    this._old_space_name = old_space_name;
  }

  bool isSetOld_space_name() => this.old_space_name != null;

  unsetOld_space_name() {
    this.old_space_name = null;
  }

  // new_space_name
  Int8List? get new_space_name => this._new_space_name;

  set new_space_name(Int8List? new_space_name) {
    this._new_space_name = new_space_name;
  }

  bool isSetNew_space_name() => this.new_space_name != null;

  unsetNew_space_name() {
    this.new_space_name = null;
  }

  // if_not_exists
  bool? get if_not_exists => this._if_not_exists;

  set if_not_exists(bool? if_not_exists) {
    this._if_not_exists = if_not_exists;
    this.__isset_if_not_exists = true;
  }

  bool isSetIf_not_exists() => this.__isset_if_not_exists;

  unsetIf_not_exists() {
    this.__isset_if_not_exists = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case OLD_SPACE_NAME:
        return this.old_space_name;
      case NEW_SPACE_NAME:
        return this.new_space_name;
      case IF_NOT_EXISTS:
        return this.if_not_exists;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case OLD_SPACE_NAME:
        if (value == null) {
          unsetOld_space_name();
        } else {
          this.old_space_name = value as Int8List?;
        }
        break;

      case NEW_SPACE_NAME:
        if (value == null) {
          unsetNew_space_name();
        } else {
          this.new_space_name = value as Int8List?;
        }
        break;

      case IF_NOT_EXISTS:
        if (value == null) {
          unsetIf_not_exists();
        } else {
          this.if_not_exists = value as bool?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case OLD_SPACE_NAME:
        return isSetOld_space_name();
      case NEW_SPACE_NAME:
        return isSetNew_space_name();
      case IF_NOT_EXISTS:
        return isSetIf_not_exists();
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
        case OLD_SPACE_NAME:
          if (field.type == TType.STRING) {
            this.old_space_name = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NEW_SPACE_NAME:
          if (field.type == TType.STRING) {
            this.new_space_name = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IF_NOT_EXISTS:
          if (field.type == TType.BOOL) {
            this.if_not_exists = iprot.readBool();
            this.__isset_if_not_exists = true;
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
    if (this.old_space_name != null) {
      oprot.writeFieldBegin(_OLD_SPACE_NAME_FIELD_DESC);
      oprot.writeBinary(this.old_space_name);
      oprot.writeFieldEnd();
    }
    if (this.new_space_name != null) {
      oprot.writeFieldBegin(_NEW_SPACE_NAME_FIELD_DESC);
      oprot.writeBinary(this.new_space_name);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IF_NOT_EXISTS_FIELD_DESC);
    oprot.writeBool(this.if_not_exists);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("CreateSpaceAsReq(");

    ret.write("old_space_name:");
    if (this.old_space_name == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("new_space_name:");
    if (this.new_space_name == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("if_not_exists:");
    ret.write(this.if_not_exists);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
