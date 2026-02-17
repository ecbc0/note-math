#import "../module/module.typ": *
#show: module

Propositional Logic
#indent[
  Examples in natural language
  #table(
    columns: 2,
    [*Proposition*] , [*Truth value (bool)*] ,
    [Humans are living beings], [True, true, 1],
    [Iron is a living being], [False, false, 0]
  )

  Digital circuits represent bool
  #table(
    columns: 2,
    [*Circuit value*] , [*bool*] ,
    [High level], [1],
    [Low level], [0]
  )

  The hardware implementation of digital circuits is not handled here. I don't know the details either
]
#tag("logic-operator") logical and, or, not
#indent[
  - And, $and$, `and`, logical conjunction
  - Or, $or$, `or`, logical disjunction
  - Not, $not$, `not`, logical negation

  Examples in natural language
  #table(
    columns: 2,
    [*Proposition*], [*Truth value*],
    [Humans are living beings *and* 1 is a natural number], [1],
    [Humans are living beings *and* 1 = 2], [0]
  )

  Formal language
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

  Digital circuit and logic gate representations of $and,or,not$

  #image("../image/gate.png", width: 60%)

  Are gates designed to disallow reverse current?

  A `not` gate turns low level into high level, which shows the hardware implementation of a gate needs external energy, it needs to be powered

  $and,or,not$ are "redundant", e.g. logically equivalently, we can use $not, and$ to represent $or$

  Circuit gate implementation starts with `not,nand`, i.e., $not, (not and)$. But I think maintaining the symmetry of $and, or$ is useful, whether cognitively or in terms of the duality of $and, or$ with respect to $not$
]
#tag("computability") Computability of circuits
#indent[
  Any ${0,1}^n -> {0,1}^m$ function can be made using logic gates

  (image from p.85 of @ref-1)
  #stack( dir: ltr,
    image("../image/compute-function-input.png", width: 30%),
    image("../image/decoder.png", width: 30%),
  )
  Consider the input ${0,1}^n$ and output ${0,1}^m$ of the ${0,1}^n -> {0,1}^m$ function separately
  - Construction of ${0,1}^n$ inputs
  #indent[
    According to the image above, using $n$ circuits $A_0 ,…, A_(n - 1)$ + $n$ `not` gates + $2^n$ `and` gates $Y_0 ,…, Y_(2^n - 1)$, for a total of $2^n$ input possibilities

    Some functions only need a part of the $2^n$ inputs, not all of them. In these cases, some wires don't need to be connected

    $n ⇝ 2^n$ represents the "multiplicative" property of ${0,1}$ value parallel circuits
  ]
  Regarding the output, let's first discuss the ${0,1}^1$ output
  - Construction of ${0,1}^1$ output
  #indent[
    Among the $Y_0 ,…, Y_(2^n - 1)$ inputs, connect the wires that you want to output as $1$ to an `or` gate

    *Example* `not xor` function. Connect the inputs $00, 11$ to the output `or` gate

    #image("../image/compute-function-output.png", width: 40%)

    `xor` is called exclusive or, $⊕$. The truth table for this function

    #table(
      columns: 3, align: center,
      [$p$],[$q$],[$p ⊕ q$],
      [1],[1],[0],
      [1],[0],[1],
      [0],[1],[1],
      [0],[0],[0]
    )
  ]

  - Construction of ${0,1}^m$ output. Can be thought of as $m$ ${0, 1}^1$ as its components

  If a full ${0,1}^n -> {0,1}^m$ function isn't needed, the circuit computing elements don't necessarily have to be built in this fixed way. They can be further simplified based on the situation to reduce the number of gates used. But we won't get into details here
]
A symbolic representation for multiple input or output lines in a computing unit (p. 54 of @ref-1) (3 inputs 2 outputs) #image("../image/multi-lines-symbol.png", width: 30%)

#tag("control-circuit") Control circuit, selector or multiplexer

  $S$ is the control circuit. Its function is
  - When $S = 0$, $D_0$ outputs to $Y$, $D_1$ doesn't output to $Y$
  - When $S = 1$, $D_1$ outputs to $Y$, $D_0$ doesn't output to $Y$

  (p. 81--82 of @ref-1)

  #stack( dir: ltr,
    image("../image/multiplexer-function.png", width: 25%),
    image("../image/multiplexer-impl.png", width: 25%)
  )
  $2^n$ inputs $D_0 ,…, D_(2^n - 1)$ need $n$ control circuits $S_0 ,…, S_(n - 1)$

#tag("De-Morgan-law") negative dual 律 or De Morgan 律

  $
    not (not A) &= A \
    not (A and B) &= (not A) or (not B) \
    not (A or B) &= (not A) and (not B)
  $

  Prove by exhaustion, just like how humans counting is actually exhaustion. Same below

#tag("boolean-algebra")
#indent[
  bool algebra is denoted as ${0,1},+,*$ or ${0,1},or,and$

  #tag("bool-distributive-law") Distributive Law
  #indent[
    $
      (A + B) * C &= A * C + B * C \
      "or" (A or B) and C &= (A and C) or (B and C)
    $

    其 negative dual

    $
      (A * B) + C &= A * C + B * C \
      "or" (A and B) or C &= (A or C) and (B or C)
    $

    Inductively ($j_1 ... j_n  =1 ... m$ and $j(i)$ refers to taking all ${1 ,…, n} -> {1 ,…, m}$ functions)

    $ And_(i=1..n) Or_(j=1..m) A_(i j) = Or_(j_1 ... j_n  =1 ... m) And_(i=1..n) A_(i j(i)) $

    Similarly

    $ Or_(i=1..n) And_(j=1..m) A_(i j) = And_(j_1 ... j_n  =1 ... m) Or_(i=1..n) A_(i j(i)) $
  ]
  #tag("bool-commutative-law") 交换律 $A + B = B + A$. same for $*$

  #tag("bool-associative-law") 结合律 $(A + B) + C = A + (B + C)$. same for $*$
]
#tag("periodic-circuit") Periodic Circuit

  #image("../image/periodic-circuit.jpeg", width: 60%)

  Implemented by crystal oscillators

#tag("memory-circuit") Circuit Memory
#indent[
  Black box model #image("../image/memory-1.png", width: 60%)

  Possible implementation #image("../image/memory-2.png", width: 70%)

  - The middle of the diagram uses a loop circuit to reuse the Bool value from the previous cycle. If write control is turned off, the values of $"read", overline("read")$ remain unchanged
  - Inverters (`not` gates) ensure current direction and prevent attenuation (via external energy)
  - Suppose the value of the yellow part in the loop circuit is $a$, and the blue part is $overline(a)$. To write $0$ into an existing $a = 1$, a higher write voltage than the one in the loop circuit is needed to override the loop, i.e. using higher voltage $overline("write") = 1$ thus $overline(a) = 1$ to override the existing $a = 1$

  #tag("finite-machine") Finite State Machine

  #tag("i/o") The input of a circuit might come from the outside world (e.g. sensors, keyboards), and the output of a circuit might also go to the outside world (e.g. signal lights, screens)

  The rhythm of external inputs is usually inconsistent with the rhythm of the computer's internal periodic circuits, so the external inputs need to pass through synchronization components first
]
#tag("memory-array") Memory array
#indent[
  *Example* $2^3$ is the number of steps taken when counting from 000, 001, 010 to 111, although this assumes we can recognize three bits. $2^n = underbrace(2 ⋯ 2 , n"-fold")$, $101 = 1 * 2^2 + 0 * 2^1 + 1 * 2^0 = 4 + 1 = 5$

  Use the range of natural numbers contained in multiple bits, for example 3 bits $0, 1 ,…, 7$ as parameters, to correspond to real-world content. *Example* The representation of characters in a computer e.g. ASCII, Unicode, the position and color of pixels on a screen

  (image modified from wiki media about ASCII. Hex refers to hexadecimal)

  #image("../image/ASCII.png")

  In practical applications, multiple bits per address is better than 1 bit per address, or rather, a two-dimensional memory array is more efficient than a one-dimensional one

  (p. 265 of @ref-1)

  #image("../image/memory-array.png", width: 30%)
]
#tag("instruction") 指令
#indent[
  Control the computer to complete some circuit tasks through instructions. Instructions are also represented by binary (multi-bit data). The instruction stream is generated by the compiler based on the source code and stored in memory, then read and executed by the CPU

  Some common circuit tasks
  - Addition of natural numbers
  - Judging whether bit data meets the required conditions, for example, judging if $i > 2$
  - Jumping to the execution of other instructions

  Assume an instruction is completed within one circuit cycle (single-cycle computer)

  *Example* `add` instruction. `add x_1 x_2`. The bit data fields of the instruction are divided into three areas, representing different types of information

  #image("../image/add-instruction.png", width: 70%)

  #image("../image/add-instruction-computer.png", width: 80%)

  + Reading the `add` instruction
    - The `add` instruction at `adress_0` (`add x_1 x_2` as well as `adress_1, adress 2` come from source code and compiler generation)
    - The value `adress_0` stored at the fixed memory address `adress_of_instruction` is read out, the data in the index area of the `add` instruction is sent to the control signal component (control unit), then control signals are calculated and output (too many details, see @ref-1)
  + Execute the `add` instruction
    - The output control signals are input to the memory's control circuit components, reading out `x_1` in `adress_1` and `x_2` in `adress_2` from memory, and inputting them into the arithmetic component (ALU)
    - Based on the output control signals, the output `x_1 + x_2` from the arithmetic component is written to `adress_1` (overwriting the value of `x_1`)
  + Enter and fetch the instruction for the next cycle
    - The value `adress_0` stored in `adress_of_instruction` is sent by the pre-designed circuit to the arithmetic component to calculate `adress_0 + 1` i.e. the next instruction address, which is then written into the data within `adress_of_instruction`. `adress_0 + 1` will be executed in the next circuit cycle

  Other instructions might have more than two data areas (non-instruction index areas)
]
Instruction stream

*Example* #tag("loop") 
#indent[
  The speed of the cycle circuit is far higher than human speed (1 GHz = 10^9 cycles per second)

  Loops in high-level programming languages
  ```rs
  let i : int = 0;
  while (i < 10) {
      i = i + 1;
  } // result = 10
  ```
  #image("../image/while-computer.png", width: 90%)

  + Fetch instruction

    The `bgt` (branch_grater_than) instruction is stored at `adress_0`. (Instructions are generated from source code and the compiler.) `10` is in one data area of `bgt`, and the number of instructions needed for the while loop `3` is in another data area of `bgt`

  + Execute instruction

    Execute condition check $i < 10$

    Read out `i` and `10`, compare their sizes in the arithmetic unit, give a control signal based on the result, and combine it with the control signal given by the `bgt` index area

    According to the result of the conditional judgment, perform different tasks

    - When $i < 10$
    #indent[
      The arithmetic unit outputs a control signal based on this judgment, changing the value stored in `adress_of_instruction` to the address of the next instruction `adress_0 + 1`
      - The instruction at `adress_0 + 1` needs to perform the task $i_"new" = i_"old" + 1$

        Use the `add` instruction to calculate `i + 1` and write it back to `adress_1`

      - After executing `add`, go back to the judgment for the next loop $i < 10?$

        The instruction following the `add` instruction is a `jump` instruction at `adress_0 + 2`; its execution result is modifying the value of `adress_of_instruction` to `adress_of_instruction - 2 = (adress_0 + 2) - 2 = adress_0`, achieving an instruction jump to perform the next loop judgment $i < 10?$
    ]
    - When $i >= 10$
    #indent[
      The arithmetic unit outputs a control signal based on this `bgt` judgment, changing the value stored in `adress_of_instruction` to `adress_0 + 3` instead of `adress_0 + 1`, jumping out of the while loop to execute the subsequent instructions
    ]
]
#tag("compile") #tag("parse")
#indent[
  Use a parser or compiler to verify the correctness of the token stream language; essentially, it traverses all language rules and then stores them in memory as structured data (some visual descriptions: tables, nodes, trees)

  One implementation method is recursive descent, enum + match (or if else) + recursion

  If you want to make software run on a computer, you have to turn the token stream of the source code into structured data, and then into an instruction stream

  If language rules are complex, they can be categorized and decomposed (multiple times), first traversing categories, then traversing rules within those categories. *Example* split into "syntax check" and "semantics check"
]
Heuristic examples of the concepts of abstraction and API (application programming interface): objects around you, you can use them conveniently without knowing their manufacturing principles, because they were designed that way

Computers, besides the advantage of high-speed periodic circuits, other advantages include memory storage capacity (1 GB = 2^(30+3) bit = 8589934592 bit) and memory persistence (power-on time)

Complex data structures and calculation functions can be constructed in memory. This might also be useful for many other fields

The motivation for variables or variable names is that humans cannot memorize and process that many addresses; variable names are intended to use semantics to assist human memory and usage, and let computers handle addresses automatically

Variables or variable names allow the values stored in memory to be reused through addresses, minimizing the memory and use of new addresses as much as possible