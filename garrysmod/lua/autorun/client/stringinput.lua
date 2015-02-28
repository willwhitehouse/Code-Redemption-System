concommand.Add( "code", function()

Derma_StringRequest(
	"Code System - Made By MaccyD", 
	"Please Enter Your Code", 
	"", 
	function(text) 
		net.Start("adminCheck")
		net.Start("redeemCode")
		net.WriteString(text)
		net.SendToServer()
	end)

net.Receive("wrongCode", function()
	chat.AddText("The Code You Entered Was Incorrect")
end)

end)