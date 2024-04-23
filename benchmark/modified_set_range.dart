import 'dart:ffi';
import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:ffi/ffi.dart';
import 'package:jni/jni.dart';

const N = 10 * 1000;

class ModifiedSetRangeBenchmark extends BenchmarkBase {
  ModifiedSetRangeBenchmark() : super('modified');

  static void main() {
    ModifiedSetRangeBenchmark().report();
  }

  late final Pointer<Int32> ptr;

  @override
  void setup() {
    Process.runSync('dart', ['run', 'jni:setup']);
    Jni.spawnIfNotExists(
      dylibDir: "build/jni_libs",
      jvmOptions: ["-Xmx128m"],
    );
    ptr = malloc<Int32>();
  }

  int length = N;

  void set(JArray<jint> arr, int index, int value) {
    RangeError.checkValidIndex(index, this);
    ptr.value = value;
    Jni.env.SetIntArrayRegion(arr.reference.pointer, index, 1, ptr);
  }

  @override
  void run() {
    final arr = JArray(jint.type, N);
    for (var i = 0; i < N; ++i) {
      set(arr, i, i);
    }
  }
}

void main() {
  ModifiedSetRangeBenchmark.main();
}
