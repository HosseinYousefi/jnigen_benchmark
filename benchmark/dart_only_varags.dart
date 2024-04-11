import 'dart:io';
import 'dart:math';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:jni/jni.dart';

import 'package:jnigen_benchmark/dart_only_varargs.dart' as dart_only_varargs;

const N = 10 * 1000;

class DartOnlyVarArgsBenchmark extends BenchmarkBase {
  const DartOnlyVarArgsBenchmark() : super('dart_only_varargs');

  static void main() {
    const DartOnlyVarArgsBenchmark().report();
  }

  @override
  void setup() {
    Process.runSync('dart', ['run', 'jni:setup']);
    Process.runSync('javac', ['java/Foo.java']);
    Jni.spawnIfNotExists(
      dylibDir: "build/jni_libs",
      jvmOptions: ["-Xmx128m"],
      classPath: ['java/'],
    );
  }

  @override
  void run() {
    final foo = dart_only_varargs.Foo();
    final rand = Random();
    for (var i = 0; i < N; ++i) {
      using((arena) {
        final a = rand.nextDouble().toString().toJString()..releasedBy(arena);
        final b = rand.nextDouble().toString().toJString()..releasedBy(arena);
        final c = rand.nextDouble().toString().toJString()..releasedBy(arena);
        final d = rand.nextDouble().toString().toJString()..releasedBy(arena);
        foo.foo().releasedBy(arena);
        foo.foo1(a).releasedBy(arena);
        foo.foo2(a, b).releasedBy(arena);
        foo.foo3(a, b, c).releasedBy(arena);
        foo.foo4(a, b, c, d).releasedBy(arena);
      });
    }
  }
}

void main() {
  DartOnlyVarArgsBenchmark.main();
}
