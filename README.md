# Timer Interrupt Demo in PULPino
## Introduction
This is a small led blink demo and is just a small homework. I write this demo of led blink in order to learn the work flow of timer interrupt handling in pulpino with zeroriscy core. If you want to know more about pulpino, please click their [official repo in github](https://github.com/pulp-platform/pulpino) or go to their [official website](https://pulp-platform.org/).
## How to use
If you want to run my demo, you need a FPGA development board and a PC with linux system. My development board is from a Chinese company called *ANLOGIC* and I also use their official IDE called *TangDynasty*. If you have the same setup with me, you can run this demo directly. If not, maybe you need to rebuild a project in your software and rewrite the ADC file to adapt to your development board.

First, you need to install *RISCV GNU Toolchain* in your linux, see [this repo](https://github.com/riscv/riscv-gnu-toolchain) to learn more. Remember to install 32 bit version. And you also need to install *git* in your linux, it's easy so I believe you can find the method from the Internet.

Then, use `git clone git@github.com:itsHuShihang/timer-interrupt.git` to download my repo to local.

Next, open the terminal and use `sh run.sh` to finish the whole compile and link flow. You will generate a file called **ext_mem.dat**. This is an executable file.

Finally, download the executable file to your development board and enjoy the beautiful led lights.