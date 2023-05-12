// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula.src.vertex;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import '../nebula.dart';

class Vertex implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("Vertex");
  static final TField _VID_FIELD_DESC = new TField("vid", TType.STRUCT, 1);
  static final TField _TAGS_FIELD_DESC = new TField("tags", TType.LIST, 2);

  Value? _vid;
  static const int VID = 1;
  List<Tag>? _tags;
  static const int TAGS = 2;

  Vertex() {}

  // vid
  Value? get vid => this._vid;

  set vid(Value? vid) {
    this._vid = vid;
  }

  bool isSetVid() => this.vid != null;

  unsetVid() {
    this.vid = null;
  }

  // tags
  List<Tag>? get tags => this._tags;

  set tags(List<Tag>? tags) {
    this._tags = tags;
  }

  bool isSetTags() => this.tags != null;

  unsetTags() {
    this.tags = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case VID:
        return this.vid;
      case TAGS:
        return this.tags;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case VID:
        if (value == null) {
          unsetVid();
        } else {
          this.vid = value as Value?;
        }
        break;

      case TAGS:
        if (value == null) {
          unsetTags();
        } else {
          this.tags = value as List<Tag>?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case VID:
        return isSetVid();
      case TAGS:
        return isSetTags();
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
        case VID:
          if (field.type == TType.STRUCT) {
            this.vid = new Value();
            this.vid?.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TAGS:
          if (field.type == TType.LIST) {
            {
              TList _list44 = iprot.readListBegin();
              this.tags = <Tag>[];
              for (int _i45 = 0; _i45 < _list44.length; ++_i45) {
                Tag _elem46;
                _elem46 = new Tag();
                _elem46.read(iprot);
                this.tags?.add(_elem46);
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
    if (this.vid != null) {
      oprot.writeFieldBegin(_VID_FIELD_DESC);
      this.vid?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.tags != null) {
      oprot.writeFieldBegin(_TAGS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.tags?.length));
        for (var elem47 in this.tags ?? []) {
          elem47.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Vertex(");

    ret.write("vid:");
    if (this.vid == null) {
      ret.write("null");
    } else {
      ret.write(this.vid);
    }

    ret.write(", ");
    ret.write("tags:");
    if (this.tags == null) {
      ret.write("null");
    } else {
      ret.write(this.tags);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
