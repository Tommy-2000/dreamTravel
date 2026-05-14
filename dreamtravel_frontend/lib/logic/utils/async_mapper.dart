import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncMapper<T> on AsyncValue<T> {
  AsyncCase get dataFirst {
    return switch (this) {
      AsyncValue(:final T value, hasValue: true) => Success(value),
      AsyncValue(:final error?, :final stackTrace?) => Failure(
        error,
        stackTrace,
      ),
      _ => Loading(),
    };
  }
}

sealed class AsyncCase<T> {
  const AsyncCase();

  AsyncCase<(T, R)> merge<R>(AsyncCase<R> other) {
    return switch ((this, other)) {
      (
        Failure(:final error, :final stackTrace),
        Failure(error: final error2, stackTrace: final stackTrace2),
      ) =>
        Failure(
          CombinedException([(error, stackTrace), (error2, stackTrace2)]),
          stackTrace,
        ),
      (Failure(:final error, :final stackTrace), _) ||
      (
        _,
        Failure(:final error, :final stackTrace),
      ) => Failure(error, stackTrace),
      (Success(), Loading()) ||
      (Loading(), Success()) ||
      (Loading(), Loading()) => Loading(),
      (Success(value: final a), Success(value: final b)) => Success((a, b)),
    };
  }
}

final class Success<T> extends AsyncCase<T> {
  final T value;

  Success(this.value);
}

final class Failure<T> extends AsyncCase<T> {
  final Object error;
  final StackTrace stackTrace;

  Failure(this.error, this.stackTrace);
}

final class Loading<T> extends AsyncCase<T> {
  const Loading();
}

final class CombinedException implements Exception {
  final List<(Object error, StackTrace stackTrace)> exceptions;

  CombinedException(this.exceptions);

  @override
  String toString() {
    return 'Combined Exception:\n${exceptions.map((e) => '${e.$1}\n${e.$2}').join('\n')}';
  }
}
