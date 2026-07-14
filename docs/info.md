# 2-to-1 Multiplexer

## How it works

This project implements a simple 2-to-1 multiplexer.

Inputs:

- ui_in[0] = A
- ui_in[1] = B
- ui_in[2] = SEL

Output:

- uo_out[0] = Y

Logic:

Y = SEL ? B : A

---

## How to test

Set the inputs as follows:

| SEL | A | B | Y |
|-----|---|---|---|
|0|0|X|0|
|0|1|X|1|
|1|X|0|0|
|1|X|1|1|
