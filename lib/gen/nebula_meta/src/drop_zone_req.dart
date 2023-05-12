// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.drop_zone_req;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class DropZoneReq implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("DropZoneReq");
  static final TField _ZONE_NAME_FIELD_DESC =
      new TField("zone_name", TType.STRING, 1);

  Int8List? _zone_name;
  static const int ZONE_NAME = 1;

  DropZoneReq() {}

  // zone_name
  Int8List? get zone_name => this._zone_name;

  set zone_name(Int8List? zone_name) {
    this._zone_name = zone_name;
  }

  bool isSetZone_name() => this.zone_name != null;

  unsetZone_name() {
    this.zone_name = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ZONE_NAME:
        return this.zone_name;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case ZONE_NAME:
        if (value == null) {
          unsetZone_name();
        } else {
          this.zone_name = value as Int8List?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ZONE_NAME:
        return isSetZone_name();
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
        case ZONE_NAME:
          if (field.type == TType.STRING) {
            this.zone_name = iprot.readBinary();
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
    if (this.zone_name != null) {
      oprot.writeFieldBegin(_ZONE_NAME_FIELD_DESC);
      oprot.writeBinary(this.zone_name);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("DropZoneReq(");

    ret.write("zone_name:");
    if (this.zone_name == null) {
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
