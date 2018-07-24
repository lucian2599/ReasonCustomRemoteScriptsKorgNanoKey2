function remote_init()
local items=
 {
  {name="Keyboard", input="keyboard"},
  {name="Pitch Bend", input="value", min=0, max=16383},
  {name="Mod", input="value", min=0, max=127},
 }
remote.define_items(items)

local inputs=
 {

--  {pattern="<100x>? yy zz", name="Keyboard"},
  {pattern="e? xx yy", name="Pitch Bend", value="y*128 + x"},
  {pattern="b? 01 xx", name="Mod"},
  {pattern="b? 40 xx", name="Sustain"},

 }
 remote.define_auto_inputs(inputs)
end

function remote_probe()
return {
	request="f0 7e 7f 06 01 f7",
	response="F0 7E 00 06 02 42 11 01  01 00 00 ?? ?? ?? F7"
	}
end