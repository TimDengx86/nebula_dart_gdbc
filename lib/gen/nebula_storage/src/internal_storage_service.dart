// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_storage.src.internal_storage_service;

import 'dart:async';
import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import 'package:nebula_dart_gdbc/gen/nebula_storage/nebula_storage.dart';
import 'package:nebula_dart_gdbc/gen/nebula/nebula.dart' as t_nebula;
import 'package:nebula_dart_gdbc/gen/nebula_meta/nebula_meta.dart'
    as t_nebula_meta;

abstract class InternalStorageService {
  Future<ExecResponse> chainAddEdges(ChainAddEdgesRequest? req);

  Future<UpdateResponse> chainUpdateEdge(ChainUpdateEdgeRequest? req);

  Future<ExecResponse> chainDeleteEdges(ChainDeleteEdgesRequest? req);
}

class InternalStorageServiceClient implements InternalStorageService {
  InternalStorageServiceClient(TProtocol iprot, [TProtocol? oprot]) {
    _iprot = iprot;
    _oprot = (oprot == null) ? iprot : oprot;
  }

  late TProtocol _iprot;

  TProtocol get iprot => _iprot;

  late TProtocol _oprot;

  TProtocol get oprot => _oprot;

  int _seqid = 0;

  int get seqid => _seqid;

  int nextSeqid() => ++_seqid;

  Future<ExecResponse> chainAddEdges(ChainAddEdgesRequest? req) async {
    oprot.writeMessageBegin(
        new TMessage("chainAddEdges", TMessageType.CALL, nextSeqid()));
    chainAddEdges_args args = new chainAddEdges_args();
    args.req = req;
    args.write(oprot);
    oprot.writeMessageEnd();

    await oprot.trans_.flush();

    TMessage msg = iprot.readMessageBegin();
    if (msg.type == TMessageType.EXCEPTION) {
      TApplicationError error = TApplicationError.read(iprot);
      iprot.readMessageEnd();
      throw error;
    }

    chainAddEdges_result result = new chainAddEdges_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.isSetSuccess()) {
      return result.success!;
    }

    throw new TApplicationError(TApplicationErrorType.MISSING_RESULT,
        "chainAddEdges failed: unknown result");
  }

  Future<UpdateResponse> chainUpdateEdge(ChainUpdateEdgeRequest? req) async {
    oprot.writeMessageBegin(
        new TMessage("chainUpdateEdge", TMessageType.CALL, nextSeqid()));
    chainUpdateEdge_args args = new chainUpdateEdge_args();
    args.req = req;
    args.write(oprot);
    oprot.writeMessageEnd();

    await oprot.trans_.flush();

    TMessage msg = iprot.readMessageBegin();
    if (msg.type == TMessageType.EXCEPTION) {
      TApplicationError error = TApplicationError.read(iprot);
      iprot.readMessageEnd();
      throw error;
    }

    chainUpdateEdge_result result = new chainUpdateEdge_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.isSetSuccess()) {
      return result.success!;
    }

    throw new TApplicationError(TApplicationErrorType.MISSING_RESULT,
        "chainUpdateEdge failed: unknown result");
  }

  Future<ExecResponse> chainDeleteEdges(ChainDeleteEdgesRequest? req) async {
    oprot.writeMessageBegin(
        new TMessage("chainDeleteEdges", TMessageType.CALL, nextSeqid()));
    chainDeleteEdges_args args = new chainDeleteEdges_args();
    args.req = req;
    args.write(oprot);
    oprot.writeMessageEnd();

    await oprot.trans_.flush();

    TMessage msg = iprot.readMessageBegin();
    if (msg.type == TMessageType.EXCEPTION) {
      TApplicationError error = TApplicationError.read(iprot);
      iprot.readMessageEnd();
      throw error;
    }

    chainDeleteEdges_result result = new chainDeleteEdges_result();
    result.read(iprot);
    iprot.readMessageEnd();
    if (result.isSetSuccess()) {
      return result.success!;
    }

    throw new TApplicationError(TApplicationErrorType.MISSING_RESULT,
        "chainDeleteEdges failed: unknown result");
  }
}

typedef void ProcessFunction(int seqid, TProtocol iprot, TProtocol oprot);

class InternalStorageServiceProcessor implements TProcessor {
  InternalStorageServiceProcessor(InternalStorageService iface) {
    iface_ = iface;
    PROCESS_MAP["chainAddEdges"] = chainAddEdges;
    PROCESS_MAP["chainUpdateEdge"] = chainUpdateEdge;
    PROCESS_MAP["chainDeleteEdges"] = chainDeleteEdges;
  }

  late InternalStorageService iface_;
  final Map<String, ProcessFunction> PROCESS_MAP = {};

  bool process(TProtocol iprot, TProtocol oprot) {
    TMessage msg = iprot.readMessageBegin();
    ProcessFunction? fn = PROCESS_MAP[msg.name];
    if (fn == null) {
      TProtocolUtil.skip(iprot, TType.STRUCT);
      iprot.readMessageEnd();
      TApplicationError x = new TApplicationError(
          TApplicationErrorType.UNKNOWN_METHOD,
          "Invalid method name: '${msg.name}'");
      oprot.writeMessageBegin(
          new TMessage(msg.name, TMessageType.EXCEPTION, msg.seqid));
      x.write(oprot);
      oprot.writeMessageEnd();
      oprot.trans_.flush();
      return true;
    }
    fn(msg.seqid, iprot, oprot);
    return true;
  }

  chainAddEdges(int seqid, TProtocol iprot, TProtocol oprot) async {
    chainAddEdges_args args = new chainAddEdges_args();
    args.read(iprot);
    iprot.readMessageEnd();
    chainAddEdges_result result = new chainAddEdges_result();
    result.success = await iface_.chainAddEdges(args.req);
    oprot.writeMessageBegin(
        new TMessage("chainAddEdges", TMessageType.REPLY, seqid));
    result.write(oprot);
    oprot.writeMessageEnd();
    oprot.trans_.flush();
  }

  chainUpdateEdge(int seqid, TProtocol iprot, TProtocol oprot) async {
    chainUpdateEdge_args args = new chainUpdateEdge_args();
    args.read(iprot);
    iprot.readMessageEnd();
    chainUpdateEdge_result result = new chainUpdateEdge_result();
    result.success = await iface_.chainUpdateEdge(args.req);
    oprot.writeMessageBegin(
        new TMessage("chainUpdateEdge", TMessageType.REPLY, seqid));
    result.write(oprot);
    oprot.writeMessageEnd();
    oprot.trans_.flush();
  }

  chainDeleteEdges(int seqid, TProtocol iprot, TProtocol oprot) async {
    chainDeleteEdges_args args = new chainDeleteEdges_args();
    args.read(iprot);
    iprot.readMessageEnd();
    chainDeleteEdges_result result = new chainDeleteEdges_result();
    result.success = await iface_.chainDeleteEdges(args.req);
    oprot.writeMessageBegin(
        new TMessage("chainDeleteEdges", TMessageType.REPLY, seqid));
    result.write(oprot);
    oprot.writeMessageEnd();
    oprot.trans_.flush();
  }
}

class chainAddEdges_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("chainAddEdges_args");
  static final TField _REQ_FIELD_DESC = new TField("req", TType.STRUCT, 1);

  ChainAddEdgesRequest? _req;
  static const int REQ = 1;

  chainAddEdges_args() {}

  // req
  ChainAddEdgesRequest? get req => this._req;

  set req(ChainAddEdgesRequest? req) {
    this._req = req;
  }

  bool isSetReq() => this.req != null;

  unsetReq() {
    this.req = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REQ:
        return this.req;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case REQ:
        if (value == null) {
          unsetReq();
        } else {
          this.req = value as ChainAddEdgesRequest?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case REQ:
        return isSetReq();
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
        case REQ:
          if (field.type == TType.STRUCT) {
            this.req = new ChainAddEdgesRequest();
            this.req?.read(iprot);
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
    if (this.req != null) {
      oprot.writeFieldBegin(_REQ_FIELD_DESC);
      this.req?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("chainAddEdges_args(");

    ret.write("req:");
    if (this.req == null) {
      ret.write("null");
    } else {
      ret.write(this.req);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}

class chainAddEdges_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("chainAddEdges_result");
  static final TField _SUCCESS_FIELD_DESC =
      new TField("success", TType.STRUCT, 0);

  ExecResponse? _success;
  static const int SUCCESS = 0;

  chainAddEdges_result() {}

  // success
  ExecResponse? get success => this._success;

  set success(ExecResponse? success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case SUCCESS:
        if (value == null) {
          unsetSuccess();
        } else {
          this.success = value as ExecResponse?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return isSetSuccess();
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
        case SUCCESS:
          if (field.type == TType.STRUCT) {
            this.success = new ExecResponse();
            this.success?.read(iprot);
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
    oprot.writeStructBegin(_STRUCT_DESC);

    if (this.isSetSuccess()) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      this.success?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("chainAddEdges_result(");

    ret.write("success:");
    if (this.success == null) {
      ret.write("null");
    } else {
      ret.write(this.success);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}

class chainUpdateEdge_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("chainUpdateEdge_args");
  static final TField _REQ_FIELD_DESC = new TField("req", TType.STRUCT, 1);

  ChainUpdateEdgeRequest? _req;
  static const int REQ = 1;

  chainUpdateEdge_args() {}

  // req
  ChainUpdateEdgeRequest? get req => this._req;

  set req(ChainUpdateEdgeRequest? req) {
    this._req = req;
  }

  bool isSetReq() => this.req != null;

  unsetReq() {
    this.req = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REQ:
        return this.req;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case REQ:
        if (value == null) {
          unsetReq();
        } else {
          this.req = value as ChainUpdateEdgeRequest?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case REQ:
        return isSetReq();
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
        case REQ:
          if (field.type == TType.STRUCT) {
            this.req = new ChainUpdateEdgeRequest();
            this.req?.read(iprot);
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
    if (this.req != null) {
      oprot.writeFieldBegin(_REQ_FIELD_DESC);
      this.req?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("chainUpdateEdge_args(");

    ret.write("req:");
    if (this.req == null) {
      ret.write("null");
    } else {
      ret.write(this.req);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}

class chainUpdateEdge_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("chainUpdateEdge_result");
  static final TField _SUCCESS_FIELD_DESC =
      new TField("success", TType.STRUCT, 0);

  UpdateResponse? _success;
  static const int SUCCESS = 0;

  chainUpdateEdge_result() {}

  // success
  UpdateResponse? get success => this._success;

  set success(UpdateResponse? success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case SUCCESS:
        if (value == null) {
          unsetSuccess();
        } else {
          this.success = value as UpdateResponse?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return isSetSuccess();
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
        case SUCCESS:
          if (field.type == TType.STRUCT) {
            this.success = new UpdateResponse();
            this.success?.read(iprot);
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
    oprot.writeStructBegin(_STRUCT_DESC);

    if (this.isSetSuccess()) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      this.success?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("chainUpdateEdge_result(");

    ret.write("success:");
    if (this.success == null) {
      ret.write("null");
    } else {
      ret.write(this.success);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}

class chainDeleteEdges_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("chainDeleteEdges_args");
  static final TField _REQ_FIELD_DESC = new TField("req", TType.STRUCT, 1);

  ChainDeleteEdgesRequest? _req;
  static const int REQ = 1;

  chainDeleteEdges_args() {}

  // req
  ChainDeleteEdgesRequest? get req => this._req;

  set req(ChainDeleteEdgesRequest? req) {
    this._req = req;
  }

  bool isSetReq() => this.req != null;

  unsetReq() {
    this.req = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REQ:
        return this.req;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case REQ:
        if (value == null) {
          unsetReq();
        } else {
          this.req = value as ChainDeleteEdgesRequest?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case REQ:
        return isSetReq();
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
        case REQ:
          if (field.type == TType.STRUCT) {
            this.req = new ChainDeleteEdgesRequest();
            this.req?.read(iprot);
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
    if (this.req != null) {
      oprot.writeFieldBegin(_REQ_FIELD_DESC);
      this.req?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("chainDeleteEdges_args(");

    ret.write("req:");
    if (this.req == null) {
      ret.write("null");
    } else {
      ret.write(this.req);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}

class chainDeleteEdges_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("chainDeleteEdges_result");
  static final TField _SUCCESS_FIELD_DESC =
      new TField("success", TType.STRUCT, 0);

  ExecResponse? _success;
  static const int SUCCESS = 0;

  chainDeleteEdges_result() {}

  // success
  ExecResponse? get success => this._success;

  set success(ExecResponse? success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object? value) {
    switch (fieldID) {
      case SUCCESS:
        if (value == null) {
          unsetSuccess();
        } else {
          this.success = value as ExecResponse?;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return isSetSuccess();
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
        case SUCCESS:
          if (field.type == TType.STRUCT) {
            this.success = new ExecResponse();
            this.success?.read(iprot);
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
    oprot.writeStructBegin(_STRUCT_DESC);

    if (this.isSetSuccess()) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      this.success?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("chainDeleteEdges_result(");

    ret.write("success:");
    if (this.success == null) {
      ret.write("null");
    } else {
      ret.write(this.success);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
