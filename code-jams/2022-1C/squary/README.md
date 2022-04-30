# Squary

## Problem

Addition and squaring do not commute. That is, the square of the sum of all elements of a list of integers is not necessarily equal to the sum of the squares of those same elements. However, this is true for some lists; one example is [3,−2,6], because (3+(−2)+6)2=49=32+(−2)2+62. Let us call these lists squary.

![Squary](https://codejam.googleapis.com/dashboard/get_file/AQj_6U29Q1lUHibLFmI6z9RSgN8xTlX-Cx5W6La0srhUE75ZVhfpw4G9XNW9Y-Bf0A/squary.png)

Given a (not necessarily squary) list of relatively small integers, we want to know whether it is possible to add at least 1 and at most K more elements such that the final list is squary. Each added element must be an integer between −1018 and 1018, inclusive, and these do not have to be distinct from each other or from the initial list's elements.

## Input

The first line of the input gives the number of test cases, T. T test cases follow. Each test case is described in two lines. The first line contains two integers N and K, the number of elements of the initial list and the maximum number of elements you may add, respectively. The second line contains N integers E1,E2,…,EN, representing the N elements of the initial list.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1). If it is possible to add at least 1 and at most K elements (each an integer between −1018 and 1018, inclusive) to the initial list such that the square of the sum of its elements equals the sum of the squares of its elements, y should be z1 z2 … zr, where 1≤r≤K and the zi values are the additional elements. If there is no way to accomplish this, y should be IMPOSSIBLE.

## Limits

Memory limit: 1 GB.

1≤T≤100.

1≤N≤1000.

−1000≤Ei≤1000, for all i.

### Test Set 1 (Visible Verdict)

Time limit: 5 seconds.

K=1.

### Test Set 2 (Visible Verdict)

Time limit: 10 seconds.

2≤K≤1000.
