local entMeta = FindMetaTable( "Entity" )

entMeta.GetPreventTransmit = function( self, ent )
    self.PreventTransmit = self.PreventTransmit or {}
    local isPrevented = self.PreventTransmit[ent]
    if isPrevented == nil then return false end

    return self.PreventTransmit[ent]
end

entMeta._GPT_SetPreventTransmit = entMeta._GPT_SetPreventTransmit or entMeta.SetPreventTransmit
entMeta.SetPreventTransmit = function( self, ent, bool )
    self.PreventTransmit = self.PreventTransmit or {}
    self.PreventTransmit[ent] = bool

    return self:_GPT_SetPreventTransmit( ent, bool )
end
