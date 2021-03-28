String insertMinNoOfOpeningAndClosingParenthesis(String string) {
  var s = string.split('').map((input) => int.parse(input)).toList();

  var y = '';

  var depth = 0;

  for (var i = 0; i < s.length; i++) {
    var character = s[i];

    y += '(' * (character - depth);
    depth = character;

    y += character.toString();

    character = i < s.length - 1 ? s[i + 1] : 0;

    if (character < depth) {
      y += ')' * (depth - character);
      depth = character;
    }
  }

  return y;
}
