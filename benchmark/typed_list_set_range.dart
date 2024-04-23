import 'dart:io';
import 'dart:typed_data';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:jni/jni.dart';

const N = 10 * 1000;

class TypedListSetRangeBenchmark extends BenchmarkBase {
  TypedListSetRangeBenchmark() : super('two step with typed list');

  static void main() {
    TypedListSetRangeBenchmark().report();
  }

  @override
  void setup() {
    Process.runSync('dart', ['run', 'jni:setup']);
    Jni.spawnIfNotExists(
      dylibDir: "build/jni_libs",
      jvmOptions: ["-Xmx128m"],
    );
  }

  @override
  void run() {
    final l = Int32List(N);
    for (var i = 0; i < N; ++i) {
      l[i] = i;
    }
    final arr = JArray(jint.type, N);
    arr.setRange(0, N, l);
  }
}

void main() {
  TypedListSetRangeBenchmark.main();
}
