/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula.src.path;

import 'dart:typed_data' show Uint8List;
import 'package:fbthrift/fbthrift.dart';
import '../nebula.dart';

class Path implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("Path");
  static final TField _SRC_FIELD_DESC = new TField("src", TType.STRUCT, 1);
  static final TField _STEPS_FIELD_DESC = new TField("steps", TType.LIST, 2);

  Vertex? _src;
  static const int SRC = 1;
  List<Step>? _steps;
  static const int STEPS = 2;

  Path() {}

  // src
  Vertex? get src => this._src;

  set src(Vertex? src) {
    this._src = src;
  }

  bool isSetSrc() => this.src != null;

  unsetSrc() {
    this.src = null;
  }

  // steps
  List<Step>? get steps => this._steps;

  set steps(List<Step>? steps) {
    this._steps = steps;
  }

  bool isSetSteps() => this.steps != null;

  unsetSteps() {
    this.steps = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SRC:
        return this.src;
      case STEPS:
        return this.steps;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case SRC:
        if (value == null) {
          unsetSrc();
        } else {
          this.src = value as Vertex;
        }
        break;

      case STEPS:
        if (value == null) {
          unsetSteps();
        } else {
          this.steps = value as List<Step>;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SRC:
        return isSetSrc();
      case STEPS:
        return isSetSteps();
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
        case SRC:
          if (field.type == TType.STRUCT) {
            this.src = new Vertex();
            this.src?.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STEPS:
          if (field.type == TType.LIST) {
            {
              TList _list60 = iprot.readListBegin();
              this.steps = <Step>[];
              for (int _i61 = 0; _i61 < _list60.length; ++_i61) {
                Step _elem62;
                _elem62 = new Step();
                _elem62.read(iprot);
                this.steps?.add(_elem62);
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
    if (this.src != null) {
      oprot.writeFieldBegin(_SRC_FIELD_DESC);
      this.src?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.steps != null) {
      oprot.writeFieldBegin(_STEPS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.steps?.length));
        for (var elem63 in this.steps ?? []) {
          elem63.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Path(");

    ret.write("src:");
    if (this.src == null) {
      ret.write("null");
    } else {
      ret.write(this.src);
    }

    ret.write(", ");
    ret.write("steps:");
    if (this.steps == null) {
      ret.write("null");
    } else {
      ret.write(this.steps);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}