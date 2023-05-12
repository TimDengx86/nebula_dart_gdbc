// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.schema;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class Schema implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("Schema");
  static final TField _COLUMNS_FIELD_DESC =
      new TField("columns", TType.LIST, 1);
  static final TField _SCHEMA_PROP_FIELD_DESC =
      new TField("schema_prop", TType.STRUCT, 2);

  List<ColumnDef>? _columns;
  static const int COLUMNS = 1;
  SchemaProp? _schema_prop;
  static const int SCHEMA_PROP = 2;

  Schema() {}

  // columns
  List<ColumnDef>? get columns => this._columns;

  set columns(List<ColumnDef>? columns) {
    this._columns = columns;
  }

  bool isSetColumns() => this.columns != null;

  unsetColumns() {
    this.columns = null;
  }

  // schema_prop
  SchemaProp? get schema_prop => this._schema_prop;

  set schema_prop(SchemaProp? schema_prop) {
    this._schema_prop = schema_prop;
  }

  bool isSetSchema_prop() => this.schema_prop != null;

  unsetSchema_prop() {
    this.schema_prop = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case COLUMNS:
        return this.columns;
      case SCHEMA_PROP:
        return this.schema_prop;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case COLUMNS:
        if (value == null) {
          unsetColumns();
        } else {
          this.columns = value as List<ColumnDef>;
        }
        break;

      case SCHEMA_PROP:
        if (value == null) {
          unsetSchema_prop();
        } else {
          this.schema_prop = value as SchemaProp;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case COLUMNS:
        return isSetColumns();
      case SCHEMA_PROP:
        return isSetSchema_prop();
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
        case COLUMNS:
          if (field.type == TType.LIST) {
            {
              TList _list0 = iprot.readListBegin();
              this.columns = <ColumnDef>[];
              for (int _i1 = 0; _i1 < _list0.length; ++_i1) {
                ColumnDef _elem2;
                _elem2 = new ColumnDef();
                _elem2.read(iprot);
                this.columns?.add(_elem2);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SCHEMA_PROP:
          if (field.type == TType.STRUCT) {
            this.schema_prop = new SchemaProp();
            this.schema_prop?.read(iprot);
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
    if (this.columns != null) {
      oprot.writeFieldBegin(_COLUMNS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.columns?.length));
        for (var elem3 in this.columns ?? []) {
          elem3.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.schema_prop != null) {
      oprot.writeFieldBegin(_SCHEMA_PROP_FIELD_DESC);
      this.schema_prop?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Schema(");

    ret.write("columns:");
    if (this.columns == null) {
      ret.write("null");
    } else {
      ret.write(this.columns);
    }

    ret.write(", ");
    ret.write("schema_prop:");
    if (this.schema_prop == null) {
      ret.write("null");
    } else {
      ret.write(this.schema_prop);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
