// ignore_for_file: unnecessary_this, unnecessary_new, non_constant_identifier_names, annotate_overrides, no_leading_underscores_for_local_identifiers, constant_identifier_names, unused_import, import_of_legacy_library_into_null_safe, slash_for_doc_comments, empty_constructor_bodies

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.new_tag;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

class NewTag implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("NewTag");
  static final TField _TAG_ID_FIELD_DESC = new TField("tag_id", TType.I32, 1);
  static final TField _PROPS_FIELD_DESC = new TField("props", TType.LIST, 2);

  int _tag_id = 0;
  static const int TAG_ID = 1;
  List<t_nebula.Value>? _props;
  static const int PROPS = 2;

  bool __isset_tag_id = false;

  NewTag() {}

  // tag_id
  int get tag_id => this._tag_id;

  set tag_id(int tag_id) {
    this._tag_id = tag_id;
    this.__isset_tag_id = true;
  }

  bool isSetTag_id() => this.__isset_tag_id;

  unsetTag_id() {
    this.__isset_tag_id = false;
  }

  // props
  List<t_nebula.Value>? get props => this._props;

  set props(List<t_nebula.Value>? props) {
    this._props = props;
  }

  bool isSetProps() => this.props != null;

  unsetProps() {
    this.props = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TAG_ID:
        return this.tag_id;
      case PROPS:
        return this.props;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case TAG_ID:
        if (value == null) {
          unsetTag_id();
        } else {
          this.tag_id = value as int;
        }
        break;

      case PROPS:
        if (value == null) {
          unsetProps();
        } else {
          this.props = value as List<t_nebula.Value>;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TAG_ID:
        return isSetTag_id();
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
        case TAG_ID:
          if (field.type == TType.I32) {
            this.tag_id = iprot.readI32();
            this.__isset_tag_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PROPS:
          if (field.type == TType.LIST) {
            {
              TList _list96 = iprot.readListBegin();
              this.props = <t_nebula.Value>[];
              for (int _i97 = 0; _i97 < _list96.length; ++_i97) {
                t_nebula.Value _elem98;
                _elem98 = new t_nebula.Value();
                _elem98.read(iprot);
                this.props?.add(_elem98);
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
    oprot.writeFieldBegin(_TAG_ID_FIELD_DESC);
    oprot.writeI32(this.tag_id);
    oprot.writeFieldEnd();
    if (this.props != null) {
      oprot.writeFieldBegin(_PROPS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.props?.length));
        for (var elem99 in this.props ?? []) {
          elem99.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("NewTag(");

    ret.write("tag_id:");
    ret.write(this.tag_id);

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