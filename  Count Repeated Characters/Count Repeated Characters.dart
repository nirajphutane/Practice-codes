
/*Count Repeated Characters*/

void main(){
  print(Solution().getRepeatedChars('aabbcddccb')); // 2a2bc2d2cb
  print(Solution().getRepeatedChars('mississippi'));  // mi2si2si2pi
  print(Solution().getRepeatedChars('SSassSS'));  // 2Sa2s2S
  print(Solution().getRepeatedChars('aaaabbc'));  // 4a2bc
}

class Solution {
  String getRepeatedChars(final String word) {
    String repeatedChars = '';
    int i = 1, count = 1;
    while (i < word.length) {
      if(word[i-1] == word[i]){
        count++;
      } else {
        repeatedChars += count > 1? '$count${word[i-1]}': word[i-1];
        count = 1;
      }
      i++;
    }
    repeatedChars += count > 1? '$count${word[i-1]}': word[i-1];
    return repeatedChars;
  }
}

