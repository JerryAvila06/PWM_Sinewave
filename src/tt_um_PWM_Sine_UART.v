/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_PWM_Sine_UART (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
    module PWM_Sine_UART(.clk1(clk) , rst(ui_in[6]) , sw_0(ui_in[5]) , sw_1(ui_in[4]) , uart_rxd(ui_in[0]) , uart_txd(uo_out[0]) , pwm_out(uo_out[2]));
    assign ui_out = 8'00000101;
    assign uio_eo = 8'b00000000;
    assign uio_out = 8'b00000000;

endmodule
