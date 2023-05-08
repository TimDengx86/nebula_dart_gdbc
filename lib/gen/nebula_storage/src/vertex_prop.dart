// ignore_for_file: unnecessary_this, unnecessary_new, non_constant_identifier_names, annotate_overrides, no_leading_underscores_for_local_identifiers, constant_identifier_names, unused_import, import_of_legacy_library_into_null_safe, slash_for_doc_comments

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.vertex_prop;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class VertexProp implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("VertexProp");
  static final TField _TAG_FIELD_DESC = new TField("tag", TType.I32, 1);
  static final TField _PROPS_FIELD_DESC = new TField("props", TType.LIST, 2);

  int _tag = 0;
  static const int TAG = 1;
  List<Int8List>? _props;
  static const int PROPS = 2;

  bool __isset_tag = false;

  VertexProp() {}

  // tag
  int get tag => this._tag;

  set tag(int tag) {
    this._tag = tag;
    this.__isset_tag = true;
  }

  bool isSetTag() => this.__isset_tag;

  unsetTag() {
    this.__isset_tag = false;
  }

  // props
  List<Int8List>? get props => this._props;

  set props(List<Int8List>? props) {
    this._props = props;
  }

  bool isSetProps() => this.props != null;

  unsetProps() {
    this.props = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TAG:
        return this.tag;
      case PROPS:
        return this.props;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case TAG:
        if (value == null) {
          unsetTag();
        } else {
          this.tag = value as int;
        }
        break;

      case PROPS:
        if (value == null) {
          unsetProps();
        } else {
          this.props = value as List<Int8List>;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TAG:
        return isSetTag();
      case PROPS:
        return isSetProps();
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
        case TAG:
          if (field.type == TType.I32) {
            this.tag = iprot.readI32();
            this.__isset_tag = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PROPS:
          if (field.type == TType.LIST) {
            {
              TList _list14 = iprot.readListBegin();
              this.props = <Int8List>[];
              for (int _i15 = 0; _i15 < _list14.length; ++_i15) {
                Int8List _elem16;
                _elem16 = iprot.readBinary();
                this.props?.add(_elem16);
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
    oprot.writeFieldBegin(_TAG_FIELD_DESC);
    oprot.writeI32(this.tag);
    oprot.writeFieldEnd();
    if (this.props != null) {
      oprot.writeFieldBegin(_PROPS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRING, this.props?.length));
        for (var elem17 in this.props ?? []) {
          oprot.writeBinary(elem17);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("VertexProp(");

    ret.write("tag:");
    ret.write(this.tag);

    ret.write(", ");
    ret.write("props:");
    if (this.props == null) {
      ret.write("null");
    } else {
      ret.write(this.props);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}