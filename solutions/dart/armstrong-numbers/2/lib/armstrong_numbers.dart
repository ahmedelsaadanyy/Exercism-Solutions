class ArmstrongNumbers {
 bool isArmstrongNumber(String number) {
    List<int> digits = number.split('').map(int.parse).toList();
    int digitsLength = digits.length;
    BigInt result = digits.fold(
      BigInt.zero,
      (sum, digit) => sum + BigInt.from(digit).pow(digitsLength),
    );
    return result == BigInt.parse(number);
  }
}