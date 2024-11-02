
/*Sum of two large positive integers*/

void main() {
  print(Solution().sum('3333311111111111', '44422222221111'));  // 3377733333332222
  print(Solution().sum('129', '1'));  // 130
  print(Solution().sum('99', '99'));  // 198
  print(Solution().sum('999', '1'));  // 1000
  print(Solution().sum('12', '198111'));  // 198123
  print(Solution().sum('3333311111111111', '44422222221111'));  // 3377733333332222
  print(Solution().sum('7777555511111111', '3332222221111')); // 7780887733332222
}

class Solution {
  String sum(final String num1, final String num2) {
    String addition = '';
    int i = num1.length-1, j = num2.length-1, carry = 0;
    while (i >= 0 || j >= 0 || carry != 0) {
      int sum = carry;
      if (i >= 0) {
        sum += int.parse(num1[i]);
        i--;
      }
      if (j >= 0) {
        sum += int.parse(num2[j]);
        j--;
      }
      carry = sum ~/ 10;
      sum %= 10;
      addition = '$sum$addition';
    }
    return addition;
  }
}