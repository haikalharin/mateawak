import 'dart:async';

class ResetTransformer implements StreamTransformer<int, int> {
  final int resetValue;

  ResetTransformer(this.resetValue);

  @override
  Stream<int> bind(Stream<int> stream) {
    return stream.asyncMap((value) async {
      if (value == resetValue) {
        return 0;
      } else {
        return value;
      }
    });
  }

  @override
  StreamTransformer<RS, RT> cast<RS, RT>() {
    return ResetTransformer(resetValue) as StreamTransformer<RS, RT>;
  }
}