# Roaring Years

## Problem

Something is happening in 2021 that has not happened in over a century. 2021, like 1920 before it, is a roaring year. A year represented by a positive integer y is roaring if the decimal writing (without leading zeroes) of y is the concatenation of the decimal writing (without leading zeroes) of two or more distinct consecutive positive integers, in increasing order. In this case, 2021 is a roaring year because it is the concatenation of 20 and 21.

![Roaring Years](https://codejam.googleapis.com/dashboard/get_file/AQj_6U0EyJ2fwmDnVAdMqYxQPibfkiR2VbdmCYI4nyTuQBC7AgR9txefUNmKMAzP1IaGWRwAE7zlMg/roaring_years.png) Three calendars from roaring years, marked to show how roaring their years are.

Other examples of roaring years are 12, 789, 910, 1234, and 9899100. 2020 was not roaring because the only list of two or more positive integers that concatenate into 2020 is [20,20], and it is not made of consecutive integers. Similarly, there are only three lists for 2019: [20,1,9], [201,9], and [20,19]. The first two are not made of consecutive integers, while the third does not have the integers in increasing order. Thus, 2019 was also not roaring. As a final example, 778 was not a roaring year because [7,78] and [77,8] are not made up of consecutive integers and [7,7,8] is not made up of distinct integers.

Given the current year (which may or may not be roaring), find what the next roaring year is going to be.

## Input

The first line of the input gives the number of test cases, T. T lines follow. Each line represents a test case and contains a single integer Y, the current year.

## Output

For each test case, output one line containing Case #x: z, where x is the test case number (starting from 1) and z is the first year strictly after Y that is roaring.

## Limits

Time limit: 30 seconds.

Memory limit: 1 GB.

1≤T≤100.

### Test Set 1 (Visible Verdict)

1≤Y≤106.

### Test Set 2 (Hidden Verdict)

1≤Y≤1018.
