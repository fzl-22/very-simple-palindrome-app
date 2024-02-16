Future<String> determinePalindrome(String input) async {
  try {
    // mock loading for demo purposes only
    await Future<void>.delayed(const Duration(milliseconds: 1500));

    final text = input.replaceAll(' ', '').toLowerCase();

    if (text.isEmpty) throw Exception('Input kosong, coba masukkan input ...');

    final length = text.length;

    for (var i = 0; i < length / 2; i++) {
      if (text[i] != text[length - i - 1]) {
        throw Exception("'$input' bukan palindrome gan...");
      }
    }

    return "'$input' adalah palindrome...";
  } catch (e) {
    rethrow;
  }
}
