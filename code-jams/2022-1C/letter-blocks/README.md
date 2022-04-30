# Letter Blocks

## Problem

It is a rainy day, so you are indoors building towers of letter blocks. A letter block is a wooden cube that has a letter printed on one of its sides. The font used for the letters makes the blocks have a clear orientation: that is, there is only one side that can be pointed down (toward the floor) and one side that can be pointed up (toward the ceiling).

You have built multiple separate towers so far. Now you want to combine all of them into a single megatower by choosing one of your towers as the base, then picking up another tower (without changing the order of its blocks) and stacking the whole thing on top of that, and so on, until all towers have been used.

As an additional constraint for the megatower, for any two blocks that have the same letter, all blocks between them must also have that letter. That is, each letter of the alphabet that appears in the megatower needs to appear in one contiguous group (of one or more blocks).

For example, consider the following three possible megatowers. (These are separate examples, not built from the same original towers. Also note that the different block sizes are just for fun and are not part of the problem.)

![Letter Blocks](https://codejam.googleapis.com/dashboard/get_file/AQj_6U0VayFOwmc9d3JKWQXzWic3KUwWASMm75gfl01AT48dGokSmH9skvnMmbDJLM18_bCqyuM/letter_blocks.png)

The leftmost two megatowers are valid, since each letter appears in a contiguous group. However, the rightmost megatower is not valid, because there is a B in between two Cs.

Given the towers that you have built so far, can you stack them all up into a valid megatower?

## Input

The first line of the input gives the number of test cases, T. T test cases follow. Each test case is described by two lines. The first line consists of a single integer N, the number of towers that are currently built. The second line consists of N strings S1,S2,…,SN representing the towers. Each of these strings consists of only uppercase letters. The i-th letter of each of these strings is the letter on the i-th block from the bottom in the represented tower.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1) and y is a string representing a valid megatower as described above, or the word IMPOSSIBLE if no valid megatower can be built. (Notice that the string IMPOSSIBLE can never itself represent a valid megatower, since the two Is have other letters in between.)

## Limits

Time limit: 5 seconds.

Memory limit: 1 GB.

1≤T≤100.

1≤ the length of Si≤10, for all i.

### Test Set 1 (Visible Verdict)

2≤N≤6.

### Test Set 2 (Visible Verdict)

2≤N≤100.
