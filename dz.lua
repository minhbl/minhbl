repeat
	wait();
until game:IsLoaded();
repeat
	wait();
until game.Players.LocalPlayer;
repeat
	wait();
	local args = {
		[1] = "SetTeam",
		[2] = "Marines"
	};
	(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded();

function SendWebHook3(m)
	local msg = {
		embeds = {
			{
				title = "Saw Hub",
				fields = {
					{
						name = "Fruit : ",
						value = "```" .. m .. "```",
						inline = false
					}
				},
				type = "rich",
				color = tonumber(47103),
				footer = {
					text = "Saw Hub (" .. os.date("%X") .. ")"
				}
			}
		}
	};
	request({
		Url = "https://discord.com/api/webhooks/1260049706571006063/2mhJX4UZP52KVGnTjyfMJROSHz7Y-KZgcWRON4fpz1PK3y-WijwiWlAZJuFFTEVEO3_A",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = (game:GetService("HttpService")):JSONEncode(msg)
	});
end;
function GetFruit()
	local toable = {};
	for i, v in pairs(workspace:GetChildren()) do
		if v.Name == "Fruit " then
			local sdas = {};
			for i2, v2 in pairs(v:GetChildren()) do
				table.insert(sdas, v2);
			end;
			table.insert(toable, "Fruit (" .. table.concat(sdas, ",") .. ")");
		elseif string.find(v.Name, "Fruit") then
			table.insert(toable, v);
		end;
	end;
	return toable;
end;

local texttt = "";
for i, v in pairs(GetFruit()) do
	texttt = texttt .. v.Name;
end;
SendWebHook3(texttt);

function HopServer()
	local function Hop()
		for i = 1, 100 do
			local huhu = (game:GetService("ReplicatedStorage")).__ServerBrowser:InvokeServer(i);
			for k, v in pairs(huhu) do
				if k ~= game.JobId and v.Count < 9 then

						(game:GetService("ReplicatedStorage")).__ServerBrowser:InvokeServer("teleport", k);
						return true;
					
				end;
			end;
		end;
		return false;
	end;
	if not (getgenv()).Loaded then
		local function child(v)
			if v.Name == "ErrorPrompt" then
				if v.Visible then
					if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
						HopServer();
					end;
				end;
				(v:GetPropertyChangedSignal("Visible")):Connect(function()
					if v.Visible then
						if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
							HopServer();
						end;
					end;
				end);
			end;
		end;
		for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
			child(v);
		end;
		game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(child);
		(getgenv()).Loaded = true;
	end;
	while not Hop() do
		wait();
	end;
	SaveSettings();
end;

HopServer()
