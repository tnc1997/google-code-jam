# Moons and Umbrellas

## Problem

Cody-Jamal is working on his latest piece of abstract art: a mural consisting of a row of waning moons and closed umbrellas. Unfortunately, greedy copyright trolls are claiming that waning moons look like an uppercase C and closed umbrellas look like a J, and they have a copyright on CJ and JC. Therefore, for each time CJ appears in the mural, Cody-Jamal must pay X, and for each time JC appears in the mural, he must pay Y.

![Moons and Umbrellas](https://codejam.googleapis.com/dashboard/get_file/AQj_6U2owO5JXHIGuA09leq_iuziif8xf8j8AWhNKwWXPxK_KhJTriQ5hvecBNuT2vgvaARVhhe_GSKL/moons_and_umbrellas.png)

Cody-Jamal is unwilling to let them compromise his art, so he will not change anything already painted. He decided, however, that the empty spaces he still has could be filled strategically, to minimize the copyright expenses.

For example, if CJ?CC? represents the current state of the mural, with C representing a waning moon, J representing a closed umbrella, and ? representing a space that still needs to be painted with either a waning moon or a closed umbrella, he could finish the mural as CJCCCC, CJCCCJ, CJJCCC, or CJJCCJ. The first and third options would require paying X+Y in copyrights, while the second and fourth would require paying 2⋅X+Y.

Given the costs X and Y and a string representing the current state of the mural, how much does Cody-Jamal need to pay in copyrights if he finishes his mural in a way that minimizes that cost?

## Input

The first line of the input gives the number of test cases, T. T lines follow. Each line contains two integers X and Y and a string S representing the two costs and the current state of the mural, respectively.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1) and y is the minimum cost that Cody-Jamal needs to pay in copyrights for a finished mural.

## Limits

Time limit: 10 seconds.

Memory limit: 1 GB.

1≤T≤100.

Each character of S is either C, J, or ?.

### Test Set 1 (Visible Verdict)

1≤ the length of S ≤10.

1≤X≤100.

1≤Y≤100.

### Test Set 2 (Visible Verdict)

1≤ the length of S ≤1000.

1≤X≤100.

1≤Y≤100.

## Extra Credit

What if some copyright holders could pay Cody-Jamal for the advertisement instead of being paid? Cody-Jamal getting paid is represented by a negative cost.

### Test Set 3 (Hidden Verdict)

1≤ the length of S ≤1000.

−100≤X≤100.

−100≤Y≤100.
