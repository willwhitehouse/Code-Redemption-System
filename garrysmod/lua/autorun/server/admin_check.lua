net.Receive("adminCheck", -- -- Do Not Touch

	function(client, ply) -- -- Do Not Touch
		if ply:IsAdmin then -- -- Do Not Touch
			net.Start("isAdmin") -- -- Do Not Touch
	else -- -- Do Not Touch
			net.Start("redeemCode") -- -- Do Not Touch
		end -- -- Do Not Touch
	end) -- -- Do Not Touch