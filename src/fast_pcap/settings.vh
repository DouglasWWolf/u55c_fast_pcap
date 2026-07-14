`ifndef _settings_vh_
`define _settings_vh_

// We have 8GB of RAM available for storing data as it arrives
localparam[63:0] MAX_RAM = 64'h2_0000_0000;

localparam STAGE1_FIFO_DEPTH = 4096;
localparam STAGE1_FIFO_TYPE  = "ultra";

localparam STAGE2_FIFO_DEPTH = 4096;
localparam STAGE2_FIFO_TYPE  = "ultra";

localparam STAGE3_FIFO_DEPTH = 4096;
localparam STAGE3_FIFO_TYPE  = "ultra";

localparam PB_FIFO_DEPTH = 4096;
localparam PB_FIFO_TYPE  = "ultra";

// The frequency of the clock that serves as a timestamp
localparam TS_FREQUENCY = 322625265;

`endif
