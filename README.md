# verilog_cosa

Cosa tutorial with Verilog

Runs safety checking on property `((clk = 0_1) | (reset = 0_1) | (out = 0_8)) 

```
CoSA -i counter.v[counter],counter.sts --safety -p "((clk = 0_1) | (reset = 0_1) | (out = 0_8))" 
```