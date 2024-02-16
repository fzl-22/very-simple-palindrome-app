part of 'palindrome_bloc.dart';

sealed class PalindromeState extends Equatable {
  const PalindromeState();

  @override
  List<Object> get props => [];
}

final class PalindromeInitial extends PalindromeState {
  const PalindromeInitial();
}

class PalindromeLoading extends PalindromeState {
  const PalindromeLoading();
}

class PalindromeSuccess extends PalindromeState {
  const PalindromeSuccess(this.message);

  final String message;

  @override
  List<String> get props => [message];
}

class PalindromeFailed extends PalindromeState {
  const PalindromeFailed(this.errorMessage);

  final String errorMessage;

  @override
  List<String> get props => [errorMessage];
}
