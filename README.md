# Weighted-Interval Problem
## Dynamic Programming Weighted Interval Scheduling Implementation
I chose to create the dynamic programming implementation for the weighted interval scheudling problem. 

## Compiling the Program
This program can be run on Ubuntu. 

First, navigate to the project folder then compile using the line below:
* g++ std=c++14 -Wall -o cmake-build-debug/Weighted_Interval.exe main.cpp

Second, enter the cmake-build-debug folder and run the program using the line below:
* ./Weighted_Interval.exe

## Running the Program
This program comes with two test files. You can choose from "data.csv" or "data2.csv".

The program will begin by prompting a selection between the two files.

It will then output the optimal weight and the task selection that provides that weight. 

## Program Creation
This program was written in C++. 
It begins by parsing the given file and storing the tasks in a vector.
* This is achieved using getline() and then istringstream to read in each value of the line into its appropriate variables.
* The start, finish and weight values are then used to create a new task and it is added to the tasks vector.

Then the tasks are sorted in descending order of finish time. 
* This is achieved using insertion sort to order the tasks.

Next, the p-value for each task is created and stored in a vector.
* P-values are calcuated by finding the next earliest task that is compatible with the current one.

Then the vectors are used to calculate the optimal weight for the given tasks. This is done using memoization and storing the previously calculated values in a map. 
* This is achieved by using the formula: M[j] = max(weight(j) + opt(p(j)), opt(j-1)) or by returning a previously calculated value

Finally, the optimal weight is used to create the subset of tasks that produces the optimum. 
