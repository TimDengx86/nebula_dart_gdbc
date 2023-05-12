// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.chain_update_edge_request;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class ChainUpdateEdgeRequest implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("ChainUpdateEdgeRequest");
  static final TField _UPDATE_EDGE_REQUEST_FIELD_DESC =
      new TField("update_edge_request", TType.STRUCT, 1);
  static final TField _TERM_FIELD_DESC = new TField("term", TType.I64, 2);
  static final TField _EDGE_VERSION_FIELD_DESC =
      new TField("edge_version", TType.I64, 3);
  static final TField _SPACE_ID_FIELD_DESC =
      new TField("space_id", TType.I32, 4);
  static final TField _PARTS_FIELD_DESC = new TField("parts", TType.LIST, 5);

  UpdateEdgeRequest? _update_edge_request;
  static const int UPDATE_EDGE_REQUEST = 1;
  int _term = 0;
  static const int TERM = 2;
  int? _edge_version;
  static const int EDGE_VERSION = 3;
  int _space_id = 0;
  static const int SPACE_ID = 4;
  List<int>? _parts;
  static const int PARTS = 5;

  bool __isset_term = false;
  bool __isset_edge_version = false;
  bool __isset_space_id = false;

  ChainUpdateEdgeRequest() {}

  // update_edge_request
  UpdateEdgeRequest? get update_edge_request => this._update_edge_request;

  set update_edge_request(UpdateEdgeRequest? update_edge_request) {
    this._update_edge_request = update_edge_request;
  }

  bool isSetUpdate_edge_request() => this.update_edge_request != null;

  unsetUpdate_edge_request() {
    this.update_edge_request = null;
  }

  // term
  int get term => this._term;

  set term(int term) {
    this._term = term;
    this.__isset_term = true;
  }

  bool isSetTerm() => this.__isset_term;

  unsetTerm() {
    this.__isset_term = false;
  }

  // edge_version
  int? get edge_version => this._edge_version;

  set edge_version(int? edge_version) {
    this._edge_version = edge_version;
    this.__isset_edge_version = true;
  }

  bool isSetEdge_version() => this.__isset_edge_version;

  unsetEdge_version() {
    this.__isset_edge_version = false;
  }

  // space_id
  int get space_id => this._space_id;

  set space_id(int space_id) {
    this._space_id = space_id;
    this.__isset_space_id = true;
  }

  bool isSetSpace_id() => this.__isset_space_id;

  unsetSpace_id() {
    this.__isset_space_id = false;
  }

  // parts
  List<int>? get parts => this._parts;

  set parts(List<int>? parts) {
    this._parts = parts;
  }

  bool isSetParts() => this.parts != null;

  unsetParts() {
    this.parts = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case UPDATE_EDGE_REQUEST:
        return this.update_edge_request;
      case TERM:
        return this.term;
      case EDGE_VERSION:
        return this.edge_version;
      case SPACE_ID:
        return this.space_id;
      case PARTS:
        return this.parts;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case UPDATE_EDGE_REQUEST:
        if (value == null) {
          unsetUpdate_edge_request();
        } else {
          this.update_edge_request = value as UpdateEdgeRequest;
        }
        break;

      case TERM:
        if (value == null) {
          unsetTerm();
        } else {
          this.term = value as int;
        }
        break;

      case EDGE_VERSION:
        if (value == null) {
          unsetEdge_version();
        } else {
          this.edge_version = value as int;
        }
        break;

      case SPACE_ID:
        if (value == null) {
          unsetSpace_id();
        } else {
          this.space_id = value as int;
        }
        break;

      case PARTS:
        if (value == null) {
          unsetParts();
        } else {
          this.parts = value as List<int>;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case UPDATE_EDGE_REQUEST:
        return isSetUpdate_edge_request();
      case TERM:
        return isSetTerm();
      case EDGE_VERSION:
        return isSetEdge_version();
      case SPACE_ID:
        return isSetSpace_id();
      case PARTS:
        return isSetParts();
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
        case UPDATE_EDGE_REQUEST:
          if (field.type == TType.STRUCT) {
            this.update_edge_request = new UpdateEdgeRequest();
            this.update_edge_request?.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TERM:
          if (field.type == TType.I64) {
            this.term = iprot.readI64();
            this.__isset_term = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EDGE_VERSION:
          if (field.type == TType.I64) {
            this.edge_version = iprot.readI64();
            this.__isset_edge_version = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SPACE_ID:
          if (field.type == TType.I32) {
            this.space_id = iprot.readI32();
            this.__isset_space_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PARTS:
          if (field.type == TType.LIST) {
            {
              TList _list342 = iprot.readListBegin();
              this.parts = <int>[];
              for (int _i343 = 0; _i343 < _list342.length; ++_i343) {
                int _elem344;
                _elem344 = iprot.readI32();
                this.parts?.add(_elem344);
              }
              iprot.readListEnd();
            }
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
    if (this.update_edge_request != null) {
      oprot.writeFieldBegin(_UPDATE_EDGE_REQUEST_FIELD_DESC);
      this.update_edge_request?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_TERM_FIELD_DESC);
    oprot.writeI64(this.term);
    oprot.writeFieldEnd();
    if (isSetEdge_version()) {
      oprot.writeFieldBegin(_EDGE_VERSION_FIELD_DESC);
      oprot.writeI64(this.edge_version);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_SPACE_ID_FIELD_DESC);
    oprot.writeI32(this.space_id);
    oprot.writeFieldEnd();
    if (this.parts != null) {
      oprot.writeFieldBegin(_PARTS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.I32, this.parts?.length));
        for (var elem345 in this.parts ?? []) {
          oprot.writeI32(elem345);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("ChainUpdateEdgeRequest(");

    ret.write("update_edge_request:");
    if (this.update_edge_request == null) {
      ret.write("null");
    } else {
      ret.write(this.update_edge_request);
    }

    ret.write(", ");
    ret.write("term:");
    ret.write(this.term);

    if (isSetEdge_version()) {
      ret.write(", ");
      ret.write("edge_version:");
      ret.write(this.edge_version);
    }

    ret.write(", ");
    ret.write("space_id:");
    ret.write(this.space_id);

    ret.write(", ");
    ret.write("parts:");
    if (this.parts == null) {
      ret.write("null");
    } else {
      ret.write(this.parts);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    if (parts == null) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN,
          "Required field 'parts' was not present! Struct: " + toString());
    }
    // check that fields of type enum have valid values
  }
}
