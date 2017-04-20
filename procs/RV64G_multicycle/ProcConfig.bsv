
// Copyright (c) 2016 Massachusetts Institute of Technology

// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use, copy,
// modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
// BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
// ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

/*
 * This file is the configuration file for Riscy processors. This file defines
 * macros that are used during the BSV compilation process to select what
 * processor to build.
 *
 * This ProcConfig.bsv is for connectal-based designs. When a connectal flag
 * is added to the makefile like so:
 *   CONNECTALFLAGS += -D FOO=5
 * The flag FOO is defined to be 5 throughout the build process (Makefile,
 * BSV, C++, and TCL). The makefile for each connectal-based processor has
 * defined macros to give information about the processor to build.
 *
 * If you want to make a non-connectal-based design, then you will implement
 * your own ProcConfig.bsv where you define only the BSV macros you want in
 * your design.
 */

// ConnectalProjectConfig.bsv is generated by connectal during compilation.
// This file includes BSV defines for any macros defined in CONNECTALFLAGS.
// This file may define the following macros:
//   CONFIG_RV64 - 64-bit RISC-V ISA
//   CONFIG_RV32 - 32-bit RISC-V ISA
//   CONFIG_S -    Supervisor Mode
//   CONFIG_U -    User Mode
//   CONFIG_M -    "M" ISA Extension - Multiplication and Division
//   CONFIG_A -    "A" ISA Extension - Atomic Memory Operations
//   CONFIG_F -    "F" ISA Extension - Single-Precision Floating Point
//   CONFIG_D -    "D" ISA Extension - Double-Precision Floating Point
// To see which macros are defined in this project, and to make modifications,
// see the project's Makefile
`ifdef CONNECTAL
`include "ConnectalProjectConfig.bsv"
`else
`define CONFIG_RV64
`define CONFIG_S
`define CONFIG_U
`define CONFIG_M
`define CONFIG_A
`define CONFIG_F
`define CONFIG_D
`endif

// BSV-only macros: These macros are only used within the BSV-project, so they
// are defined here instead of in CONNECTALFLAGS
`define REUSE_FMA
// `define NO_FDIV
// `define NO_FSQRT
// `define USE_DUMMY_FPU

// Debugging infrastructure
`define VERIFICATION_PACKETS

// Workarounds

