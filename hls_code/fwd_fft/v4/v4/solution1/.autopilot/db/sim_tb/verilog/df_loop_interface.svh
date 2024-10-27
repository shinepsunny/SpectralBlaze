`ifndef DF_LOOP_INTF__SV
    `define DF_LOOP_INTF__SV
    `timescale 1ns/1ps
    interface df_loop_intf(input clock, input reset);
        logic body_start;
        logic body_ready;
        logic body_done;
        logic body_continue;
        logic loop_start;
        logic loop_ready;
        logic loop_done;
        logic loop_continue;
        logic finish;
    endinterface
`endif
