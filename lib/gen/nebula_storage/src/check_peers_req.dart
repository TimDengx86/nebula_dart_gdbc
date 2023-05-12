// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.check_peers_req;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class CheckPeersReq implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("CheckPeersReq");
  static final TField _SPACE_ID_FIELD_DESC =
      new TField("space_id", TType.I32, 1);
  static final TField _PART_ID_FIELD_DESC = new TField("part_id", TType.I32, 2);
  static final TField _PEERS_FIELD_DESC = new TField("peers", TType.LIST, 3);

  int _space_id = 0;
  static const int SPACE_ID = 1;
  int _part_id = 0;
  static const int PART_ID = 2;
  List<t_nebula.HostAddr>? _peers;
  static const int PEERS = 3;

  bool __isset_space_id = false;
  bool __isset_part_id = false;

  CheckPeersReq() {}

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

  // part_id
  int get part_id => this._part_id;

  set part_id(int part_id) {
    this._part_id = part_id;
    this.__isset_part_id = true;
  }

  bool isSetPart_id() => this.__isset_part_id;

  unsetPart_id() {
    this.__isset_part_id = false;
  }

  // peers
  List<t_nebula.HostAddr>? get peers => this._peers;

  set peers(List<t_nebula.HostAddr>? peers) {
    this._peers = peers;
  }

  bool isSetPeers() => this.peers != null;

  unsetPeers() {
    this.peers = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SPACE_ID:
        return this.space_id;
      case PART_ID:
        return this.part_id;
      case PEERS:
        return this.peers;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case SPACE_ID:
        if (value == null) {
          unsetSpace_id();
        } else {
          this.space_id = value as int;
        }
        break;

      case PART_ID:
        if (value == null) {
          unsetPart_id();
        } else {
          this.part_id = value as int;
        }
        break;

      case PEERS:
        if (value == null) {
          unsetPeers();
        } else {
          this.peers = value as List<t_nebula.HostAddr>;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SPACE_ID:
        return isSetSpace_id();
      case PART_ID:
        return isSetPart_id();
      case PEERS:
        return isSetPeers();
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
        case SPACE_ID:
          if (field.type == TType.I32) {
            this.space_id = iprot.readI32();
            this.__isset_space_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PART_ID:
          if (field.type == TType.I32) {
            this.part_id = iprot.readI32();
            this.__isset_part_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PEERS:
          if (field.type == TType.LIST) {
            {
              TList _list320 = iprot.readListBegin();
              this.peers = <t_nebula.HostAddr>[];
              for (int _i321 = 0; _i321 < _list320.length; ++_i321) {
                t_nebula.HostAddr _elem322;
                _elem322 = new t_nebula.HostAddr();
                _elem322.read(iprot);
                this.peers?.add(_elem322);
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
    oprot.writeFieldBegin(_SPACE_ID_FIELD_DESC);
    oprot.writeI32(this.space_id);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_PART_ID_FIELD_DESC);
    oprot.writeI32(this.part_id);
    oprot.writeFieldEnd();
    if (this.peers != null) {
      oprot.writeFieldBegin(_PEERS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.peers?.length));
        for (var elem323 in this.peers ?? []) {
          elem323.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("CheckPeersReq(");

    ret.write("space_id:");
    ret.write(this.space_id);

    ret.write(", ");
    ret.write("part_id:");
    ret.write(this.part_id);

    ret.write(", ");
    ret.write("peers:");
    if (this.peers == null) {
      ret.write("null");
    } else {
      ret.write(this.peers);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
