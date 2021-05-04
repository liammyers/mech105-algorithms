# Homework 06 - Problem 1 Info
---
Despite not speaking binary, and them not speaking any human languages, you have somehow befriended several robots. Lets close that gap by writing an algorithm to convert numbers to binary! (I guess you can express every thought in just numbers now?)

Your function should have:
- One input: the number in base 10 (a.k.a. decimal, or "normal numbers", as in "I have 237 apples")
- One output: an array of the input converted to base 2 (a.k.a. binary, as in "beep boop I am a robot, I counted 11101101 apples")

The output should be an array! That means that if you put in the decimal number 2, then the output should be [1 0]. Matlab has a built in function to convert from decimal to binary (called "dec2bin"). Use that to test your program with different decimals and see if you get the right output. Don't use it in your function here on Matlab Grader though, you won't get credit if you do.

Also consider the special cases: 
- what happens if you try a decimal value of zero with your program? 
- Only convert positive numbers (including zero) for now, the binary for a negative number is... more difficult
