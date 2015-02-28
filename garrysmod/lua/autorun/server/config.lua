util.AddNetworkString("redeemCode")
util.AddNetworkString("wrongCode")
util.AddNetworkString("adminCheck")
util.AddNetworkString("isAdmin")

-- Do Not Touch The Above Code!




net.Receive("redeemCode", -- -- Do Not Touch

function(length, client, ply)  -- -- Do Not Touch
 	if net.ReadString() == "freevip" then
		RunConsoleCommand("ulx","adduserid",client:SteamID(),"vip")
		timer.Simple( 604800, function()
			RunConsoleCommand("ulx","removeuserid",client:SteamID() )
	end)
	else
		net.Start("wrongCode") net.Send(client)  -- -- Do Not Touch
	end
end
	
	
/*
--- Configuration Help ---

First Off Do Not Touch The Comments (In Green) Or The Line They Are On

To Change The User Group Head To Line 15 And Change vip To The Name Of Your ULX User Group

To Change The Code To Get VIP Head To Line 14 And Change "freevip"

To Change The Time Of VIP Head To Line 16 And Change 604800 (7 Days) To What You Want
Make Sure It Is In Seconds!!!!!

If You'd Like Them To Have VIP Permanently Remove Line 16, 17 And 18 (Also Shown Down Below)

		timer.Simple( 604800, function()
			RunConsoleCommand("ulx","removeuserid",client:SteamID() )
	end)
	
	
*/

