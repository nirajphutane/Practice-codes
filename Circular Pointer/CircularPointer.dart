
import 'dart:math';

void main () {
  print(Solution().getTime('BZA')); // 4
}

class Solution {
  int getTime(final String word) {
    int minimumSeconds = 0;
    String previousChar = 'A';
    for (int i = 0; i < word.length; i++) {
      int clockwiseSeconds = word[i].codeUnitAt(0) - previousChar.codeUnitAt(0);
      if (clockwiseSeconds < 0) {
        clockwiseSeconds += 26;
      }

      int antiClockwiseSeconds = previousChar.codeUnitAt(0) - word[i].codeUnitAt(0);
      if (antiClockwiseSeconds < 0) {
        antiClockwiseSeconds += 26;
      }

      minimumSeconds += min(clockwiseSeconds, antiClockwiseSeconds);
      previousChar = word[i];
    }
    return minimumSeconds;
  }
}