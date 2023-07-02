`timescale 1ns/100ps
// Actel Corporation Proprietary and Confidential
// Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
// IN ADVANCE IN WRITING.  
// Revision Information:
// SVN Revision Information:
// SVN $Revision: 6419 $
// SVN $Date: 2009-02-04 04:34:22 -0800 (Wed, 04 Feb 2009) $
module
MIV_ESS_0_CoreGPIO_0_BFM_APB2APB
(
PCLK_PM
,
PRESETN_PM
,
PADDR_PM
,
PWRITE_PM
,
PENABLE_PM
,
PWDATA_PM
,
PRDATA_PM
,
PREADY_PM
,
PSLVERR_PM
,
PCLK_SC
,
PSEL_SC
,
PADDR_SC
,
PWRITE_SC
,
PENABLE_SC
,
PWDATA_SC
,
PRDATA_SC
,
PREADY_SC
,
PSLVERR_SC
)
;
parameter
[
9
:
0
]
TPD
=
1
;
localparam
BFMA1Il1
=
TPD
*
1
;
input
PCLK_PM
;
input
PRESETN_PM
;
input
[
31
:
0
]
PADDR_PM
;
input
PWRITE_PM
;
input
PENABLE_PM
;
input
[
31
:
0
]
PWDATA_PM
;
output
[
31
:
0
]
PRDATA_PM
;
reg
[
31
:
0
]
PRDATA_PM
;
output
PREADY_PM
;
reg
PREADY_PM
;
output
PSLVERR_PM
;
reg
PSLVERR_PM
;
input
PCLK_SC
;
output
[
15
:
0
]
PSEL_SC
;
wire
[
15
:
0
]
#
BFMA1Il1
PSEL_SC
;
output
[
31
:
0
]
PADDR_SC
;
wire
[
31
:
0
]
#
BFMA1Il1
PADDR_SC
;
output
PWRITE_SC
;
wire
#
BFMA1Il1
PWRITE_SC
;
output
PENABLE_SC
;
wire
#
BFMA1Il1
PENABLE_SC
;
output
[
31
:
0
]
PWDATA_SC
;
wire
[
31
:
0
]
#
BFMA1Il1
PWDATA_SC
;
input
[
31
:
0
]
PRDATA_SC
;
input
PREADY_SC
;
input
PSLVERR_SC
;
parameter
[
0
:
0
]
BFMA1OOlII
=
0
;
parameter
[
0
:
0
]
BFMA1IOlII
=
1
;
reg
[
0
:
0
]
BFMA1lOlII
;
parameter
[
1
:
0
]
BFMA1OOIII
=
0
;
parameter
[
1
:
0
]
BFMA1OIlII
=
1
;
parameter
[
1
:
0
]
BFMA1IOIII
=
2
;
reg
[
1
:
0
]
BFMA1IIlII
;
reg
[
15
:
0
]
BFMA1IlIII
;
reg
[
31
:
0
]
BFMA1llIII
;
reg
BFMA1O0III
;
reg
BFMA1I0III
;
reg
[
31
:
0
]
BFMA1l0III
;
reg
BFMA1l1III
;
reg
[
31
:
0
]
BFMA1lIlII
;
reg
BFMA1OllII
;
reg
BFMA1IllII
;
reg
BFMA1lllII
;
reg
BFMA1O0lII
;
always
@
(
posedge
PCLK_PM
or
negedge
PRESETN_PM
)
begin
if
(
PRESETN_PM
==
1
'b
0
)
begin
BFMA1lOlII
<=
BFMA1OOlII
;
BFMA1lllII
<=
1
'b
0
;
PREADY_PM
<=
1
'b
0
;
PSLVERR_PM
<=
1
'b
0
;
PRDATA_PM
<=
{
32
{
1
'b
0
}
}
;
BFMA1IllII
<=
1
'b
0
;
end
else
begin
PREADY_PM
<=
1
'b
0
;
BFMA1IllII
<=
PENABLE_PM
;
case
(
BFMA1lOlII
)
BFMA1OOlII
:
begin
if
(
PENABLE_PM
==
1
'b
1
&
BFMA1IllII
==
1
'b
0
)
begin
BFMA1lllII
<=
1
'b
1
;
BFMA1lOlII
<=
BFMA1IOlII
;
end
end
BFMA1IOlII
:
begin
if
(
BFMA1O0lII
==
1
'b
1
)
begin
BFMA1lOlII
<=
BFMA1OOlII
;
BFMA1lllII
<=
1
'b
0
;
PREADY_PM
<=
1
'b
1
;
PSLVERR_PM
<=
BFMA1OllII
;
PRDATA_PM
<=
BFMA1lIlII
;
end
end
endcase
end
end
always
@
(
posedge
PCLK_SC
or
negedge
BFMA1lllII
)
begin
if
(
BFMA1lllII
==
1
'b
0
)
begin
BFMA1IIlII
<=
BFMA1OOIII
;
BFMA1O0lII
<=
1
'b
0
;
BFMA1lIlII
<=
{
32
{
1
'b
0
}
}
;
BFMA1OllII
<=
1
'b
0
;
BFMA1l1III
<=
1
'b
0
;
BFMA1I0III
<=
1
'b
0
;
BFMA1llIII
<=
{
32
{
1
'b
0
}
}
;
BFMA1l0III
<=
{
32
{
1
'b
0
}
}
;
BFMA1O0III
<=
1
'b
0
;
end
else
begin
case
(
BFMA1IIlII
)
BFMA1OOIII
:
begin
BFMA1IIlII
<=
BFMA1OIlII
;
BFMA1llIII
<=
PADDR_PM
;
BFMA1l0III
<=
PWDATA_PM
;
BFMA1O0III
<=
PWRITE_PM
;
BFMA1l1III
<=
1
'b
1
;
BFMA1I0III
<=
1
'b
0
;
BFMA1O0lII
<=
1
'b
0
;
end
BFMA1OIlII
:
begin
BFMA1IIlII
<=
BFMA1IOIII
;
BFMA1I0III
<=
1
'b
1
;
end
BFMA1IOIII
:
begin
if
(
PREADY_SC
==
1
'b
1
)
begin
BFMA1O0lII
<=
1
'b
1
;
BFMA1lIlII
<=
PRDATA_SC
;
BFMA1OllII
<=
PSLVERR_SC
;
BFMA1l1III
<=
1
'b
0
;
BFMA1I0III
<=
1
'b
0
;
BFMA1llIII
<=
{
32
{
1
'b
0
}
}
;
BFMA1l0III
<=
{
32
{
1
'b
0
}
}
;
BFMA1O0III
<=
1
'b
0
;
end
end
endcase
end
end
always
@
(
BFMA1llIII
or
BFMA1l1III
)
begin
BFMA1IlIII
<=
{
16
{
1
'b
0
}
}
;
if
(
BFMA1l1III
==
1
'b
1
)
begin
begin
:
BFMA1I0lII
integer
BFMA1I0I0
;
for
(
BFMA1I0I0
=
0
;
BFMA1I0I0
<=
15
;
BFMA1I0I0
=
BFMA1I0I0
+
1
)
begin
BFMA1IlIII
[
BFMA1I0I0
]
<=
(
BFMA1llIII
[
27
:
24
]
==
BFMA1I0I0
)
;
end
end
end
end
assign
PSEL_SC
=
BFMA1IlIII
;
assign
PADDR_SC
=
BFMA1llIII
;
assign
PWRITE_SC
=
BFMA1O0III
;
assign
PENABLE_SC
=
BFMA1I0III
;
assign
PWDATA_SC
=
BFMA1l0III
;
endmodule
