## Machine Language

- Assembly language
  - What is this? 

    Usually in symbolic format, need to be translated into binary format by `Assembler` in order for machine to actually being able to execute it.

  - Why do we need this?
    
    It's basically another layer of abstraction between the machine and the high level system. It usually provides some basic functionalities using the low level machine instruction commands to access and manage the memories and IO devices. Some main benefits are:
    - Provides a cleaner and more consistent interfaces of ALU, memory and IO devices for high level systems and developers
    - Provides better performance when needed

  - The Assembly language shares lots of the general programming rules and principles as high level languages: 
    - using variables and labels
    - Indentation and comments help on readability
    - pseudo code helps on implementation

- IO devices
  - Memory map:
    - allows developers and high level systems to treat devices as part of memory, accessing / modifying states of devices becomes accessing / modifying memories, which we already know how to do. Again, great benefit of abstractions
  - Screen
    - Bit representing pixels
    - Bit map (memory map) combined with refresh generates state changes and then visual changes on physical screen
    - Bit map patterns needs to be calculated in order to render desired visual
    - The way visuals are rendered (Bit map is manipulated) could be very heavy if implemented naively. TODO: research on this.
  - Keyboard
    - number of bit pattern variations determines the number of possible recognizable inputs

- Note
  - Great general intro to machine language and the assembly languages, more importantly to me: why they are even necessary and the benefits they provide
  - IO devices abstracted as memory is cool
  - Computer graphics is both cool and hard to do right, it could be very heavy operations sometime.