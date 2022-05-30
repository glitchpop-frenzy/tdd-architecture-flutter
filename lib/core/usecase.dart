import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_architecture_flutter/core/error/failures.dart';

/// This is the base class for all the use cases
/// such as Getting concrete number trivia & Getting random number trivia
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params param);
}

/// This will be used by the code whenever
/// the UseCase doesn't take any params to return return Trivia
/// Mainly when calling RandomTrivia in our case
class NoParams extends Equatable {
  @override
  List<Object?> get props => [props];
}
