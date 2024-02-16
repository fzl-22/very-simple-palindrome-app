part of 'palindrome_bloc.dart';

sealed class PalindromeEvent extends Equatable {
  const PalindromeEvent();

  @override
  List<Object> get props => [];
}

class DeterminePalindromeEvent extends PalindromeEvent {
  const DeterminePalindromeEvent(this.input);

  final String input;

  @override
  List<Object> get props => [input];
}
