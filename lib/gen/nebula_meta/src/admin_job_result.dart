// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.admin_job_result;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;

class AdminJobResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("AdminJobResult");
  static final TField _JOB_ID_FIELD_DESC = new TField("job_id", TType.I32, 1);
  static final TField _JOB_DESC_FIELD_DESC =
      new TField("job_desc", TType.LIST, 2);
  static final TField _TASK_DESC_FIELD_DESC =
      new TField("task_desc", TType.LIST, 3);
  static final TField _RECOVERED_JOB_NUM_FIELD_DESC =
      new TField("recovered_job_num", TType.I32, 4);

  int? _job_id;
  static const int JOB_ID = 1;
  List<JobDesc>? _job_desc;
  static const int JOB_DESC = 2;
  List<TaskDesc>? _task_desc;
  static const int TASK_DESC = 3;
  int? _recovered_job_num;
  static const int RECOVERED_JOB_NUM = 4;

  bool __isset_job_id = false;
  bool __isset_recovered_job_num = false;

  AdminJobResult() {}

  // job_id
  int? get job_id => this._job_id;

  set job_id(int? job_id) {
    this._job_id = job_id;
    this.__isset_job_id = true;
  }

  bool isSetJob_id() => this.__isset_job_id;

  unsetJob_id() {
    this.__isset_job_id = false;
  }

  // job_desc
  List<JobDesc>? get job_desc => this._job_desc;

  set job_desc(List<JobDesc>? job_desc) {
    this._job_desc = job_desc;
  }

  bool isSetJob_desc() => this.job_desc != null;

  unsetJob_desc() {
    this.job_desc = null;
  }

  // task_desc
  List<TaskDesc>? get task_desc => this._task_desc;

  set task_desc(List<TaskDesc>? task_desc) {
    this._task_desc = task_desc;
  }

  bool isSetTask_desc() => this.task_desc != null;

  unsetTask_desc() {
    this.task_desc = null;
  }

  // recovered_job_num
  int? get recovered_job_num => this._recovered_job_num;

  set recovered_job_num(int? recovered_job_num) {
    this._recovered_job_num = recovered_job_num;
    this.__isset_recovered_job_num = true;
  }

  bool isSetRecovered_job_num() => this.__isset_recovered_job_num;

  unsetRecovered_job_num() {
    this.__isset_recovered_job_num = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case JOB_ID:
        return this.job_id;
      case JOB_DESC:
        return this.job_desc;
      case TASK_DESC:
        return this.task_desc;
      case RECOVERED_JOB_NUM:
        return this.recovered_job_num;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case JOB_ID:
        if (value == null) {
          unsetJob_id();
        } else {
          this.job_id = value as int?;
        }
        break;

      case JOB_DESC:
        if (value == null) {
          unsetJob_desc();
        } else {
          this.job_desc = value as List<JobDesc>?;
        }
        break;

      case TASK_DESC:
        if (value == null) {
          unsetTask_desc();
        } else {
          this.task_desc = value as List<TaskDesc>?;
        }
        break;

      case RECOVERED_JOB_NUM:
        if (value == null) {
          unsetRecovered_job_num();
        } else {
          this.recovered_job_num = value as int?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case JOB_ID:
        return isSetJob_id();
      case JOB_DESC:
        return isSetJob_desc();
      case TASK_DESC:
        return isSetTask_desc();
      case RECOVERED_JOB_NUM:
        return isSetRecovered_job_num();
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
        case JOB_ID:
          if (field.type == TType.I32) {
            this.job_id = iprot.readI32();
            this.__isset_job_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case JOB_DESC:
          if (field.type == TType.LIST) {
            {
              TList _list44 = iprot.readListBegin();
              this.job_desc = <JobDesc>[];
              for (int _i45 = 0; _i45 < _list44.length; ++_i45) {
                JobDesc _elem46;
                _elem46 = new JobDesc();
                _elem46.read(iprot);
                this.job_desc?.add(_elem46);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TASK_DESC:
          if (field.type == TType.LIST) {
            {
              TList _list47 = iprot.readListBegin();
              this.task_desc = <TaskDesc>[];
              for (int _i48 = 0; _i48 < _list47.length; ++_i48) {
                TaskDesc _elem49;
                _elem49 = new TaskDesc();
                _elem49.read(iprot);
                this.task_desc?.add(_elem49);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case RECOVERED_JOB_NUM:
          if (field.type == TType.I32) {
            this.recovered_job_num = iprot.readI32();
            this.__isset_recovered_job_num = true;
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
    if (isSetJob_id()) {
      oprot.writeFieldBegin(_JOB_ID_FIELD_DESC);
      oprot.writeI32(this.job_id);
      oprot.writeFieldEnd();
    }
    if (isSetJob_desc()) {
      if (this.job_desc != null) {
        oprot.writeFieldBegin(_JOB_DESC_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.job_desc?.length));
          for (var elem50 in this.job_desc ?? []) {
            elem50.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
    }
    if (isSetTask_desc()) {
      if (this.task_desc != null) {
        oprot.writeFieldBegin(_TASK_DESC_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.task_desc?.length));
          for (var elem51 in this.task_desc ?? []) {
            elem51.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
    }
    if (isSetRecovered_job_num()) {
      oprot.writeFieldBegin(_RECOVERED_JOB_NUM_FIELD_DESC);
      oprot.writeI32(this.recovered_job_num);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("AdminJobResult(");

    if (isSetJob_id()) {
      ret.write("job_id:");
      ret.write(this.job_id);
    }

    if (isSetJob_desc()) {
      ret.write(", ");
      ret.write("job_desc:");
      if (this.job_desc == null) {
        ret.write("null");
      } else {
        ret.write(this.job_desc);
      }
    }

    if (isSetTask_desc()) {
      ret.write(", ");
      ret.write("task_desc:");
      if (this.task_desc == null) {
        ret.write("null");
      } else {
        ret.write(this.task_desc);
      }
    }

    if (isSetRecovered_job_num()) {
      ret.write(", ");
      ret.write("recovered_job_num:");
      ret.write(this.recovered_job_num);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
