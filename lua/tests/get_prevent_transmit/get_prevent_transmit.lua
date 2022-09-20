return {
    groupName = "GetPreventTransmit",

    beforeEach = function( state )
        state.ent = ents.Create( "prop_physics" )
        state.ply = {}
    end,

    afterEach = function( state )
        if IsValid( state.ent ) then
            state.ent:Remove()
        end
    end,

    cases = {
        {
            name = "It returns false when called for a player that hasn't been set",
            func = function( state )
                expect( state.ent:GetPreventTransmit( state.ply ) ).to.beFalse()
            end
        },

        {
            name = "It returns true when an entity has been set to prevent transmission to a player",
            func = function( state )
                state.ent:SetPreventTransmit( state.ply, true )
                expect( state.ent:GetPreventTransmit( state.ply ) ).to.beTrue()
            end
        },

        {
            name = "It returns false when an entity has toggled transmission prevention to a player",
            func = function( state )
                state.ent:SetPreventTransmit( state.ply, true )
                state.ent:SetPreventTransmit( state.ply, false )
                expect( state.ent:GetPreventTransmit( state.ply ) ).to.beFalse()
            end
        }
    }
}
