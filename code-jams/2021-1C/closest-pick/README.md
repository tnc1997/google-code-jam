# Closest Pick

## Problem

You are entering a raffle for a lifetime supply of pancakes. N tickets have already been sold. Each ticket contains a single integer between 1 and K, inclusive. Different tickets are allowed to contain the same integer. You know exactly which numbers are on all of the tickets already sold and would like to maximize your odds of winning by purchasing two tickets (possibly with the same integer on them). You are allowed to choose which integers between 1 and K, inclusive, are on the two tickets.

![Closest Pick](https://codejam.googleapis.com/dashboard/get_file/AQj_6U3vxbXfEdM3tAiEmLZ4nUd9_d-UZGjJGOfu40NDJZrSIgEEZo7oHAeaNWY1_dMjyJqW6Ezz/closest_pick.png)

You know you are the last customer, so after you purchase your tickets, no more tickets will be purchased. Then, an integer c between 1 and K, inclusive, is chosen uniformly at random. If one of your tickets is strictly closer to c than all other tickets or if both of your tickets are the same distance to c and strictly closer than all other tickets, then you win the raffle. Otherwise, you do not win the raffle.

Given the integers on the N tickets purchased so far, what is the maximum probability of winning the raffle you can achieve by choosing the integers on your two tickets optimally?

## Input

The first line of the input gives the number of test cases, T. T test cases follow. Each test case consists of two lines. The first line of a test case contains two integers N and K: the number of tickets already sold and the limit of the range of integers to pick from, respectively. The second line contains N integers P1,P2,…,PN, representing the integers on the tickets that have already been purchased.

## Output

For each test case, output one line containing Case #x: y, where x is the test case number (starting from 1) and y is the maximum win probability you can achieve if you choose your tickets optimally.

y will be considered correct if it is within an absolute or relative error of 10−6 of the correct answer. See the FAQ for an explanation of what that means, and what formats of real numbers we accept.

## Limits

Time limit: 10 seconds.

Memory limit: 1 GB.

1≤T≤100.

1≤N≤30.

1≤Pi≤K, for all i.

### Test Set 1 (Visible Verdict)

1≤K≤30.

### Test Set 2 (Visible Verdict)

1≤K≤109.
