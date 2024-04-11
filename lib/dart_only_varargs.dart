// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: doc_directive_unknown
// ignore_for_file: file_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

/// from: Foo
class Foo extends jni.JObject {
  @override
  late final jni.JObjType<Foo> $type = type;

  Foo.fromReference(
    jni.JReference reference,
  ) : super.fromReference(reference);

  static final _class = jni.JClass.forName(r"Foo");

  /// The type which includes information such as the signature of this class.
  static const type = $FooType();
  static final _id_new0 = _class.constructorId(
    r"()V",
  );

  /// from: public void <init>()
  /// The returned object must be released after use, by calling the [release] method.
  factory Foo() {
    return Foo.fromReference(_id_new0(_class, referenceType, []));
  }

  static final _id_foo = _class.instanceMethodId(
    r"foo",
    r"()Ljava/lang/String;",
  );

  final _foo = jni.Jni.dylib.lookupFunction<
      jni.JniResult Function(
          jni.JObjectPtr obj, jni.JMethodIDPtr methodID, ffi.Int callType),
      jni.JniResult Function(jni.JObjectPtr obj, jni.JMethodIDPtr methodID,
          int callType)>('callMethodV');

  /// from: public java.lang.String foo()
  /// The returned object must be released after use, by calling the [release] method.
  jni.JString foo() {
    return _foo(reference.pointer, _id_foo as jni.JMethodIDPtr,
            jni.JniCallType.objectType)
        .object(jni.JString.type);
  }

  static final _id_foo1 = _class.instanceMethodId(
    r"foo",
    r"(Ljava/lang/String;)Ljava/lang/String;",
  );

  final _foo1 = jni.Jni.dylib.lookupFunction<
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        ffi.Int callType,
        jni.JObjectPtr s0,
      ),
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        int callType,
        jni.JObjectPtr s0,
      )>('callMethodV');

  /// from: public java.lang.String foo(java.lang.String a)
  /// The returned object must be released after use, by calling the [release] method.
  jni.JString foo1(
    jni.JString a,
  ) {
    return _foo1(reference.pointer, _id_foo as jni.JMethodIDPtr,
            jni.JniCallType.objectType, a.reference.pointer)
        .object(jni.JString.type);
  }

  static final _id_foo2 = _class.instanceMethodId(
    r"foo",
    r"(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
  );

  final _foo2 = jni.Jni.dylib.lookupFunction<
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        ffi.Int callType,
        jni.JObjectPtr s0,
        jni.JObjectPtr s1,
      ),
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        int callType,
        jni.JObjectPtr s0,
        jni.JObjectPtr s1,
      )>('callMethodV');

  /// from: public java.lang.String foo(java.lang.String a, java.lang.String b)
  /// The returned object must be released after use, by calling the [release] method.
  jni.JString foo2(
    jni.JString a,
    jni.JString b,
  ) {
    return _foo2(
      reference.pointer,
      _id_foo as jni.JMethodIDPtr,
      jni.JniCallType.objectType,
      a.reference.pointer,
      b.reference.pointer,
    ).object(jni.JString.type);
  }

  static final _id_foo3 = _class.instanceMethodId(
    r"foo",
    r"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
  );

  final _foo3 = jni.Jni.dylib.lookupFunction<
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        ffi.Int callType,
        jni.JObjectPtr s0,
        jni.JObjectPtr s1,
        jni.JObjectPtr s2,
      ),
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        int callType,
        jni.JObjectPtr s0,
        jni.JObjectPtr s1,
        jni.JObjectPtr s2,
      )>('callMethodV');

  /// from: public java.lang.String foo(java.lang.String a, java.lang.String b, java.lang.String c)
  /// The returned object must be released after use, by calling the [release] method.
  jni.JString foo3(
    jni.JString a,
    jni.JString b,
    jni.JString c,
  ) {
    return _foo3(
      reference.pointer,
      _id_foo as jni.JMethodIDPtr,
      jni.JniCallType.objectType,
      a.reference.pointer,
      b.reference.pointer,
      c.reference.pointer,
    ).object(jni.JString.type);
  }

  static final _id_foo4 = _class.instanceMethodId(
    r"foo",
    r"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
  );

  final _foo4 = jni.Jni.dylib.lookupFunction<
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        ffi.Int callType,
        jni.JObjectPtr s0,
        jni.JObjectPtr s1,
        jni.JObjectPtr s2,
        jni.JObjectPtr s3,
      ),
      jni.JniResult Function(
        jni.JObjectPtr obj,
        jni.JMethodIDPtr methodID,
        int callType,
        jni.JObjectPtr s0,
        jni.JObjectPtr s1,
        jni.JObjectPtr s2,
        jni.JObjectPtr s3,
      )>('callMethodV');

  /// from: public java.lang.String foo(java.lang.String a, java.lang.String b, java.lang.String c, java.lang.String d)
  /// The returned object must be released after use, by calling the [release] method.
  jni.JString foo4(
    jni.JString a,
    jni.JString b,
    jni.JString c,
    jni.JString d,
  ) {
    return _foo4(
      reference.pointer,
      _id_foo as jni.JMethodIDPtr,
      jni.JniCallType.objectType,
      a.reference.pointer,
      b.reference.pointer,
      c.reference.pointer,
      d.reference.pointer,
    ).object(jni.JString.type);
  }
}

final class $FooType extends jni.JObjType<Foo> {
  const $FooType();

  @override
  String get signature => r"LFoo;";

  @override
  Foo fromReference(jni.JReference reference) => Foo.fromReference(reference);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($FooType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($FooType) && other is $FooType;
  }
}