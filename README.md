# CS218

## Overview

This repository contains the project files for CS218, taken at the University of Nevada, Las Vegas (UNLV). The project involves developing programs in MIPS assembly language to perform various tasks.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/CS218.git
    cd CS218
    ```

2. **Setup MIPS Simulator:**

    Ensure you have a MIPS simulator installed. [SPIM](http://spimsimulator.sourceforge.net/) is a popular choice.

## Usage

Run the MIPS assembly programs using your MIPS simulator. For SPIM, use the following command:

```bash
spim -file <program_file.s>
```

# hello_world.s
.data
    hello: .asciiz "Hello, World!"
.text
    main:
        li $v0, 4
        la $a0, hello
        syscall
        li $v0, 10
        syscall

# Run the example:
```bash
spim -file hello_world.s
```

# fibonacci.s
.data
    num: .word 10
.text
    main:
        # Implementation of Fibonacci sequence
        # ...

# Run this example:
```bash
spim -file fibonacci.s
```

# License
Note: This project is for viewing purposes only and should not be copied. Unauthorized copying of this project is considered a violation of the student conduct code and will be subject to consequences.

Distributed under the BSD-3-Clause License. See LICENSE for more information.

BSD 3-Clause License

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Property of Daniel Martinez Julio & UNLV