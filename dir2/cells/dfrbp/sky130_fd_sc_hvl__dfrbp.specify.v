/*
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

specify
(negedge RESET_B => (Q +: RESET_B ) ) = 0:0:0;  // delay is tris
(negedge RESET_B => (Q_N -: RESET_B ) ) = 0:0:0;  // delay is tris
(posedge CLK => (Q : CLK ) ) = (0:0:0,0:0:0); // delays are tris,tfall
(posedge CLK => (Q_N : CLK ) ) = (0:0:0,0:0:0); // delays are tris,tfall
$width (posedge CLK &&& (RESET_B===1'b1) , 0:0:0, 0, notifier);
$width (negedge CLK &&& (RESET_B===1'b1) , 0:0:0, 0, notifier);
$width (negedge RESET_B , 0:0:0 , 0 , notifier ) ;
$recrem ( posedge RESET_B , posedge CLK , 0:0:0, 0:0:0, notifier , , , RESETB_delayed , CLK_delayed ) ;
$setuphold ( posedge CLK , posedge D , 0:0:0, 0:0:0, notifier , , COND0 , CLK_delayed , D_delayed ) ;
$setuphold ( posedge CLK , negedge D , 0:0:0, 0:0:0, notifier , , COND0 , CLK_delayed , D_delayed ) ;
endspecify