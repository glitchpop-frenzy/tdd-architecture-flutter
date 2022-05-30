import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_flutter/core/error/failures.dart';
import 'package:tdd_architecture_flutter/core/usecase.dart';
import 'package:tdd_architecture_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_architecture_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?> call(NoParams param) async {
    return await repository.getRandomNumberTrivia();
  }
}
