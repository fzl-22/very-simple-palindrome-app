import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_demo/src/utils/palindrome.dart';

part 'palindrome_event.dart';
part 'palindrome_state.dart';

class PalindromeBloc extends Bloc<PalindromeEvent, PalindromeState> {
  PalindromeBloc() : super(const PalindromeInitial()) {
    on<PalindromeEvent>((event, emit) {
      emit(const PalindromeLoading());
    });

    on<DeterminePalindromeEvent>(_determinePalindromeHandler);
  }

  Future<void> _determinePalindromeHandler(
    DeterminePalindromeEvent event,
    Emitter<PalindromeState> emit,
  ) async {
    try {
      final result = await determinePalindrome(event.input);

      emit(PalindromeSuccess(result));
    } catch (e) {
      emit(PalindromeFailed(e.toString()));
    }
  }
}
