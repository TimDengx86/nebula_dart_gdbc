// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula.src.checkpoint_info;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import '../nebula.dart';

class CheckpointInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("CheckpointInfo");
  static final TField _SPACE_ID_FIELD_DESC =
      new TField("space_id", TType.I32, 1);
  static final TField _PARTS_FIELD_DESC = new TField("parts", TType.MAP, 2);
  static final TField _DATA_PATH_FIELD_DESC =
      new TField("data_path", TType.STRING, 3);

  int _space_id = 0;
  static const int SPACE_ID = 1;
  Map<int, LogInfo>? _parts;
  static const int PARTS = 2;
  Int8List? _data_path;
  static const int DATA_PATH = 3;

  bool __isset_space_id = false;

  CheckpointInfo() {}

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
  Map<int, LogInfo>? get parts => this._parts;

  set parts(Map<int, LogInfo>? parts) {
    this._parts = parts;
  }

  bool isSetParts() => this.parts != null;

  unsetParts() {
    this.parts = null;
  }

  // data_path
  Int8List? get data_path => this._data_path;

  set data_path(Int8List? data_path) {
    this._data_path = data_path;
  }

  bool isSetData_path() => this.data_path != null;

  unsetData_path() {
    this.data_path = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SPACE_ID:
        return this.space_id;
      case PARTS:
        return this.parts;
      case DATA_PATH:
        return this.data_path;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
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
          this.parts = value as Map<int, LogInfo>;
        }
        break;

      case DATA_PATH:
        if (value == null) {
          unsetData_path();
        } else {
          this.data_path = value as Int8List;
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
      case PARTS:
        return isSetParts();
      case DATA_PATH:
        return isSetData_path();
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
        case PARTS:
          if (field.type == TType.MAP) {
            {
              TMap _map68 = iprot.readMapBegin();
              this.parts = new Map<int, LogInfo>();
              for (int _i69 = 0; _i69 < _map68.length; ++_i69) {
                int _key70;
                LogInfo _val71;
                _key70 = iprot.readI32();
                _val71 = new LogInfo();
                _val71.read(iprot);
                this.parts?[_key70] = _val71;
              }
              iprot.readMapEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DATA_PATH:
          if (field.type == TType.STRING) {
            this.data_path = iprot.readBinary();
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
    if (this.parts != null) {
      oprot.writeFieldBegin(_PARTS_FIELD_DESC);
      {
        oprot.writeMapBegin(
            new TMap(TType.I32, TType.STRUCT, this.parts?.length));
        for (var elem73 in this.parts?.keys ?? <int>[]) {
          oprot.writeI32(elem73);
          this.parts?[elem73]?.write(oprot);
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.data_path != null) {
      oprot.writeFieldBegin(_DATA_PATH_FIELD_DESC);
      oprot.writeBinary(this.data_path);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("CheckpointInfo(");

    ret.write("space_id:");
    ret.write(this.space_id);

    ret.write(", ");
    ret.write("parts:");
    if (this.parts == null) {
      ret.write("null");
    } else {
      ret.write(this.parts);
    }

    ret.write(", ");
    ret.write("data_path:");
    if (this.data_path == null) {
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
