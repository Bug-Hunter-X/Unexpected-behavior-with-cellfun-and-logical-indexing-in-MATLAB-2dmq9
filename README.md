# MATLAB Bug: Cellfun and Logical Indexing

This repository demonstrates an uncommon bug in MATLAB related to the interaction between `cellfun`, logical indexing, and empty cells within a function. The bug can lead to unexpected results when handling cell arrays containing empty cells.

## Bug Description
The function `myFunction` aims to remove empty cells from a cell array. However, under certain conditions, it exhibits unexpected behavior. The issue is subtle and arises from the way logical indexing interacts with the output of `cellfun` when the input is a cell array.

## How to Reproduce
1.  Clone this repository.
2.  Open `bug.m` in MATLAB.
3.  Run the code to see the unexpected output.
4.  Compare it to the expected output, which is [1,3,5].

## Solution
The solution involves using a more robust approach to handle empty cells, as demonstrated in `bugSolution.m`.