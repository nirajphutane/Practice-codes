
void main () {
  print(Solution().vigenereCipher('toerrishuman', [1, 2, 3])); // uqhstltjxncq
  print(Solution().vigenereCipher('toerrishuman', [1, 2]));  // uqftsktjvobp
  print(Solution().vigenereCipher('toerrishuman', [1])); // upfssjtivnbo
  print(Solution().vigenereCipher('bananasinpajamas', [1, 2, 3])); // ccqbpdtkqqcmbodt
  print(Solution().vigenereCipher('apy', [3]));  // dsb
}

class Solution {
  String vigenereCipher(final String word, final List<int> key) {
    String cipher = '';
    for (int i = 0; i < word.length; i++) {
      cipher += String.fromCharCode(((word[i].codeUnits[0] - 97 + key[i % key.length]) % 26) + 97);
    }
    return cipher;
  }
}