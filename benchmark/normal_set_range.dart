import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:jni/jni.dart';

const N = 10 * 1000;

class NormalSetRangeBenchmark extends BenchmarkBase {
  const NormalSetRangeBenchmark() : super('normal');

  static void main() {
    const NormalSetRangeBenchmark().report();
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
    final arr = JArray(jint.type, N);
    for (var i = 0; i < N; ++i) {
      arr[i] = i;
    }
  }
}

void main() {
  NormalSetRangeBenchmark.main();
}
