/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none
`include "impl_top.v"

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
    wire rst, sw_01, sw_11, uart_rx, uart_tx, pwm_outx;
  // All output pins must be assigned. If not used, assign to 0.
    assign rst1 = ui_in[6];
    assign sw_01 = ui_in[5];
    assign sw_11 = ui_in[4];
    assign uart_rx = ui_in[0];
    assign uart_tx = uo_out[0];
    assign pwm_outx = uo_out[2];
    
    assign ui_out = 8'b00000101;
    assign uio_oe = 8'b00000000;
    assign uio_out = 8'b00000000;
    

    impl_top impl_top_inst
    (
        .clk1(clk),
        .rst(rst1),
        .sw_0(sw_01), 
        .sw_1(sw_11), 
        .uart_rxd(uart_rx),
        .uart_txd(uart_tx),
        .pwm_out(pwmoutx)
    );

endmodule
