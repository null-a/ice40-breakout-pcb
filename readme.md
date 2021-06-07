# Lattice iCE40 HX4K breakout / dev board

## Introduction

This KiCAD project contains the design of a break out / dev board for
a Lattice iCE40 HX4K FPGA.

I'm a novice at PCB design, so please don't assume anything here
represents good practice. I was motivated to tackle this after seeing
Matt Venn's [iCE40 board](https://github.com/mattvenn/first-fpga-pcb).
Some elements of the design are based on
the [TinyFPGA BX](https://github.com/tinyfpga/TinyFPGA-BX).

## Features

* SPI flash for configuration.
* On-board clock.
* Powered by 5v from a micro USB connector. Regulators for 3.3v and
  1.2v. Power LED.
* Single output LED.
* 72 GPIO pins broken out. sysCONFIG pins broken out for programming
  the flash. Cold boot config pins broken out.
* The USB data lines are connected to the FPGA. This makes it possible
  to program the board directly over USB using e.g. the TinyFPGA
  bootloader.
* 2 layer PCB.
* Designed for hand assembly.

## Project Log

* 2021-06-07: I now have the
  [TinyFPGA bootloader](https://github.com/tinyfpga/TinyFPGA-Bootloader) working.
* 2021-05-22: Confirmed that I can blink the on-board LED using the
  FPGA. I'm currently using an external programmer to load the
  configuration into the on-board flash. (See [blinky](blinky).)
* 2021-05-12: First
  board
  [assembled](https://www.dropbox.com/s/xi2ujczmzbuk978/?raw=1).
* 2021-05-10: Prototype boards received.
* 2021-04-22:
  [Revision A](https://www.dropbox.com/s/bwuf1rviyvo0iy6/?raw=1) of
  the board completed. Prototype boards ordered.
