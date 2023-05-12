// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_graph.src.plan_description;

import 'dart:typed_data' show Int8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_graph/nebula_graph.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class PlanDescription implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("PlanDescription");
  static final TField _PLAN_NODE_DESCS_FIELD_DESC =
      new TField("plan_node_descs", TType.LIST, 1);
  static final TField _NODE_INDEX_MAP_FIELD_DESC =
      new TField("node_index_map", TType.MAP, 2);
  static final TField _FORMAT_FIELD_DESC =
      new TField("format", TType.STRING, 3);
  static final TField _OPTIMIZE_TIME_IN_US_FIELD_DESC =
      new TField("optimize_time_in_us", TType.I32, 4);

  List<PlanNodeDescription>? _plan_node_descs;
  static const int PLAN_NODE_DESCS = 1;
  Map<int, int>? _node_index_map;
  static const int NODE_INDEX_MAP = 2;
  Int8List? _format;
  static const int FORMAT = 3;
  int _optimize_time_in_us = 0;
  static const int OPTIMIZE_TIME_IN_US = 4;

  bool __isset_optimize_time_in_us = false;

  PlanDescription() {}

  // plan_node_descs
  List<PlanNodeDescription>? get plan_node_descs => this._plan_node_descs;

  set plan_node_descs(List<PlanNodeDescription>? plan_node_descs) {
    this._plan_node_descs = plan_node_descs;
  }

  bool isSetPlan_node_descs() => this.plan_node_descs != null;

  unsetPlan_node_descs() {
    this.plan_node_descs = null;
  }

  // node_index_map
  Map<int, int>? get node_index_map => this._node_index_map;

  set node_index_map(Map<int, int>? node_index_map) {
    this._node_index_map = node_index_map;
  }

  bool isSetNode_index_map() => this.node_index_map != null;

  unsetNode_index_map() {
    this.node_index_map = null;
  }

  // format
  Int8List? get format => this._format;

  set format(Int8List? format) {
    this._format = format;
  }

  bool isSetFormat() => this.format != null;

  unsetFormat() {
    this.format = null;
  }

  // optimize_time_in_us
  int get optimize_time_in_us => this._optimize_time_in_us;

  set optimize_time_in_us(int optimize_time_in_us) {
    this._optimize_time_in_us = optimize_time_in_us;
    this.__isset_optimize_time_in_us = true;
  }

  bool isSetOptimize_time_in_us() => this.__isset_optimize_time_in_us;

  unsetOptimize_time_in_us() {
    this.__isset_optimize_time_in_us = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case PLAN_NODE_DESCS:
        return this.plan_node_descs;
      case NODE_INDEX_MAP:
        return this.node_index_map;
      case FORMAT:
        return this.format;
      case OPTIMIZE_TIME_IN_US:
        return this.optimize_time_in_us;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case PLAN_NODE_DESCS:
        if (value == null) {
          unsetPlan_node_descs();
        } else {
          this.plan_node_descs = value as List<PlanNodeDescription>;
        }
        break;

      case NODE_INDEX_MAP:
        if (value == null) {
          unsetNode_index_map();
        } else {
          this.node_index_map = value as Map<int, int>;
        }
        break;

      case FORMAT:
        if (value == null) {
          unsetFormat();
        } else {
          this.format = value as Int8List;
        }
        break;

      case OPTIMIZE_TIME_IN_US:
        if (value == null) {
          unsetOptimize_time_in_us();
        } else {
          this.optimize_time_in_us = value as int;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case PLAN_NODE_DESCS:
        return isSetPlan_node_descs();
      case NODE_INDEX_MAP:
        return isSetNode_index_map();
      case FORMAT:
        return isSetFormat();
      case OPTIMIZE_TIME_IN_US:
        return isSetOptimize_time_in_us();
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
        case PLAN_NODE_DESCS:
          if (field.type == TType.LIST) {
            {
              TList _list18 = iprot.readListBegin();
              this.plan_node_descs = <PlanNodeDescription>[];
              for (int _i19 = 0; _i19 < _list18.length; ++_i19) {
                PlanNodeDescription _elem20;
                _elem20 = new PlanNodeDescription();
                _elem20.read(iprot);
                this.plan_node_descs?.add(_elem20);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NODE_INDEX_MAP:
          if (field.type == TType.MAP) {
            {
              TMap _map21 = iprot.readMapBegin();
              this.node_index_map = new Map<int, int>();
              for (int _i22 = 0; _i22 < _map21.length; ++_i22) {
                int _key23;
                int _val24;
                _key23 = iprot.readI64();
                _val24 = iprot.readI64();
                this.node_index_map?[_key23] = _val24;
              }
              iprot.readMapEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FORMAT:
          if (field.type == TType.STRING) {
            this.format = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case OPTIMIZE_TIME_IN_US:
          if (field.type == TType.I32) {
            this.optimize_time_in_us = iprot.readI32();
            this.__isset_optimize_time_in_us = true;
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
    if (!__isset_optimize_time_in_us) {
      throw new TProtocolError(
          TProtocolErrorType.UNKNOWN,
          "Required field 'optimize_time_in_us' was not found in serialized data! Struct: " +
              toString());
    }

    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.plan_node_descs != null) {
      oprot.writeFieldBegin(_PLAN_NODE_DESCS_FIELD_DESC);
      {
        oprot.writeListBegin(
            new TList(TType.STRUCT, this.plan_node_descs?.length));
        for (var elem25 in this.plan_node_descs ?? []) {
          elem25.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.node_index_map != null) {
      oprot.writeFieldBegin(_NODE_INDEX_MAP_FIELD_DESC);
      {
        oprot.writeMapBegin(
            new TMap(TType.I64, TType.I64, this.node_index_map?.length));
        for (var elem27 in this.node_index_map?.keys ?? <int>[]) {
          oprot.writeI64(elem27);
          oprot.writeI64(this.node_index_map?[elem27]);
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.format != null) {
      oprot.writeFieldBegin(_FORMAT_FIELD_DESC);
      oprot.writeBinary(this.format);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_OPTIMIZE_TIME_IN_US_FIELD_DESC);
    oprot.writeI32(this.optimize_time_in_us);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("PlanDescription(");

    ret.write("plan_node_descs:");
    if (this.plan_node_descs == null) {
      ret.write("null");
    } else {
      ret.write(this.plan_node_descs);
    }

    ret.write(", ");
    ret.write("node_index_map:");
    if (this.node_index_map == null) {
      ret.write("null");
    } else {
      ret.write(this.node_index_map);
    }

    ret.write(", ");
    ret.write("format:");
    if (this.format == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("optimize_time_in_us:");
    ret.write(this.optimize_time_in_us);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    if (plan_node_descs == null) {
      throw new TProtocolError(
          TProtocolErrorType.UNKNOWN,
          "Required field 'plan_node_descs' was not present! Struct: " +
              toString());
    }
    if (node_index_map == null) {
      throw new TProtocolError(
          TProtocolErrorType.UNKNOWN,
          "Required field 'node_index_map' was not present! Struct: " +
              toString());
    }
    if (format == null) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN,
          "Required field 'format' was not present! Struct: " + toString());
    }
    // alas, we cannot check 'optimize_time_in_us' because it's a primitive and you chose the non-beans generator.
    // check that fields of type enum have valid values
  }
}
