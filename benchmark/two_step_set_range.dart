import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:jni/jni.dart';

const N = 10 * 1000;

class TwoStepSetRangeBenchmark extends BenchmarkBase {
  TwoStepSetRangeBenchmark() : super('two step');

  static void main() {
    TwoStepSetRangeBenchmark().report();
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
    final l = <int>[];
    for (var i = 0; i < N; ++i) {
      l.add(i);
    }
    final arr = JArray(jint.type, N);
    arr.setRange(0, N, l);
  }
}

void main() {
  TwoStepSetRangeBenchmark.main();
}
