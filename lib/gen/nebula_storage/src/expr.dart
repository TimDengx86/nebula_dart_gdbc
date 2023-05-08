// ignore_for_file: unnecessary_this, unnecessary_new, non_constant_identifier_names, annotate_overrides, no_leading_underscores_for_local_identifiers, constant_identifier_names, unused_import, import_of_legacy_library_into_null_safe, slash_for_doc_comments, empty_constructor_bodies

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.expr;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class Expr implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("Expr");
  static final TField _ALIAS_FIELD_DESC = new TField("alias", TType.STRING, 1);
  static final TField _EXPR_FIELD_DESC = new TField("expr", TType.STRING, 2);

  Int8List? _alias;
  static const int ALIAS = 1;
  Int8List? _expr;
  static const int EXPR = 2;

  Expr() {}

  // alias
  Int8List? get alias => this._alias;

  set alias(Int8List? alias) {
    this._alias = alias;
  }

  bool isSetAlias() => this.alias != null;

  unsetAlias() {
    this.alias = null;
  }

  // expr
  Int8List? get expr => this._expr;

  set expr(Int8List? expr) {
    this._expr = expr;
  }

  bool isSetExpr() => this.expr != null;

  unsetExpr() {
    this.expr = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ALIAS:
        return this.alias;
      case EXPR:
        return this.expr;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case ALIAS:
        if (value == null) {
          unsetAlias();
        } else {
          this.alias = value as Int8List?;
        }
        break;

      case EXPR:
        if (value == null) {
          unsetExpr();
        } else {
          this.expr = value as Int8List?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ALIAS:
        return isSetAlias();
      case EXPR:
        return isSetExpr();
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
        case ALIAS:
          if (field.type == TType.STRING) {
            this.alias = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EXPR:
          if (field.type == TType.STRING) {
            this.expr = iprot.readBinary();
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
    if (this.alias != null) {
      oprot.writeFieldBegin(_ALIAS_FIELD_DESC);
      oprot.writeBinary(this.alias);
      oprot.writeFieldEnd();
    }
    if (this.expr != null) {
      oprot.writeFieldBegin(_EXPR_FIELD_DESC);
      oprot.writeBinary(this.expr);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Expr(");

    ret.write("alias:");
    if (this.alias == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("expr:");
    if (this.expr == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}