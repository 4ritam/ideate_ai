abstract class UseCaseWithParams<Type, Params> {
  const UseCaseWithParams();

  Type call({required Params params});
}

abstract class UseCase<Type> {
  const UseCase();

  Type call();
}
