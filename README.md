# gm_get_prevent_transmit
A simple Getter companion for [SetPreventTransmit](https://wiki.facepunch.com/gmod/Entity:SetPreventTransmit).

![GLuaTest](https://github.com/CFC-Servers/gm_get_prevent_transmit/actions/workflows/gluatest.yml/badge.svg)
![GLuaLint](https://github.com/CFC-Servers/gm_get_prevent_transmit/actions/workflows/glualint.yml/badge.svg)

## Docs
```lua
Entity:GetPreventTransmit( Player player )
```

### Description
Returns a boolean indicating whether or not the server was prevented from sending information about the entity to a player.

### Arguments
 1. **Player** player
   - The player to check against.

### Example
This will toggle `SetPreventTransmit` on the given player and check `GetPreventTransmit`'s return value.

```lua
require( "get_prevent_transmit" )

local ent = Entity( 5 )
local ply = Player( 1 )

assert( ent:GetPreventTransmit( ply ) == false )

ent:SetPreventTransmit( ply, true )
asssert( ent:GetPreventTransmit( ply ) == true )

ent:SetPreventTransmit( ply, false )
assert( ent:GetPreventTransmit( ply ) == false )
```
