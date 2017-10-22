## Project 2 - ALU

ALU, Arithmetic Logic Unit is one of the key components of CPU(Central Processing Unit) that enables us doing various arithmetic and logic operations for numbers in binary representation. Basically all the arithmetic operations are based on the logic operations. And we utilize all the internal chips we have built in previous weeks as abstractions to make complex operations easier to implement and reason about and errors more localized.

I like this week's project a lot, some highlights for this week:

- Bits to binary number representations, especially negative numbers using two's complement
- Using logic operations to accomplish arithmetic operations feels very magical but also makes very much sense, because all the results of arithmetic operations are numbers, which can again be represented as bits, as a result, all the arithmetic operations could be reasoned in binary logical manner.
- The main concept of abstraction here is very powerful, all the previous implementations of the built-in chips make the implementation of ALU so much easier. And at the same time, it's also safe to depend on this kind of abstraction because each of the previous implementations could all be easily unit-tested and make sure any possible errors are localized. I especially like the usage of Mux, Mux16 and Or8way.
- Another very useful and important information besides the project itself is the actual test script of the final ALU implementation. It introduces various examples of using the ALU to accomplish arithmetic and logic operations. This completes the loop of actually building something and knowing how to use it.
