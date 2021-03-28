/// Calculates the minimum cost that Cody-Jamal needs to pay in copyrights for a finished mural given a cost of CJ (X), cost of JC (Y), and a string representing the current state of the mural (S).
int calculateMinimumCost(int X, int Y, String S) {
  // Converts the string into a modifiable list of code units.
  final a = S.codeUnits.toList();

  // Stores the minimum cost.
  var y = 0;

  // Iterates over each of the characters in the string.
  //
  // CJ?C??C?
  //
  for (var i = 0; i < a.length; i++) {
    // If the current character is not equal to "?".
    //
    // CJ?C??C?
    // ^
    if (a[i] != 63) {
      // If the current character is not the first character and the previous character is not equal to this character.
      //
      // CJ?C??C?
      // ^^
      if (i != 0 && a[i - 1] != a[i]) {
        // If the previous character is equal to "C", then the current character must be equal to "J" so increment the minimum cost by the cost of CJ; otherwise, the previous character must be equal to "J" and the current character must be equal to "C" so increment the minimum cost by the cost of JC.
        //
        // CJ?C??C?
        // ^^
        y += a[i - 1] == 67 ? X : Y;
      }
    } else {
      // If the current character is the last character.
      //
      // CJJCCCC?
      //        ^
      if (i == a.length - 1) {
        // If the current character is not the first character.
        //
        // CJJCCCC?
        //        ^
        if (i != 0) {
          // Sets the current character to the previous character, which incurs no cost.
          //
          // CJJCCCCC
          //       ^^
          a[i] = a[i - 1];
        }
      } else {
        // Iterates over each of the succeeding characters in the string.
        //
        // CJ?C??C?
        //    ^
        for (var j = i + 1; j < a.length; j++) {
          // If the current succeeding character is not equal to "?".
          //
          // CJ?C??C?
          //    ^
          if (a[j] != 63) {
            // If the current character is not the first character and the previous character is equal to the current succeeding character.
            //
            // CJJC??C?
            //    ^^ ^
            if (i != 0 && a[i - 1] == a[j]) {
              // Sets the current character and the character preceding the current succeeding character to the previous character.
              //
              // CJJCCCC?
              //    ^^^
              a[i] = a[j - 1] = a[i - 1];
            } else {
              // Stores the cost for the scenario where the "?" is replaced with a "C".
              var y1 = 0;
              // Stores the cost for the scenario where the "?" is replaced with a "J".
              var y2 = 0;

              // If the current character is not the first character.
              //
              // CJ?C??C?
              //   ^
              if (i != 0) {
                // If the previous character is equal to "C".
                //
                // CJ?C??C?
                //  ^
                if (a[i - 1] == 67) {
                  // Increments the cost for the scenario where the "?" is replaced with a "J" by the cost of CJ, because the previous character would be equal to "C" and the current character is equal to "J".
                  y2 += X;
                } else {
                  // Increments the cost for the scenario where the "?" is replaced with a "C" by the cost of JC, because the previous character would be equal to "J" and the current character is equal to "C".
                  //
                  // CJ?C??C?
                  //  ^^
                  y1 += Y;
                }
              }

              // If the succeeding character is equal to "C".
              //
              // CJ?C??C?
              //    ^
              if (a[j] == 67) {
                // Increments the cost for the scenario where the "?" is replaced with a "J" by the cost of JC, because the current character would be equal to "J" and the succeeding character is equal to "C".
                //
                // CJ?C??C?
                //   ^^
                y2 += Y;
              } else {
                // Increments the cost for the scenario where the "?" is replaced with a "C" by the cost of CJ, because the current character would be equal to "C" and the succeeding character is equal to "J".
                y1 += X;
              }

              // If the cost for the scenario where the "?" is replaced with a "C" is less than the cost for the scenario where the "?" is replaced with a "J".
              if (y1 < y2) {
                // Increments the minimum cost by the cost for the scenario where the "?" is replaced with a "C".
                y += y1;
                // Sets the current character and the character preceding the current succeeding character to a "C".
                //
                // CJCC??C?
                //   ^
                a[i] = a[j - 1] = 67;
              } else {
                // Increments the minimum cost by the cost for the scenario where the "?" is replaced with a "J".
                y += y2;
                // Sets the current character and the character preceding the current succeeding character to a "J".
                //
                // CJJC??C?
                //   ^
                a[i] = a[j - 1] = 74;
              }
            }

            // Sets the current index to the index of the succeeding character, because the "?"s have been substituted.
            //
            // CJJC??C?
            //   ^^
            i = j;

            // Breaks out of the inner for loop, because the "?"s have been substituted.
            break;
          }
        }
      }
    }
  }

  // Returns the minimum cost.
  return y;
}

// C = 67
// J = 74
// ? = 63
