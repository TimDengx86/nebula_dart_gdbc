/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.config_module;

class ConfigModule {
  static const int UNKNOWN = 0;
  static const int ALL = 1;
  static const int GRAPH = 2;
  static const int META = 3;
  static const int STORAGE = 4;

  static final Set<int> VALID_VALUES = new Set.from([
    UNKNOWN
    , ALL
    , GRAPH
    , META
    , STORAGE
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    UNKNOWN: 'UNKNOWN'
    , ALL: 'ALL'
    , GRAPH: 'GRAPH'
    , META: 'META'
    , STORAGE: 'STORAGE'
  };
}