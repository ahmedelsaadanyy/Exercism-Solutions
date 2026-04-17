
   int score(String word) {
    late List<int> LetterScores = [];
    for (int i = 0; i < word.length; i++) {
      switch (word[i].toLowerCase()) {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
        case 'l':
        case 'n':
        case 's':
        case 't':
        case 'r':
          LetterScores.add(1);
          break;
        case 'd':
        case 'g':
          LetterScores.add(2);
          break;
        case 'b':
        case 'c':
        case 'm':
        case 'p':
          LetterScores.add(3);
          break;
        case 'f':
        case 'h':
        case 'v':
        case 'w':
        case 'y':
          LetterScores.add(4);
          break;
        case 'k':
          LetterScores.add(5);
          break;
        case 'j':
        case 'x':
          LetterScores.add(8);
          break;
        case 'q':
        case 'z':
          LetterScores.add(10);
          break;
      }
    }
     
    return LetterScores.fold(
      0,
      (previousValue, currentElement) => previousValue + currentElement,
    );
  }

