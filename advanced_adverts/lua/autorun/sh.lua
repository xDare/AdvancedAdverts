if (SERVER) then

end

if (CLIENT) then
		-- You can customize the sayings here, it should look like this after RunConsoleCommand
	-- ("say", "/advert CHANGE THIS")


	-- raid
	function raidbuttonclick ()
		RunConsoleCommand("say", "/advert Raid!")
	end


	-- pd raid
	function pdraidbuttonclick()
		RunConsoleCommand("say", "/advert PD Raid!")
	end


	-- counter raid
	function coraidbuttonclick()
		RunConsoleCommand("say", "/advert Counter Raid! Come inside and its KoS!")
	end


	-- hit accepted
	function hitacptbuttonclick()
		RunConsoleCommand("say", "/advert Hit Accepted!")
	end


	-- hit complete
	function hitcmpltbuttonclick()
		RunConsoleCommand("say", "/advert Hit Complete!")
	end


	-- kidnap
	function kidnapbuttonclick()
		RunConsoleCommand("say", "/advert Gagged, Hands Tied, Blinded, You're being kidnapped, follow us or FailRP")
	end


	-- rape
	function rapebuttonclick()
		RunConsoleCommand("say", "/advert Pucker up your butthole! It's raping time!")
	end


	-- bank robbery
	function bankrobbuttonclick()
		RunConsoleCommand("say", "/advert The heist is on! We're robbing the bank!")
	end


	--GANGS--


	-- gang war request

	function gangwarrqbuttonclick()
		RunConsoleCommand("say", "/advert We are requesting a gang war with our rivals, do rivals accept?")
	end


	-- gang war accept

	function gangwaracptbuttonclick()
		RunConsoleCommand("say", "/advert Gang war against rivals accepted!")
	end


	-- gang war deny

	function gangwardenybuttonclick()
		RunConsoleCommand("say", "/advert Gang war against rivals denied!")
	end

	-- DO NOT MESS WITH ANYTHING UNDER HERE --

	
	-- MAIN FRAME
	local function openadvadverts()
		local main = vgui.Create("DFrame")
			main:SetTitle( "Adverts" )
			main:SetSize( 400, 300 )
			main:SetPos( 460, 200 )
			main:MakePopup()
			main.Paint = function(s , w , h)
				draw.RoundedBox(5,0,0,w, h,Color(0,0,0))
				
				draw.RoundedBox(5,2,2,w-4, h-4,Color(255,120,120))
			end
			
		local raidbut = vgui.Create("DButton", main)
			raidbut:SetPos( 30, 40 )
			raidbut:SetSize( 40, 20 )
			raidbut:SetText( "Raid" )
			raidbut.DoClick = raidbuttonclick
				raidbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
			
		local pdraidbut = vgui.Create("DButton", main)
			pdraidbut:SetPos( 30, 70 )
			pdraidbut:SetSize( 45, 20 )
			pdraidbut:SetText( "PD Raid" )
			pdraidbut.DoClick = pdraidbuttonclick
			pdraidbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local coraidbut = vgui.Create("DButton", main)
			coraidbut:SetPos( 30, 100 )
			coraidbut:SetSize( 70, 20 )
			coraidbut:SetText( "Counter Raid" )
			coraidbut.DoClick = coraidbuttonclick
			coraidbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local hitacptbut = vgui.Create("DButton", main)
			hitacptbut:SetPos( 30, 130 )
			hitacptbut:SetSize( 75, 20 )
			hitacptbut:SetText( "Hit Accepted" )
			hitacptbut.DoClick = hitacptbuttonclick
			hitacptbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local hitcmpltbut = vgui.Create("DButton", main)
			hitcmpltbut:SetPos( 30, 160 )
			hitcmpltbut:SetSize( 75, 20 )
			hitcmpltbut:SetText( "Hit Complete!" )
			hitcmpltbut.DoClick = hitcmpltbuttonclick
			hitcmpltbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local kidnapbut = vgui.Create("DButton", main)
			kidnapbut:SetPos( 30, 190 )
			kidnapbut:SetSize( 45, 20 )
			kidnapbut:SetText( "Kidnap" )
			kidnapbut.DoClick = kidnapbuttonclick
			kidnapbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local rapebut = vgui.Create("DButton", main)
			rapebut:SetPos( 240, 40 )
			rapebut:SetSize( 40, 20 )
			rapebut:SetText("Rape")
			rapebut.DoClick = rapebuttonclick
			rapebut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local bankrobbut = vgui.Create("DButton", main)
			bankrobbut:SetPos( 240, 70 )
			bankrobbut:SetSize( 75, 20 )
			bankrobbut:SetText("Bank Robbery")
			bankrobbut.DoClick = bankrobbuttonclick
			bankrobbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			

			
		-- gangs

		local gangslabel = vgui.Create("DLabel", main)
			gangslabel:SetPos( 275, 130 )
			gangslabel:SetSize( 45, 20 )
			gangslabel:SetText("Gangs")


		local gangwarrq = vgui.Create("DButton", main)
			gangwarrq:SetPos( 240, 155 )
			gangwarrq:SetSize( 110, 20 )
			gangwarrq:SetText("Gang War Request")
			gangwarrq.DoClick = gangwarrqbuttonclick
			gangwarrq.Paint = function(s, w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local gangwaracpt = vgui.Create("DButton", main)
			gangwaracpt:SetPos( 240, 180 )
			gangwaracpt:SetSize( 110, 20 )
			gangwaracpt:SetText("Gang War Accept")
			gangwaracpt.DoClick = gangwaracptbuttonclick
			gangwaracpt.Paint = function(s, w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
		local gangwardeny = vgui.Create("DButton", main)
			gangwardeny:SetPos( 240, 205 )
			gangwardeny:SetSize( 110, 20 )
			gangwardeny:SetText("Deny Gang War")
			gangwardeny.DoClick = gangwardenybuttonclick
			gangwardeny.Paint = function(s, w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
			
			
			
		-- BOTTOM NOTE

		local abuselabel = vgui.Create("DLabel", main)
			abuselabel:SetPos( 105, 260 )
			abuselabel:SetText("Abusing this addon may result in a ban!")
			abuselabel:SetSize( 200, 20)
			
			
			
		-- mug
			
		local mugamtentry = vgui.Create("DTextEntry", main)
			mugamtentry:SetNumeric( true )
			mugamtentry:SetPos( 30, 220 )
			mugamtentry:SetSize( 35, 20 )
			mugamtentry:SetText( "1000" )

		function mugbutclick()
			RunConsoleCommand("say", "/advert You're being mugged, don't move at all whatsoever. Drop 1K or you're gonna die, you have 10 seconds.")
		end
			
		local mugbut = vgui.Create("DButton", main)
			mugbut:SetPos( 70, 220 )
			mugbut:SetSize( 40, 20 )
			mugbut:SetText( "Mug" )
			mugbut.DoClick = mugbutclick
			mugbut.Paint = function(s , w , h)
				draw.RoundedBox(6,0,0,w, h,Color(0,0,0))
			end
	end
	concommand.Add( "openadverts", openadvadverts )
end