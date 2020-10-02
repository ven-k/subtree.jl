/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HVL__LSBUFLV2HV_CLKISO_HLKG_3_V
`define SKY130_FD_SC_HVL__LSBUFLV2HV_CLKISO_HLKG_3_V

/**
 * lsbuflv2hv_clkiso_hlkg: Level-shift clock buffer, low voltage to
 *                         high voltage, isolated well
 *                         on input buffer, inverting sleep
 *                         mode input.
 *
 * Verilog wrapper for lsbuflv2hv_clkiso_hlkg with size of 3 units
 * (invalid?).
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hvl__lsbuflv2hv_clkiso_hlkg.v"

`ifdef USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hvl__lsbuflv2hv_clkiso_hlkg_3 (
    X      ,
    A      ,
    SLEEP_B,
    VPWR   ,
    VGND   ,
    LVPWR  ,
    VPB    ,
    VNB
);

    output X      ;
    input  A      ;
    input  SLEEP_B;
    input  VPWR   ;
    input  VGND   ;
    input  LVPWR  ;
    input  VPB    ;
    input  VNB    ;
    sky130_fd_sc_hvl__lsbuflv2hv_clkiso_hlkg base (
        .X(X),
        .A(A),
        .SLEEP_B(SLEEP_B),
        .VPWR(VPWR),
        .VGND(VGND),
        .LVPWR(LVPWR),
        .VPB(VPB),
        .VNB(VNB)
    );

endmodule
`endcelldefine

/*********************************************************/
`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hvl__lsbuflv2hv_clkiso_hlkg_3 (
    X      ,
    A      ,
    SLEEP_B,
    VPWR   ,
    VGND   ,
    LVPWR  ,
    VPB    ,
    VNB
);

    output X      ;
    input  A      ;
    input  SLEEP_B;
    input  VPWR   ;
    input  VGND   ;
    input  LVPWR  ;
    input  VPB    ;
    input  VNB    ;

    // Voltage supply signals
    supply1 VPWR ;
    supply0 VGND ;
    supply1 LVPWR;
    supply1 VPB  ;
    supply0 VNB  ;

    sky130_fd_sc_hvl__lsbuflv2hv_clkiso_hlkg base (
        .X(X),
        .A(A),
        .SLEEP_B(SLEEP_B)
    );

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_SC_HVL__LSBUFLV2HV_CLKISO_HLKG_3_V
