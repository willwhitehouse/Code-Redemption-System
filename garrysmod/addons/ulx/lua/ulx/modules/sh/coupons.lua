
-----------------------------------------------
local CATEGORY_NAME = "Redemption"

function Coupon_Open( ply, text, public )
    if (string.sub(string.lower(text), 1, 7) == "!redeem") then
		local args = string.Explode( " ", text )
		if #args == 1 then
			ply:ConCommand( "code" )
		else
			ply:ConCommand( "coupon " .. table.concat( args, " ", 2 ) )
		end
		return false
    end
end
hook.Add( "PlayerSay", "code", Coupon_Open )


/*
Configuration Help!

Credits MaccyD!

To Configure The Command Used (!redeem) Head To Line 6 And Change "!redeem" To What You Want But If Its !123456789
Make Sure The Last Number
    if (string.sub(string.lower(text), 1, HERE) == "!123456789") then
Is Equal To The Amount Of Characters In The Text (In Cluding / Or !)
 EXAMPLE
		    if (string.sub(string.lower(text), 1, 18) == "!ilovescriptfodder") then
Also Make Sure The Command Is All Lower Case

Now To Configure The Rest Head Over To config.lua On The Server Side!
*/