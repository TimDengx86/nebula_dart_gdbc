// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.column_type_def;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class ColumnTypeDef implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("ColumnTypeDef");
  static final TField _TYPE_FIELD_DESC = new TField("type", TType.I32, 1);
  static final TField _TYPE_LENGTH_FIELD_DESC =
      new TField("type_length", TType.I16, 2);
  static final TField _GEO_SHAPE_FIELD_DESC =
      new TField("geo_shape", TType.I32, 3);

  int? _type;
  static const int TYPE = 1;
  int? _type_length;
  static const int TYPE_LENGTH = 2;
  int? _geo_shape;
  static const int GEO_SHAPE = 3;

  bool __isset_type = false;
  bool __isset_type_length = false;
  bool __isset_geo_shape = false;

  ColumnTypeDef() {
    this.type_length = 0;
  }

  // type
  int? get type => this._type;

  set type(int? type) {
    this._type = type;
    this.__isset_type = true;
  }

  bool isSetType() => this.__isset_type;

  unsetType() {
    this.__isset_type = false;
  }

  // type_length
  int? get type_length => this._type_length;

  set type_length(int? type_length) {
    this._type_length = type_length;
    this.__isset_type_length = true;
  }

  bool isSetType_length() => this.__isset_type_length;

  unsetType_length() {
    this.__isset_type_length = false;
  }

  // geo_shape
  int? get geo_shape => this._geo_shape;

  set geo_shape(int? geo_shape) {
    this._geo_shape = geo_shape;
    this.__isset_geo_shape = true;
  }

  bool isSetGeo_shape() => this.__isset_geo_shape;

  unsetGeo_shape() {
    this.__isset_geo_shape = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return this.type;
      case TYPE_LENGTH:
        return this.type_length;
      case GEO_SHAPE:
        return this.geo_shape;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case TYPE:
        if (value == null) {
          unsetType();
        } else {
          this.type = value as int?;
        }
        break;

      case TYPE_LENGTH:
        if (value == null) {
          unsetType_length();
        } else {
          this.type_length = value as int?;
        }
        break;

      case GEO_SHAPE:
        if (value == null) {
          unsetGeo_shape();
        } else {
          this.geo_shape = value as int?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return isSetType();
      case TYPE_LENGTH:
        return isSetType_length();
      case GEO_SHAPE:
        return isSetGeo_shape();
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
        case TYPE:
          if (field.type == TType.I32) {
            this.type = iprot.readI32();
            this.__isset_type = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TYPE_LENGTH:
          if (field.type == TType.I16) {
            this.type_length = iprot.readI16();
            this.__isset_type_length = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case GEO_SHAPE:
          if (field.type == TType.I32) {
            this.geo_shape = iprot.readI32();
            this.__isset_geo_shape = true;
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
    if (!__isset_type) {
      throw new TProtocolError(
          TProtocolErrorType.UNKNOWN,
          "Required field 'type' was not found in serialized data! Struct: " +
              toString());
    }

    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_TYPE_FIELD_DESC);
    oprot.writeI32(this.type);
    oprot.writeFieldEnd();
    if (isSetType_length()) {
      oprot.writeFieldBegin(_TYPE_LENGTH_FIELD_DESC);
      oprot.writeI16(this.type_length);
      oprot.writeFieldEnd();
    }
    if (isSetGeo_shape()) {
      oprot.writeFieldBegin(_GEO_SHAPE_FIELD_DESC);
      oprot.writeI32(this.geo_shape);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("ColumnTypeDef(");

    ret.write("type:");
    String? type_name = t_nebula.PropertyType.VALUES_TO_NAMES[this.type];
    if (type_name != null) {
      ret.write(type_name);
      ret.write(" (");
    }
    ret.write(this.type);
    if (type_name != null) {
      ret.write(")");
    }

    if (isSetType_length()) {
      ret.write(", ");
      ret.write("type_length:");
      ret.write(this.type_length);
    }

    if (isSetGeo_shape()) {
      ret.write(", ");
      ret.write("geo_shape:");
      String? geo_shape_name = GeoShape.VALUES_TO_NAMES[this.geo_shape];
      if (geo_shape_name != null) {
        ret.write(geo_shape_name);
        ret.write(" (");
      }
      ret.write(this.geo_shape);
      if (geo_shape_name != null) {
        ret.write(")");
      }
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // alas, we cannot check 'type' because it's a primitive and you chose the non-beans generator.
    // check that fields of type enum have valid values
    if (isSetType() && !t_nebula.PropertyType.VALID_VALUES.contains(type)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN,
          "The field 'type' has been assigned the invalid value $type");
    }
    if (isSetGeo_shape() && !GeoShape.VALID_VALUES.contains(geo_shape)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN,
          "The field 'geo_shape' has been assigned the invalid value $geo_shape");
    }
  }
}
