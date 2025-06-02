#import "/module/module.typ": *
#show: module

Propositional Logic
#indent[
  Examples of Natural Language
  #table(
    columns: 2,
    [*Proposition*] , [*Boolean Value (bool)*] , 
    [Humans are organisms], [True, true, 1], 
    [Iron is an organism], [False, false, 0]
  )

  Digital circuits represent bool
  #table(
    columns: 2,
    [*Circuit Value*] , [*bool*] , 
    [High Level], [1], 
    [Low Level], [0]
  )

  I won't deal with the hardware implementation of digital circuits here. I don't know the details either.
]
#tag("logic-operator") logical and, or, not
#indent[
  - And, $and$, `and`, logical conjunction
  - Or, $or$, `or`, logical disjunction
  - Not, $not$, `not`, logical negation

  Examples of Natural Language
  #table(
    columns: 2,
    [*Proposition*], [*Boolean Value*], 
    [Humans are organisms *and* 1 is a natural number], [1],
    [Humans are organisms *and* 1 = 2], [0]
  )

  Formal Language
    #table(
    columns: 3, align: center,
    [$p$],[$q$],[$p and q$],
    [1],[1],[1],
    [1],[0],[0],
    [0],[1],[0],
    [0],[0],[0],
  )

  #table(
    columns: 3, align: center,
    [$p$],[$q$],[$p or q$], 
    [1],[1],[1], 
    [1],[0],[1], 
    [0],[1],[1], 
    [0],[0],[0]
  )

  #table(
    columns: 2, align: center,
    [$p$],[$not p$],
    [1],[0],
    [0],[1], 
  )

  Representation of $and,or,not$ in digital circuits and logic gates

  #image("/image/gate.jpeg", width: 60%)

  Are gates designed to prevent reverse current?

  The `not` gate converts a low level to a high level, indicating that the hardware implementation of the gate requires external energy and needs to be powered on

  "Redundancy" e.g. we can use $not, and$ to represent $or$
  
  Circuit gate implementations start with `not,nand` or $not, (not and)$. But I think maintaining the symmetry of $and, or$ is useful, cognitively or in terms of negative duals.
]
#tag("computability") Computability of Circuits 
#indent[ 
  Logic gates can be used to create any ${0,1}^n -> {0,1}^m$ function
  
  (image from p.85 of @ref-1)
  #stack( dir: ltr,
    image("/image/compute-function-input.jpeg", width: 30%),
    image("/image/decoder.jpeg", width: 30%), 
  )

  - Construction of ${0,1}^n$ input
  #indent[
    $n$ circuits $A_0 ,…, A_(n - 1)$ require at most $2^n$ `and` gates $Y_0 ,…, Y_(2^n - 1)$. Some functions only need a portion of the $2^n$ inputs, in which case some lines are not connected.

    $n ⇝ 2^n$ represents the "multiplication" property of ${0,1}$ value parallel circuits
  ]
  - Construction of ${0,1}^1$ output
  #indent[
    In the input, connect the wires that you want to output to 1 to the or gate

    *Example* `not xor`

    #image("/image/compute-function-output.jpeg", width: 30%)
  ]
    Exclusive or, ⊕, `xor`

      #table(
        columns: 3, align: center,
        [$p$],[$q$],[$p ⊕ q$], 
        [1],[1],[0], 
        [1],[0],[1], 
        [0],[1],[1], 
        [0],[0],[0]
      )

  - Construction of ${0,1}^m$ output. Just connect the required wires to $m$ or games

  If the function does not require complete ${0,1}^n -> {0,1}^m$, the circuit calculation components do not necessarily have to be constructed in this fixed way. It can be further simplified and the use of gates can be reduced depending on the situation. But I won't go into details here
]
A symbolic representation of multiple input or output lines in a computing unit #image("/image/multi-lines-symbol.jpeg")

#tag("control-circuit") Control circuit, selector or multiplexer (multiplexer)

  $S = 0$ outputs $D_0$ to $Y$, $S = 1$ outputs $D_1$ to $Y$

  #stack( dir: ltr,
    image("/image/multiplexer-function.jpeg", width: 20%),
    image("/image/multiplexer-impl.jpeg", width: 25%)
  )
  $2^n$ inputs $D_0 ,…, D_(2^n - 1)$ require $n$ control circuits $S_0 ,…, S_(n - 1)$

#tag("De-Morgan-law") negative dual law or De Morgan's law 

  $
    not (not A) &= A \
    not (A and B) &= (not A) or (not B) \
    not (A or B) &= (not A) and (not B)
  $

  Proven by exhaustion, just like how humans count numbers is actually also exhaustion. Same below

#tag("boolean-algebra") 
#indent[
  bool algebra is denoted as ${0,1},+,⋅$ or ${0,1},or,and$
    
  #tag("bool-distributive-law") distributive law
  #indent[
    $
      (A + B) ⋅ C &= A ⋅ C + B ⋅ C \
      "or" (A or B) and C &= (A and C) or (B and C) 
    $

    Its negative dual

    $
      (A ⋅ B) + C &= A ⋅ C + B ⋅ C \
      "or" (A and B) or C &= (A or C) and (B or C) 
    $

    Inductively

    $ And_(i=1..n) Or_(j=1..m) A_(i j) = Or_(i=1..n) And_(j=1..m) A_(i j) $

    and e.g. $And_i Or_j And_k A_(i j k) = ⋯$
  ]
  #tag("bool-commutative-law") Commutative law $A + B = B + A$. same for $⋅$

  #tag("bool-associative-law") Associative law $(A + B) + C = A + (B + C)$. same for $⋅$ 
]
#tag("periodic-circuit") Periodic circuit

  #image("/image/periodic-circuit.jpeg", width: 60%)

  Implemented by crystal oscillator

#tag("memory-circuit") Circuit memory
#indent[
  Black box model #image("/image/memory-1.jpeg", width: 60%)
  
  Possible implementation #image("/image/memory-2.jpeg", width: 70%)

  - Use a ring circuit to reuse the 1/0 value of $a,overline(a)$ from the previous cycle
  - Inverter (`not` gate) ensures current direction and prevents 1 from decaying (through external energy) 
  - In order to write 0 to an existing 1, you need to write 1 to $overline("write")$ to get $overline(a) = 1$, and then invert it to $a = 0$
  - Need a higher write voltage than the voltage in the loop to overwrite the previously existing $1$? e.g. use a higher voltage $overline("write") = 1$ to overwrite the existing $a = 1$

  #tag("finite-machine") Finite State Machine
  
  #tag("i/o") The input of a circuit may come from the outside world (e.g. sensors, keyboards), and the output of the circuit may also reach the outside world (e.g. signal lights, screens)

  The rhythm of external input is usually inconsistent with the rhythm of the computer's internal periodic circuit, so the external input needs to pass through synchronization components first
]
#tag("memory-array") Memory array
#indent[
  Binary, order, natural number. *Example* $2^3$ is the number of steps from 000, 001, 010 to 111, although this assumes that we can recognize three bits. $2^n = underbrace(2 ⋯ 2 , n"-fold")$, $101 = 1 ⋅ 2^2 + 0 ⋅ 2^1 + 1 ⋅ 2^0 = 4 + 1 = 5$

  The range of natural numbers contained in multiple bits, for example, 3 bits of $0, 1 ,…, 7$ as parameters, to correspond to the real world content. *Example* Computer's character representation e.g. ASCII, Unicode, the position and color of the light-emitting points on the screen

  #image("/image/ASCII.jpeg")

  (image modified from wiki media about ASCII)

  In practical applications, multiple bits per address are better than 1 bit per address, or a two-dimensional memory array is more efficient than one-dimensional

  #image("/image/memory-array.jpeg", width: 20%)
]
#tag("instruction") Instruction
#indent[
  Usually represented by multi-bit data written in an address in memory to indicate certain circuit tasks

  Some common circuit tasks
  - Addition of natural numbers
  - Determine whether the bit data meets the required conditions 
  - Jump to the execution of other instructions

  Assume an instruction is completed in one circuit cycle (single-cycle computer)

  *Example* `add` instruction. `add x_1 x_2`. The bit data of the instruction is divided into three regions, representing different types of information

  #image("/image/add-instruction.jpeg", width: 70%)

  #image("/image/add-instruction-computer.jpeg", width: 80%)
  
  + Read the `add` instruction 
    - `add` instruction at `adress_0` (`add x_1 x_2` and `adress_1, adress 2` are from the source code and compiler generation)
    - The value `adress_0` stored in the fixed memory address `adress_of_instruction` is read, the data in the index area of the `add` instruction is sent to the control signal element (control unit), then the control signal is calculated and output
  + Execute the `add` instruction
    - The output control signal is input to the control circuit element of the memory, reading `x_1` in `adress_1` and `x_2` in `adress_2` from the memory, and inputting them to the arithmetic element (ALU)
    - According to the output control signal, the output of the arithmetic element `x_1 + x_2` is written to `adress_1`
  + Enter and read the instruction of the next cycle
    - The value `adress_0` stored in `adress_of_instruction` is sent to the arithmetic element by a well-designed circuit, calculating `adress_0 + 1` i.e. the next instruction address, which is written into the data in `adress_of_instruction`. `adress_0 + 1` will be executed in the next circuit cycle

  Other instructions may have more than two data areas (non-instruction index area)
]
Instruction stream 

*Example* #tag("loop") Loop
#indent[
  The speed of a periodic circuit is far greater than human speed (1 GHz = 10^9 cycles per second)

  Loops in high-level programming languages
  ```
  i : int = 0;
  while (i < 10) {
      i = i + 1;
  } // result = 10
  ```
  #image("/image/while-computer.jpeg", width: 90%)

  + Reading instructions

    The `bgt` (branch_grater_than) instruction is stored in `adress_0`. (Instructions are generated from source code and compilers.) `10` is in one data area of `bgt`, while the number of instruction streams `3` required for the while loop is in another data area of `bgt`.

  + Executing instructions 

    Executing the conditional judgment $i < 10$ 

    Read `i` and `10`, compare their sizes in the arithmetic element, give a control signal based on the result, combined with the control signal given by the `bgt` index area 

    Perform different tasks based on the result of the conditional judgment

    - When $i < 10$
    #indent[  
      The arithmetic element outputs a control signal based on this judgment, changing the value stored in `adress_of_instruction` to the address of the next instruction `adress_0 + 1`
      - The instruction at `adress_0 + 1` is to perform the task $i_"new" = i_"old" + 1$
        
        Use the `add` instruction to calculate `i + 1` and write it back to `adress_1`
      
      - After executing `add`, we need to return to the judgment of the next loop $i < 10?$ 
        
        The next instruction after the `add` instruction is the `jump` instruction. The result of the execution is to modify the value of `adress_of_instruction` to `adress_0`, implementing the jump of the instruction and performing the judgment of the next loop $i < 10?$ 
    ]
    - When $i >= 10$
    #indent[  
      The arithmetic element outputs a control signal based on this judgment, changing the value stored in `adress_of_instruction` to `adress_0 + 3`, breaking out of the while loop, and executing the subsequent instructions
    ]
]
#tag("compile") #tag("parse")
#indent[
  Use a parser to verify the correctness of the token stream language, traversing all language rules, or using a generated finite state machine
    
  The operation of the parser requires generating large and complex data structures in memory (some figurative descriptions: tables, nodes, trees)

  If the data stream is source code of a high-level programming language, an instruction stream can also be generated based on this data structure. This is called compilation (compile), but parse and compile are often used interchangeably

  If the language rules are very complex, the language rules can be classified and decomposed (multiple times), first traversing the classification, and then traversing the rules within the classification. *Example* Separate into "syntax check" and "semantics check"
]
An enlightening example of the concept of abstraction and API: The items around you can be used conveniently without knowing the manufacturing principle because they are designed that way

Computers, in addition to the advantage of high-speed periodic circuits, have other advantages, such as the capacity of memory (1 GB = 2^(30+3) bit = 8589934592 bit) and persistence (power-on time) 

They are part of reason why proof assistant are useful for human

Complex data structures and calculation functions can be constructed in memory. It may also be useful for many other fields.

The motivation for variables or variable names is that humans cannot remember so many addresses. Variable names are designed to assist humans with semantics and allow the computer to convert variable names into addresses, based on the variable's position in the overall program logic.

Variables or variable names allow the values stored in memory to be reused through addresses, rather than being one-time use