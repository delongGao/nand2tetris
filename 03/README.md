## Project 3 - Memory & Program Counter

### Summary
The biggest difference and challenge for me during this week is to understands that memory is about sequential logics and using combinational logics to preserve program states over time. With the most basic and fundamental building block being `DFF(Data Flip-Flop)`, and the key characteristic being delay the current input to be the output of the next clock time. 

When we plug combinational(`Mux`) logics into DFF, what we have created is a chip that either preserves previous states or loads new state based on the control bit. This gives us the `Bit`.

`Bit` is the basic fundamental of all other memory chips: `Register`, and various `RAM`s.

### Highlights
1. How `DFF` is preserve and delay states, via wire output back into input pin
2. The use of `Mux` and `DMux` for merging and separating in parallel when decode address is really smart and efficient, very elegant.
3. How a single address bit vector could be split into multiple sub-vectors to refer different sections of the memory locations
4. How `Program Counter` combined all the previous knowledge we have into a small but very versatile chip that can do lots of things. It also helps me a lot to understand the sequential characteristic of clocked chips. 

### Lesson Learnt
- chip bins are very different from program parameters, you don't always define them in the order of using / referencing them. In the case of clocked chips, it's very likely that output pin(internal) is used before it's "defined". And this is fine in HDL, 