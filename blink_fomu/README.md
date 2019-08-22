FOMU Blink
==========

Example blink for FOMU

Code comes from [FOMU Workshop](https://github.com/im-tomu/fomu-workshop/blob/master/verilog-blink/). The original code uses `fomu-flash`, which is a Raspberry Pi tool, this version generates a dfu which can be loaded with `dfu-util`

Usage
=====

```
make FOMU_REV=pvt1 run-dfu
```

