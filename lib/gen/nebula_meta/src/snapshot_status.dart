// ignore_for_file: slash_for_doc_comments, unnecessary_new, non_constant_identifier_names, constant_identifier_names, unnecessary_this, empty_constructor_bodies, annotate_overrides, unnecessary_null_comparison, prefer_collection_literals, no_leading_underscores_for_local_identifiers, unused_import, unnecessary_import, prefer_interpolation_to_compose_strings, camel_case_types, prefer_generic_function_type_aliases, avoid_init_to_null, prefer_final_fields, unused_field

/**
 * Autogenerated by Thrift Compiler (0.18.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library nebula_meta.src.snapshot_status;

class SnapshotStatus {
  static const int VALID = 0;
  static const int INVALID = 1;

  static final Set<int> VALID_VALUES = new Set.from([VALID, INVALID]);
  static final Map<int, String> VALUES_TO_NAMES = {
    VALID: 'VALID',
    INVALID: 'INVALID'
  };
}
