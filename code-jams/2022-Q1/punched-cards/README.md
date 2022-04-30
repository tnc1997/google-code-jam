# Punched Cards

## Problem

A secret team of programmers is plotting to disrupt the programming language landscape and bring punched cards back by introducing a new language called Punched Card Python that lets people code in Python using punched cards! Like good disrupters, they are going to launch a viral campaign to promote their new language before even having the design for a prototype. For the campaign, they want to draw punched cards of different sizes in ASCII art.

![Punched Card](https://codejam.googleapis.com/dashboard/get_file/AQj_6U1czYfn54qiD2aqETqCx884cVUzIDuxEgv_7KFfDN5b8VWc1JFa-nVRTY2r_KjyYVaL1w/punched_card.png)

The ASCII art of a punched card they want to draw is similar to an R×C matrix without the top-left cell. That means, it has (R⋅C)−1 cells in total. Each cell is drawn in ASCII art as a period (.) surrounded by dashes (-) above and below, pipes (|) to the left and right, and plus signs (+) for each corner. Adjacent cells share the common characters in the border. Periods (.) are used to align the cells in the top row.

For example, the following is a punched card with R=3 rows and C=4 columns:

```text
..+-+-+-+
..|.|.|.|
+-+-+-+-+
|.|.|.|.|
+-+-+-+-+
|.|.|.|.|
+-+-+-+-+
```

There are more examples with other sizes in the samples below. Given the integers R and C describing the size of a punched card, print the ASCII art drawing of it as described above.

## Input

The first line of the input gives the number of test cases, T. T lines follow, each describing a different test case with two integers R and C: the number of rows and columns of the punched card that must be drawn.

## Output

For each test case, output one line containing Case #x:, where x is the test case number (starting from 1). Then, output (2⋅R)+1 additional lines with the ASCII art drawing of a punched card with R rows and C columns.

## Limits

Time limit: 5 seconds.

Memory limit: 1 GB.

### Test Set 1 (Visible Verdict)

1≤T≤81.

2≤R≤10.

2≤C≤10.
