// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// psudo code:
// i = 0
// r2 = 0
// while i < r1
//   r2 += r0
//   i += 1
// end

@i      // variable to track iterations
M=0     // initialized to 0
@R2     // need to initialize the register to be 0
M=0

(LOOP)
  // if i - R1 >= 0, jump to END
  @i
  D=M // D=i
  @R1
  D=D-M
  @END
  D;JGE

  // else add R0 to R2
  @R0
  D=M
  @R2
  M=D+M // R2=R2 + R0
  @i
  M=M+1 // i += 1
  @LOOP
  0;JMP // jump back to loop

(END)
  @END
  0;JMP // infinite loop