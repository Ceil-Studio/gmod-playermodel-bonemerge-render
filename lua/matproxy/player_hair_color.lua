
local clrFallback = Vector( 62 / 255, 88 / 255, 106 / 255 )

matproxy.Add( {
	name = "PlayerHairColor",

	init = function( self, mat, values )
		self.ResultTo = values.resultvar
	end,

	bind = function( self, mat, ent )
		if ( !IsValid( ent ) ) then return end
		if ( ent:IsRagdoll() ) then
			local owner = ent:GetRagdollOwner()
			if ( IsValid( owner ) ) then ent = owner end
		end
		if ( ent.GetPlayerHairColor ) then
			local col = ent:GetPlayerHairColor()
			if ( isvector( col ) ) then
				mat:SetVector( self.ResultTo, col )
			end
		else
			mat:SetVector( self.ResultTo, clrFallback )
		end
	end
} )
