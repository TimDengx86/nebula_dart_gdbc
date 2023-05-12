// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.create_tag_index_req;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class CreateTagIndexReq implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("CreateTagIndexReq");
  static final TField _SPACE_ID_FIELD_DESC =
      new TField("space_id", TType.I32, 1);
  static final TField _INDEX_NAME_FIELD_DESC =
      new TField("index_name", TType.STRING, 2);
  static final TField _TAG_NAME_FIELD_DESC =
      new TField("tag_name", TType.STRING, 3);
  static final TField _FIELDS_FIELD_DESC = new TField("fields", TType.LIST, 4);
  static final TField _IF_NOT_EXISTS_FIELD_DESC =
      new TField("if_not_exists", TType.BOOL, 5);
  static final TField _COMMENT_FIELD_DESC =
      new TField("comment", TType.STRING, 6);
  static final TField _INDEX_PARAMS_FIELD_DESC =
      new TField("index_params", TType.STRUCT, 7);

  int _space_id = 0;
  static const int SPACE_ID = 1;
  Int8List? _index_name;
  static const int INDEX_NAME = 2;
  Int8List? _tag_name;
  static const int TAG_NAME = 3;
  List<IndexFieldDef>? _fields;
  static const int FIELDS = 4;
  bool _if_not_exists = false;
  static const int IF_NOT_EXISTS = 5;
  Int8List? _comment;
  static const int COMMENT = 6;
  IndexParams? _index_params;
  static const int INDEX_PARAMS = 7;

  bool __isset_space_id = false;
  bool __isset_if_not_exists = false;

  CreateTagIndexReq() {}

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

  // index_name
  Int8List? get index_name => this._index_name;

  set index_name(Int8List? index_name) {
    this._index_name = index_name;
  }

  bool isSetIndex_name() => this.index_name != null;

  unsetIndex_name() {
    this.index_name = null;
  }

  // tag_name
  Int8List? get tag_name => this._tag_name;

  set tag_name(Int8List? tag_name) {
    this._tag_name = tag_name;
  }

  bool isSetTag_name() => this.tag_name != null;

  unsetTag_name() {
    this.tag_name = null;
  }

  // fields
  List<IndexFieldDef>? get fields => this._fields;

  set fields(List<IndexFieldDef>? fields) {
    this._fields = fields;
  }

  bool isSetFields() => this.fields != null;

  unsetFields() {
    this.fields = null;
  }

  // if_not_exists
  bool get if_not_exists => this._if_not_exists;

  set if_not_exists(bool if_not_exists) {
    this._if_not_exists = if_not_exists;
    this.__isset_if_not_exists = true;
  }

  bool isSetIf_not_exists() => this.__isset_if_not_exists;

  unsetIf_not_exists() {
    this.__isset_if_not_exists = false;
  }

  // comment
  Int8List? get comment => this._comment;

  set comment(Int8List? comment) {
    this._comment = comment;
  }

  bool isSetComment() => this.comment != null;

  unsetComment() {
    this.comment = null;
  }

  // index_params
  IndexParams? get index_params => this._index_params;

  set index_params(IndexParams? index_params) {
    this._index_params = index_params;
  }

  bool isSetIndex_params() => this.index_params != null;

  unsetIndex_params() {
    this.index_params = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SPACE_ID:
        return this.space_id;
      case INDEX_NAME:
        return this.index_name;
      case TAG_NAME:
        return this.tag_name;
      case FIELDS:
        return this.fields;
      case IF_NOT_EXISTS:
        return this.if_not_exists;
      case COMMENT:
        return this.comment;
      case INDEX_PARAMS:
        return this.index_params;
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

      case INDEX_NAME:
        if (value == null) {
          unsetIndex_name();
        } else {
          this.index_name = value as Int8List?;
        }
        break;

      case TAG_NAME:
        if (value == null) {
          unsetTag_name();
        } else {
          this.tag_name = value as Int8List?;
        }
        break;

      case FIELDS:
        if (value == null) {
          unsetFields();
        } else {
          this.fields = value as List<IndexFieldDef>?;
        }
        break;

      case IF_NOT_EXISTS:
        if (value == null) {
          unsetIf_not_exists();
        } else {
          this.if_not_exists = value as bool;
        }
        break;

      case COMMENT:
        if (value == null) {
          unsetComment();
        } else {
          this.comment = value as Int8List?;
        }
        break;

      case INDEX_PARAMS:
        if (value == null) {
          unsetIndex_params();
        } else {
          this.index_params = value as IndexParams?;
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
      case INDEX_NAME:
        return isSetIndex_name();
      case TAG_NAME:
        return isSetTag_name();
      case FIELDS:
        return isSetFields();
      case IF_NOT_EXISTS:
        return isSetIf_not_exists();
      case COMMENT:
        return isSetComment();
      case INDEX_PARAMS:
        return isSetIndex_params();
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
        case INDEX_NAME:
          if (field.type == TType.STRING) {
            this.index_name = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TAG_NAME:
          if (field.type == TType.STRING) {
            this.tag_name = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FIELDS:
          if (field.type == TType.LIST) {
            {
              TList _list178 = iprot.readListBegin();
              this.fields = <IndexFieldDef>[];
              for (int _i179 = 0; _i179 < _list178.length; ++_i179) {
                IndexFieldDef _elem180;
                _elem180 = new IndexFieldDef();
                _elem180.read(iprot);
                this.fields?.add(_elem180);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IF_NOT_EXISTS:
          if (field.type == TType.BOOL) {
            this.if_not_exists = iprot.readBool();
            this.__isset_if_not_exists = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COMMENT:
          if (field.type == TType.STRING) {
            this.comment = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case INDEX_PARAMS:
          if (field.type == TType.STRUCT) {
            this.index_params = new IndexParams();
            this.index_params?.read(iprot);
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
    if (this.index_name != null) {
      oprot.writeFieldBegin(_INDEX_NAME_FIELD_DESC);
      oprot.writeBinary(this.index_name);
      oprot.writeFieldEnd();
    }
    if (this.tag_name != null) {
      oprot.writeFieldBegin(_TAG_NAME_FIELD_DESC);
      oprot.writeBinary(this.tag_name);
      oprot.writeFieldEnd();
    }
    if (this.fields != null) {
      oprot.writeFieldBegin(_FIELDS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.fields?.length));
        for (var elem181 in this.fields ?? []) {
          elem181.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IF_NOT_EXISTS_FIELD_DESC);
    oprot.writeBool(this.if_not_exists);
    oprot.writeFieldEnd();
    if (isSetComment()) {
      if (this.comment != null) {
        oprot.writeFieldBegin(_COMMENT_FIELD_DESC);
        oprot.writeBinary(this.comment);
        oprot.writeFieldEnd();
      }
    }
    if (isSetIndex_params()) {
      if (this.index_params != null) {
        oprot.writeFieldBegin(_INDEX_PARAMS_FIELD_DESC);
        this.index_params?.write(oprot);
        oprot.writeFieldEnd();
      }
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("CreateTagIndexReq(");

    ret.write("space_id:");
    ret.write(this.space_id);

    ret.write(", ");
    ret.write("index_name:");
    if (this.index_name == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("tag_name:");
    if (this.tag_name == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("fields:");
    if (this.fields == null) {
      ret.write("null");
    } else {
      ret.write(this.fields);
    }

    ret.write(", ");
    ret.write("if_not_exists:");
    ret.write(this.if_not_exists);

    if (isSetComment()) {
      ret.write(", ");
      ret.write("comment:");
      if (this.comment == null) {
        ret.write("null");
      } else {
        ret.write("BINARY");
      }
    }

    if (isSetIndex_params()) {
      ret.write(", ");
      ret.write("index_params:");
      if (this.index_params == null) {
        ret.write("null");
      } else {
        ret.write(this.index_params);
      }
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
