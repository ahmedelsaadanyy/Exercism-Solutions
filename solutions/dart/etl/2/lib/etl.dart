class Etl {
  final Map<String, int> letterPoints = {
    'a': 1,'e': 1,'i': 1,'o': 1,'u': 1,'l': 1,'n': 1,'r': 1,'s': 1,'t': 1,
    'd': 2,'g': 2,
    'b': 3,'c': 3,'m': 3,'p': 3,
    'f': 4,'h': 4,'v': 4,'w': 4,'y': 4,
    'k': 5,
    'j': 8,'x': 8,
    'q': 10,'z': 10,};
  Map<String, int> transform(Map<String, List<String>> legacy) {
    Map<String, int> result = {};
    for (int i = 0; i < legacy.values.length; i++) {
      for (var letter in legacy.values.elementAt(i)) {
        for (int x = 0; x < letterPoints.keys.length; x++) {
          if (letterPoints.containsKey(letter.toLowerCase())) {
          result.addAll({letter.toLowerCase():letterPoints[letter.toLowerCase()]!});
          }
        }
      }
    }
    return result;
  }
}