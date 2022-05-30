import 'package:dartz/dartz.dart';
import 'package:tdd_architecture_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_architecture_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_architecture_flutter/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberRepository usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberRepository(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(text: 'test', number: 1);

  test('Tests fetching trivia for concrete number', () async {
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => const Right(tNumberTrivia));

    final result = await usecase(const Params(number: tNumber));
    expect(result, const Right(tNumberTrivia));

    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));

    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
