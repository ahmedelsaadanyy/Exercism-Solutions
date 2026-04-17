class AtbashCipher {
 final List<String> alphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];
  late final List<String> reversedAlphabets = alphabets.reversed.toList();
  
  String encode(String word) {
    final cleanWord = word.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    final Map cipherMap = Map.fromIterables(alphabets, reversedAlphabets);
    final buffer =StringBuffer();
    int count = 0;
    for(var char in cleanWord.split(''))
    {
      if(count ==5)
      {
        buffer.write(' ');
        count=0;
      }
      buffer.write(cipherMap[char] ?? char);
      count++;
    }
    
    return buffer.toString();
  }

  String decode(String word) {
    final cleanWord = word.replaceAll(RegExp(r'\s+'), '');
    final Map cipherMap = Map.fromIterables(alphabets, reversedAlphabets);
    final reverseMap = {for (var e in cipherMap.entries) e.value: e.key};
    final buffer = StringBuffer();
    for(var char in cleanWord.split(''))
    {
      buffer.write(reverseMap[char] ?? char);
    }

    
    return buffer.toString();
  }
}