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

`ifndef SKY130_FD_SC_HVL__UDP_ISOLATCHHV_PP_PLG_S_V
`define SKY130_FD_SC_HVL__UDP_ISOLATCHHV_PP_PLG_S_V

/**
 * udp_isolatchhv_pp$PLG$S: Power isolating latch (for HV). Includes
 *                          VPWR, LVPWR, and VGND power pins with
 *                          active high sleep pin (SLEEP).
 *
 * Verilog primitive definition.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef NO_PRIMITIVES
`include "./sky130_fd_sc_hvl__udp_isolatchhv_pp_plg_s.blackbox.v"
`else
primitive sky130_fd_sc_hvl__udp_isolatchhv_pp$PLG$S (
    UDP_OUT,
    UDP_IN ,
    VPWR   ,
    LVPWR  ,
    VGND   ,
    SLEEP
);

    output UDP_OUT;
    input  UDP_IN ;
    input  VPWR   ;
    input  LVPWR  ;
    input  VGND   ;
    input  SLEEP  ;

    table
     // UDP_IN VPWR LVPWR VGND SLEEP : out
          0     1     1    0     b   :  0   ;
          1     1     1    0     0   :  1   ;
          b     1     ?    0     1   :  0   ;
          ?     1     0    0     1   :  0   ;
          x     1     1    0     1   :  x   ;
    endtable
endprimitive
`endif // NO_PRIMITIVES

`default_nettype wire
`endif  // SKY130_FD_SC_HVL__UDP_ISOLATCHHV_PP_PLG_S_V
