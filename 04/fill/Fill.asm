// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// pseudo code: 
// while true
//   input = keypress_code
//   if input.zero?
//     screen = white
//   else
//     screen = black
//   end
// end

@i
M=0
@SCREEN
D=A
@screen_addr
M=D // @screen = 16384

@8000
D=A
@screen_size
M=D

// main loop of get key input
(LOOP)
  // get keyboard input
  @KBD
  D=M
  // if is zero, whiten screen
  @WHITEN
  D;JEQ
  // if is not zero, blacken screen
  @BLACKEN
  D;JNE

// drawing loop for white
// TODO: these drawings are pretty heavy
//       I can actually notice the clunky
//       when the screen refresh with keystroke
//       would like to know a better implementation
(WHITEN)
  @i
  D=M
  @screen_size
  D=D-M
  @BACK_TO_LOOP
  D; JGE
  @i
  D=M
  @screen_addr
  A=M+D
  M=0
  @i
  M=M+1
  @WHITEN
  0; JMP

// drawing loop for black
(BLACKEN)
  @i
  D=M
  @screen_size
  D=D-M
  @BACK_TO_LOOP
  D; JGE
  @i
  D=M
  @screen_addr
  A=M+D
  M=-1
  @i
  M=M+1
  @BLACKEN
  0; JMP

// used to reset variables and from drawing to main loop
(BACK_TO_LOOP)
  @i
  M=0
  @SCREEN
  D=A
  @screen_addr
  M=D // @screen = 16384
  @LOOP
  0;JMP