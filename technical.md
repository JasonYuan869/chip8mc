# CHIP-8 Minecraft Emulator - Technical Explanation (WIP)

## Limitations of Minecraft
Although datapacks in Minecraft simplify the process of command block creations immensely, there are many limitations within the commands themselves which make programming
anything for Minecraft quite difficult. Most modern programming language have the following features:
- Variables
- Data types
- Functions
- Control flow
- Loops

In Minecraft, not all of these features exist and for the ones that do, they must be adapted to conform to Minecraft's limits.

### Variables
Minecraft features a scoreboard system, which allows numerical data to be assigned to players in named objectives. These variables can then be read from and modified through commands
The available operations are:
- `scoreboard players set <player> <objective> <score>`
  - Assign a literal number \<score\> to \<player\> in \<objective\>
- `scoreboard players add <player> <objective> <score>`
  - Add a literal number \<score\> to \<player\> in \<objective\>
- `scoreboard players remove <player> <objective> <score>`
  - Remove a literal number \<score\> from \<player\> in \<objective\>
- `scoreboard players operation <player1> <targetObjective> <operator> <player2> <sourceObjective>`
  - Perform an arithmetic operation using two objectives as arguments, then store in \<targetObjective\>
  - \<operator\> can be:
    - "+=" Addition: Add source's score to that of target
    - ""-=" Subtraction: Subtract source's score from that of target
    - "*=" Multiplication: Set target's score to the product of target's and source's score
    - "/=" (Integer) Division: Divide target's score by source's score, and use the result (rounded down) to set the target score
    - "%=" Modulus: Divide target's score by source's score, and use the remainder to set the target score
    - "=" Assign: Set target's score to that of source
    - "<" Min: Set target's score to source's score only if source has the lesser score
    - ">" Max: Set target's score to source's score only if source has the greater score
    - "><" Swaps target's and source's scores

Minecraft does not feature bitwise operators including logic and shifts.
### Data types
Minecraft's scoreboard only allows numerical data to be stored, however in the context of an emulator (or any CPU), that is more than sufficient. CHIP-8 is an 8-bit architecture in which all data can be stored in decimal numbers from 0-255.
The biggest limitation of the scoreboard system is their lack of arrays or iterables. 
Other languages can directly access certain indexes of an array with `array[index]`, which allows for the following behaviour:
```java
// Take two bytes of memory starting from the PC, then store that as the opcode
opcode = (mem[PC] << 8) + mem[PC + 1];
```
In Minecraft, with the lack of arrays, this will essentially result in:
```java
if (PC == 0) {
    opcode = mem_0;
    opcode *= 0x100;  // equivalent to << 8 because no bit shifting of scoreboard variables
    opcode += mem_1;
}
if (PC == 1) {
    opcode = mem_1;
    opcode *= 0x100;
    opcode += mem_2;
}
// repeat for the 4096 possible values of PC
```
This means that instead of having a single memory array of length 4096, we must create 4096 different `mem_x` variables.

### Functions
Datapacks are built upon individual `.mcfunction` files, which contain a set of commands that will be immediately executed within a single game tick.
There are no methods to explicitly provide function arguments or return data, however this can easily be solved by allocating a scoreboard objective dedicated for global static variables.
In the datapack, there is a player named `Global` which parents almost all objectives. This name is not special in any way, but just a label for these global static variables.

### Control flow
Most programs are built upon control flow: if-else statements, switch-case, etc. Minecraft has a very limited system for conditionals which involves the `execute` command.

`execute <if/unless> score <player> <objective> matches <range> run <command to run>`

This command compares a players score to a literal range, and runs a command depending on the equality. The \<range\> argument takes either single numbers or a range of numbers (e.g. `0..3`).
The command to run can be any valid Minecraft command, but in the case of this emulator is usually a `function` command to run another `.mcfunction` file. Or, it might be a `scoreboard` command to modify the value of a score.

The `execute` system does not have an `else if` equivalent. This means that all `execute` functions will be checked one after the other and executed if condition met.
This limitation has led to accidental recursion, because one `execute` would check for a certain scoreboard value and change the same scoreboard value, which would trigger the next condition to be unintentionally met.

### Loops
Minecraft does not have iterable loops (while/for), however `.mcfunction` files can be used to call themselves recursively. An example of this can be seen in [first_loop.mcfunction](./data/cpu/functions/opcode_switch/opcode_dxxx/first_loop.mcfunction).

## Programming the screen
All relevant display commands are found in the [renderer/functions](./data/renderer/functions) folder. The CHIP-8 interpreter originally ran on a 64x32 pixel monochrome display, which is pretty easy to implement into Minecraft using a wall of white and black wool blocks.
With a total of 2048 pixels, the value of each pixel is stored in a scoreboard objective `pixel_x`. [draw_frame.mcfunction](./data/renderer/functions/draw_frame.mcfunction) is called
every tick to read the 2048 scoreboard objectives and set the respective wool blocks to black.

The files in the `set_pixel` folder contains a set of functions that reads the value of a scoreboard objective called `pixel`, which should have been set by the opcode handler upon receiving the opcode to draw.
This objective identifies the specific pixel to trigger, however recall how Minecraft does not support arrays (i.e. `pixel[index]`). 
Thus, the function must check for each possible value of `pixel` and execute a set of commands accordingly. Also recall that `execute` commands do not have `else if`. 
To accomplish this task efficienty (at the cost of storage), the `set_pixel` functions iterate through a tree of four branches to effectively halve the number of conditions checked. This strategy is used multiple times throughout the emulator and was 
also used in SethBling's Atari 2600 emulator.

CHIP-8 does not set or disable pixels directly, rather it toggles them based on their existing state. If the pixel was erased, then it sets the CPU's carry flag `VF`. This system is also implemented properly in the `set_pixel` functions.

## Programming the keyboard
Keyboard commands are found in [keyboard/functions](./data/keyboard/functions). CHIP-8 uses a 16-key keyboard with hexadecimal digits. The keyboard is simulated on screen in Minecraft's chat window.
The `tellraw` command in Minecraft supports clickable events upon clicking on text in chat. This feature is used to trigger a scoreboard objective `button_x` when a certain button is pressed.
It also prints to chat a copy of the keyboard with a visible sign that the key was pressed.

## Programming the CPU
By far the most tedious task to do when it comes to an emulator, let alone an emulator in Minecraft. CHIP-8 features 4KB of RAM, 16 8-bit registers (V0-VF), 1 16-bit register (I), and 16x16 bit LIFO stack array. The CPU itself features 36 different opcodes ranging from arithmetic, control flow, and display.
Like the pixel data, the RAM is also stored in a (de facto) array of scoreboard objectives, `mem_x`, `x` between \[0, 16384). Registers and "pseudo-registers" (program counter, stack pointer, delay timer, etc.) are also stored in scoreboard objectives. Each opcode is exactly two bytes long, so the emulator reads two bytes starting from the PC. Since you cannot pass scoreboard values to index the de facto memory array, I have a couple thousand .mcfunction files check every possible value of PC and copy the two bytes accordingly. This is optimized through a search tree with four branches to compromise between file quantity and speed.

Once the bytes are copied, the emulator then performs certain integer division and modulo operations to simulate a bitwise AND and isolate the four nibbles of the opcode.
I have a debug system setup that will set scores to various named armor stands based on the nibbles and PC location, which is then printed to chat using the `/tellraw` command if debug is enabled. After, the four nibbles are passed to another search tree that acts as a switch-case to search for the specific opcode. This is found in the [cpu/functions/opcode_switch](./data/cpu/functions/opcode_switch) folder.

The opcode will eventually execute and increase the PC by 2, which is then looped again every tick.


