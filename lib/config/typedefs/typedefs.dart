import 'package:fpdart/fpdart.dart';

import '../../core/errors/failure.dart';

typedef VoidResult = Either<Failure, void>;
typedef Result<T> = Either<Failure, T>;
typedef ListResult<T> = Either<Failure, List<T>>;
typedef StreamResult<T> = Either<Failure, Stream<T>>;
typedef FutureResult<T> = Future<Result<T>>;
typedef FutureListResult<T> = Future<Result<List<T>>>;
typedef FutureVoidResult = Future<VoidResult>;
typedef FutureStreamResult<T> = Future<StreamResult<T>>;

typedef ExpectResult<T> = Right<Failure, T>;

typedef DataMap = Map<String, dynamic>;
