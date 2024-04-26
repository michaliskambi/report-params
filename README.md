# report-params

Report received command-line parameters and call other program.

Trivial utility that reports the command-line parameters it receives and then calls another program with the same parameters. Useful for debugging situations when you want to see what exact parameters are being passed to a program -- e.g. when you're unsure what exact parameters have been passed after shell expansion from a complicated script, or from a complicated Makefile.

Note that command-line parameter 0 is the name of the program itself. This is also reported.

Using [Castle Game Engine](https://castle-engine.io/).

## Building

Compile by FPC (Free Pascal Compiler).

```shell
fpc report_params.dpr
```
