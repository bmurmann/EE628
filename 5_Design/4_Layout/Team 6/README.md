
# Team6 IDSM 


This is Team 6's first few attempts at the IDSM circuit design.


Team6 and Team6.1 pin list



| Name | Type     | Description                |
| :-------- | :------- | :------------------------- |
| clk | Input | Clock signal input pin |
|res  |input| Reset switch|
|vin|Input|Input signal at the Integrator|
|vssa|Input|Ground|
|vdda|Input|Source Low voltage|
|vlo|Input|Input for nmos AND gate|
|vhi|Input|Input for pmos AND gate|
|dout|Output|Output at the dflipflop in the comparator|


The Team6.oas was the first iteration that team 6 was attempting to put together. It was done to be condensed to utilitize as much space as possible. The group stopped using it when during the LVS process there were bugs in the python code which was shorting the capacitors with the poly to metal one contact though they are on different levels. So, the group attempted to make another varation with about a day and a half to do so. Both circuits are DRC clean, but are still a work in progress for them both.
