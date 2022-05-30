import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_architecture_flutter/core/error/failures.dart';
import 'package:tdd_architecture_flutter/core/usecase.dart';
import 'package:tdd_architecture_flutter/features/number_trivia/domain/entities/number_trivia.dart';

import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberRepository extends UseCase {
  final NumberTriviaRepository repository;
  GetConcreteNumberRepository(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?> call(param) async {
    return await repository.getConcreteNumberTrivia(param.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [props];
}
