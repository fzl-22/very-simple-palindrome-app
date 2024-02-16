import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/core/extensions/context_extension.dart';
import 'package:flutter_demo/core/resources/colour.dart';
import 'package:flutter_demo/core/resources/media.dart';
import 'package:flutter_demo/src/bloc/palindrome_bloc.dart';
import 'package:flutter_demo/src/widgets/avatar.dart';
import 'package:flutter_demo/src/widgets/floating_snackbar.dart';
import 'package:flutter_demo/src/widgets/loading_indicator.dart';
import 'package:flutter_demo/src/widgets/message_dialog.dart';
import 'package:flutter_demo/src/widgets/submit_button.dart';
import 'package:flutter_demo/src/widgets/text_input_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const name = 'home';
  static const path = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _palindromeController = TextEditingController();

  void _onSubmit(BuildContext context) {
    // Hide current primary focus (any keyboard)
    FocusManager.instance.primaryFocus?.unfocus();

    context.read<PalindromeBloc>().add(
          DeterminePalindromeEvent(
            _palindromeController.text,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(Media.background);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Media.background,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colour.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              SizedBox(height: 0.3 * context.height),
              const Avatar(),
              const SizedBox(height: 48),
              TextInputField(
                controller: _palindromeController,
                hintText: 'Masukkan palindrome',
              ),
              const SizedBox(height: 24),
              BlocConsumer<PalindromeBloc, PalindromeState>(
                listener: (context, state) async {
                  if (state is PalindromeFailed) {
                    context
                      ..clearSnackBars()
                      ..showSnackBar(
                        floatingSnackBar(
                          context: context,
                          content: state.errorMessage,
                        ),
                      );
                  } else if (state is PalindromeSuccess) {
                    await showDialog<void>(
                      context: context,
                      builder: (context) {
                        return messageDialog(
                          context: context,
                          message: state.message,
                        );
                      },
                    );
                  }
                },
                builder: (context, state) {
                  return SubmitButton(
                    onPressed: state is! PalindromeLoading
                        ? () => _onSubmit(context)
                        : null,
                    child: state is PalindromeLoading
                        ? const LoadingIndicator()
                        : const Text('CHECK'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
