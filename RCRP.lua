
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))();
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))();
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))();
local Window = OrionLib:MakeWindow({Name="Redcliff City RP",HidePremium=true,SaveConfig=true,ConfigFolder="Redcliff Exploit"});
local Tab = Window:MakeTab({Name="Main",Icon="rbxassetid://4483345998",PremiumOnly=false});
local Section = Tab:AddSection({Name="Universal-Script"});
Tab:AddButton({Name="Reset",Callback=function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0;
end});
Tab:AddButton({Name="Kick",Callback=function()
	game.Players.LocalPlayer:Kick("bye");
end});
Tab:AddButton({Name="Rejoin",Callback=function()
	local FlatIdent_4CDE8 = 0;
	local FlatIdent_1261E;
	local FlatIdent_771F5;
	local ts;
	local p;
	while true do
		if (1 == FlatIdent_4CDE8) then
			ts = nil;
			p = nil;
			FlatIdent_4CDE8 = 2;
		end
		if (0 == FlatIdent_4CDE8) then
			FlatIdent_1261E = 0;
			FlatIdent_771F5 = nil;
			FlatIdent_4CDE8 = 1;
		end
		if (FlatIdent_4CDE8 == 2) then
			while true do
				if (FlatIdent_1261E == 1) then
					p = nil;
					while true do
						if (FlatIdent_771F5 == 1) then
							ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p);
							break;
						end
						if (0 == FlatIdent_771F5) then
							local FlatIdent_8EE85 = 0;
							while true do
								if (1 == FlatIdent_8EE85) then
									FlatIdent_771F5 = 1;
									break;
								end
								if (FlatIdent_8EE85 == 0) then
									ts = game:GetService("TeleportService");
									p = game:GetService("Players").LocalPlayer;
									FlatIdent_8EE85 = 1;
								end
							end
						end
					end
					break;
				end
				if (FlatIdent_1261E == 0) then
					local FlatIdent_5871A = 0;
					local FlatIdent_84016;
					local FlatIdent_56B05;
					while true do
						if (1 == FlatIdent_5871A) then
							while true do
								if (FlatIdent_84016 == 0) then
									FlatIdent_56B05 = 0;
									while true do
										if (FlatIdent_56B05 == 0) then
											local FlatIdent_2B205 = 0;
											local FlatIdent_6F09D;
											while true do
												if (FlatIdent_2B205 == 0) then
													FlatIdent_6F09D = 0;
													while true do
														if (FlatIdent_6F09D == 0) then
															local FlatIdent_6154D = 0;
															while true do
																if (FlatIdent_6154D == 0) then
																	FlatIdent_771F5 = 0;
																	ts = nil;
																	FlatIdent_6154D = 1;
																end
																if (FlatIdent_6154D == 1) then
																	FlatIdent_6F09D = 1;
																	break;
																end
															end
														end
														if (FlatIdent_6F09D == 1) then
															FlatIdent_56B05 = 1;
															break;
														end
													end
													break;
												end
											end
										end
										if (FlatIdent_56B05 == 1) then
											FlatIdent_1261E = 1;
											break;
										end
									end
									break;
								end
							end
							break;
						end
						if (FlatIdent_5871A == 0) then
							FlatIdent_84016 = 0;
							FlatIdent_56B05 = nil;
							FlatIdent_5871A = 1;
						end
					end
				end
			end
			break;
		end
	end
end});
Tab:AddSlider({Name="Walkspeed",Min=0,Max=200,Default=15,Color=Color3.fromRGB(255, 255, 255),Increment=1,ValueName="Speed",Callback=function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s;
end});
Tab:AddButton({Name="Graphics",Callback=function()
	local FlatIdent_7831A = 0;
	local FlatIdent_3E167;
	local FlatIdent_5286A;
	local FlatIdent_497AA;
	local FlatIdent_8E324;
	while true do
		if (FlatIdent_7831A == 2) then
			while true do
				if (FlatIdent_3E167 == 1) then
					FlatIdent_8E324 = nil;
					while true do
						if (FlatIdent_5286A == 1) then
							while true do
								if (FlatIdent_497AA == 0) then
									FlatIdent_8E324 = 0;
									while true do
										if (FlatIdent_8E324 == 0) then
											L = Game:GetService("Lighting");
											while true do
												local FlatIdent_75552 = 0;
												local FlatIdent_154D5;
												local FlatIdent_1A7C;
												local FlatIdent_440FB;
												while true do
													if (FlatIdent_75552 == 1) then
														FlatIdent_440FB = nil;
														while true do
															if (FlatIdent_154D5 == 0) then
																local FlatIdent_15090 = 0;
																local FlatIdent_16980;
																while true do
																	if (FlatIdent_15090 == 0) then
																		FlatIdent_16980 = 0;
																		while true do
																			if (FlatIdent_16980 == 0) then
																				local FlatIdent_26F73 = 0;
																				while true do
																					if (FlatIdent_26F73 == 0) then
																						FlatIdent_1A7C = 0;
																						FlatIdent_440FB = nil;
																						FlatIdent_26F73 = 1;
																					end
																					if (1 == FlatIdent_26F73) then
																						FlatIdent_16980 = 1;
																						break;
																					end
																				end
																			end
																			if (FlatIdent_16980 == 1) then
																				FlatIdent_154D5 = 1;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if (FlatIdent_154D5 == 1) then
																while true do
																	if (0 == FlatIdent_1A7C) then
																		FlatIdent_440FB = 0;
																		while true do
																			if (FlatIdent_440FB == 0) then
																				local FlatIdent_29B72 = 0;
																				local FlatIdent_8F703;
																				local FlatIdent_2F947;
																				while true do
																					if (FlatIdent_29B72 == 1) then
																						while true do
																							if (FlatIdent_8F703 == 0) then
																								FlatIdent_2F947 = 0;
																								while true do
																									if (FlatIdent_2F947 == 1) then
																										FlatIdent_440FB = 1;
																										break;
																									end
																									if (0 == FlatIdent_2F947) then
																										local FlatIdent_DDF9 = 0;
																										local FlatIdent_1DBC6;
																										while true do
																											if (0 == FlatIdent_DDF9) then
																												FlatIdent_1DBC6 = 0;
																												while true do
																													if (0 == FlatIdent_1DBC6) then
																														wait(1);
																														T = L:GetMinutesAfterMidnight();
																														FlatIdent_1DBC6 = 1;
																													end
																													if (1 == FlatIdent_1DBC6) then
																														FlatIdent_2F947 = 1;
																														break;
																													end
																												end
																												break;
																											end
																										end
																									end
																								end
																								break;
																							end
																						end
																						break;
																					end
																					if (FlatIdent_29B72 == 0) then
																						FlatIdent_8F703 = 0;
																						FlatIdent_2F947 = nil;
																						FlatIdent_29B72 = 1;
																					end
																				end
																			end
																			if (FlatIdent_440FB == 1) then
																				L:SetMinutesAfterMidnight(T + 1);
																				if (T < 300) then
																					Game.Lighting.OutdoorAmbient = Color3.new(30 / 255, 30 / 255, 30 / 255);
																				elseif ((T > 300) and (T < 390)) then
																					Game.Lighting.OutdoorAmbient = Color3.new((30 + ((T - 300) / 1.5)) / 255, (30 + ((T - 300) / 1.5)) / 255, (30 + ((T - 300) / 1.5)) / 255);
																				elseif ((T > 390) and (T < 600)) then
																					Game.Lighting.OutdoorAmbient = Color3.new((90 + ((T - 390) / 7)) / 255, (90 + ((T - 390) / 7)) / 255, (90 + ((T - 390) / 7)) / 255);
																				elseif ((T > 600) and (T < 840)) then
																					Game.Lighting.OutdoorAmbient = Color3.new(120 / 255, 120 / 255, 120 / 255);
																				elseif ((T > 840) and (T < 1050)) then
																					Game.Lighting.OutdoorAmbient = Color3.new((120 - ((T - 840) / 7)) / 255, (120 - ((T - 840) / 7)) / 255, (120 - ((T - 840) / 7)) / 255);
																				elseif ((T > 1050) and (T < 1140)) then
																					Game.Lighting.OutdoorAmbient = Color3.new((90 - ((T - 1050) / 1.5)) / 255, (90 - ((T - 1050) / 1.5)) / 255, (90 - ((T - 1050) / 1.5)) / 255);
																				elseif (T > 1140) then
																					Game.Lighting.OutdoorAmbient = Color3.new(30 / 255, 30 / 255, 30 / 255);
																				end
																				break;
																			end
																		end
																		break;
																	end
																end
																break;
															end
														end
														break;
													end
													if (FlatIdent_75552 == 0) then
														FlatIdent_154D5 = 0;
														FlatIdent_1A7C = nil;
														FlatIdent_75552 = 1;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
							break;
						end
						if (FlatIdent_5286A == 0) then
							local FlatIdent_93A86 = 0;
							local FlatIdent_8CFEE;
							while true do
								if (FlatIdent_93A86 == 0) then
									FlatIdent_8CFEE = 0;
									while true do
										if (FlatIdent_8CFEE == 1) then
											FlatIdent_5286A = 1;
											break;
										end
										if (FlatIdent_8CFEE == 0) then
											local FlatIdent_592F5 = 0;
											while true do
												if (1 == FlatIdent_592F5) then
													FlatIdent_8CFEE = 1;
													break;
												end
												if (FlatIdent_592F5 == 0) then
													FlatIdent_497AA = 0;
													FlatIdent_8E324 = nil;
													FlatIdent_592F5 = 1;
												end
											end
										end
									end
									break;
								end
							end
						end
					end
					break;
				end
				if (0 == FlatIdent_3E167) then
					local FlatIdent_92BFD = 0;
					while true do
						if (FlatIdent_92BFD == 0) then
							FlatIdent_5286A = 0;
							FlatIdent_497AA = nil;
							FlatIdent_92BFD = 1;
						end
						if (FlatIdent_92BFD == 1) then
							FlatIdent_3E167 = 1;
							break;
						end
					end
				end
			end
			break;
		end
		if (FlatIdent_7831A == 1) then
			FlatIdent_497AA = nil;
			FlatIdent_8E324 = nil;
			FlatIdent_7831A = 2;
		end
		if (FlatIdent_7831A == 0) then
			FlatIdent_3E167 = 0;
			FlatIdent_5286A = nil;
			FlatIdent_7831A = 1;
		end
	end
end});
local Section = Tab:AddSection({Name="Visual(For fix rejoin)"});
Tab:AddButton({Name="Delete TrainSystem",Callback=function()
	game:GetService("Workspace")["Redcliff City Map"].Subway.TrainSystem:Destroy();
end});
Tab:AddButton({Name="Delete Backrooms",Callback=function()
	game:GetService("Workspace")["Redcliff City Map"]["Secret Areas"].Backrooms:Destroy();
end});
Tab:AddButton({Name="Delete Buildings",Callback=function()
	game:GetService("Workspace")["Redcliff City Map"].Buildings:Destroy();
end});
Tab:AddButton({Name="Delete Vehicles",Callback=function()
	game:GetService("Workspace")['_Vehicles']:Destroy();
end});
Tab:AddButton({Name="Delete Map",Callback=function()
	local FlatIdent_7F852 = 0;
	local FlatIdent_8A734;
	local FlatIdent_3F82E;
	local FlatIdent_3ACB3;
	local FlatIdent_90986;
	while true do
		if (FlatIdent_7F852 == 0) then
			FlatIdent_8A734 = 0;
			FlatIdent_3F82E = nil;
			FlatIdent_7F852 = 1;
		end
		if (FlatIdent_7F852 == 1) then
			FlatIdent_3ACB3 = nil;
			FlatIdent_90986 = nil;
			FlatIdent_7F852 = 2;
		end
		if (FlatIdent_7F852 == 2) then
			while true do
				if (FlatIdent_8A734 == 0) then
					FlatIdent_3F82E = 0;
					FlatIdent_3ACB3 = nil;
					FlatIdent_8A734 = 1;
				end
				if (1 == FlatIdent_8A734) then
					FlatIdent_90986 = nil;
					while true do
						if (FlatIdent_3F82E == 1) then
							while true do
								if (FlatIdent_3ACB3 == 0) then
									FlatIdent_90986 = 0;
									while true do
										if (0 == FlatIdent_90986) then
											local FlatIdent_1DCC4 = 0;
											local FlatIdent_41ED9;
											while true do
												if (FlatIdent_1DCC4 == 0) then
													FlatIdent_41ED9 = 0;
													while true do
														if (FlatIdent_41ED9 == 1) then
															FlatIdent_90986 = 1;
															break;
														end
														if (FlatIdent_41ED9 == 0) then
															local FlatIdent_958C2 = 0;
															while true do
																if (FlatIdent_958C2 == 1) then
																	FlatIdent_41ED9 = 1;
																	break;
																end
																if (0 == FlatIdent_958C2) then
																	game:GetService("Workspace")["Redcliff City Map"].Lighting:Destroy();
																	game:GetService("Workspace")["Redcliff City Map"].Props:Destroy();
																	FlatIdent_958C2 = 1;
																end
															end
														end
													end
													break;
												end
											end
										end
										if (FlatIdent_90986 == 1) then
											local FlatIdent_367C6 = 0;
											local FlatIdent_37169;
											while true do
												if (FlatIdent_367C6 == 0) then
													FlatIdent_37169 = 0;
													while true do
														if (FlatIdent_37169 == 0) then
															local FlatIdent_5D633 = 0;
															local FlatIdent_90E21;
															local FlatIdent_6DB8D;
															while true do
																if (FlatIdent_5D633 == 1) then
																	while true do
																		if (FlatIdent_90E21 == 0) then
																			FlatIdent_6DB8D = 0;
																			while true do
																				if (FlatIdent_6DB8D == 0) then
																					local FlatIdent_3F928 = 0;
																					while true do
																						if (FlatIdent_3F928 == 1) then
																							FlatIdent_6DB8D = 1;
																							break;
																						end
																						if (FlatIdent_3F928 == 0) then
																							game:GetService("Workspace")["Redcliff City Map"].Vegetation:Destroy();
																							game:GetService("Workspace")["Redcliff City Map"].Interiors:Destroy();
																							FlatIdent_3F928 = 1;
																						end
																					end
																				end
																				if (FlatIdent_6DB8D == 1) then
																					FlatIdent_37169 = 1;
																					break;
																				end
																			end
																			break;
																		end
																	end
																	break;
																end
																if (FlatIdent_5D633 == 0) then
																	FlatIdent_90E21 = 0;
																	FlatIdent_6DB8D = nil;
																	FlatIdent_5D633 = 1;
																end
															end
														end
														if (FlatIdent_37169 == 1) then
															FlatIdent_90986 = 2;
															break;
														end
													end
													break;
												end
											end
										end
										if (3 == FlatIdent_90986) then
											game:GetService("Workspace")["Redcliff City Map"]["Secret Areas"]:Destroy();
											game:GetService("Workspace")["Redcliff City Map"].Subway:Destroy();
											break;
										end
										if (FlatIdent_90986 == 2) then
											local FlatIdent_802E7 = 0;
											local FlatIdent_1D2B1;
											while true do
												if (FlatIdent_802E7 == 0) then
													FlatIdent_1D2B1 = 0;
													while true do
														if (FlatIdent_1D2B1 == 0) then
															local FlatIdent_3AB37 = 0;
															local FlatIdent_5BBA8;
															while true do
																if (0 == FlatIdent_3AB37) then
																	FlatIdent_5BBA8 = 0;
																	while true do
																		if (FlatIdent_5BBA8 == 1) then
																			FlatIdent_1D2B1 = 1;
																			break;
																		end
																		if (0 == FlatIdent_5BBA8) then
																			local FlatIdent_2F800 = 0;
																			while true do
																				if (FlatIdent_2F800 == 0) then
																					game:GetService("Workspace")["Redcliff City Map"].Border:Destroy();
																					game:GetService("Workspace")["Redcliff City Map"].Teleporters:Destroy();
																					FlatIdent_2F800 = 1;
																				end
																				if (FlatIdent_2F800 == 1) then
																					FlatIdent_5BBA8 = 1;
																					break;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														end
														if (FlatIdent_1D2B1 == 1) then
															FlatIdent_90986 = 3;
															break;
														end
													end
													break;
												end
											end
										end
									end
									break;
								end
							end
							break;
						end
						if (FlatIdent_3F82E == 0) then
							local FlatIdent_10EEC = 0;
							while true do
								if (FlatIdent_10EEC == 0) then
									FlatIdent_3ACB3 = 0;
									FlatIdent_90986 = nil;
									FlatIdent_10EEC = 1;
								end
								if (FlatIdent_10EEC == 1) then
									FlatIdent_3F82E = 1;
									break;
								end
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
Tab:AddButton({Name="Delete Foundation",Callback=function()
	game:GetService("Workspace")["Redcliff City Map"].Foundation:Destroy();
end});
Tab:AddButton({Name="Delete System block",Callback=function()
	game:GetService("Workspace")['_CustomStreaming']:Destroy();
end});
local Tab = Window:MakeTab({Name="ESP",Icon="rbxassetid://4483345998",PremiumOnly=false});
getgenv().cham = false;
getgenv().nameESP = false;
getgenv().boxESP = false;
getgenv().esp_loaded = false;
getgenv().Visibility = false;
Tab:AddToggle({Name="Visual",Default=getgenv().Visibility,Callback=function(Value)
	local FlatIdent_432DD = 0;
	local FlatIdent_81351;
	while true do
		if (FlatIdent_432DD == 0) then
			FlatIdent_81351 = 0;
			while true do
				if (FlatIdent_81351 == 0) then
					if ((getgenv().esp_loaded == false) and (Value == true)) then
						local FlatIdent_1D0BE = 0;
						local FlatIdent_89C0A;
						local FlatIdent_E80F;
						local FlatIdent_1976B;
						while true do
							if (FlatIdent_1D0BE == 0) then
								FlatIdent_89C0A = 0;
								FlatIdent_E80F = nil;
								FlatIdent_1D0BE = 1;
							end
							if (FlatIdent_1D0BE == 1) then
								FlatIdent_1976B = nil;
								while true do
									if (FlatIdent_89C0A == 1) then
										while true do
											if (0 == FlatIdent_E80F) then
												FlatIdent_1976B = 0;
												while true do
													if (0 == FlatIdent_1976B) then
														getgenv().esp_loaded = true;
														loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))();
														break;
													end
												end
												break;
											end
										end
										break;
									end
									if (0 == FlatIdent_89C0A) then
										local FlatIdent_1ED10 = 0;
										while true do
											if (FlatIdent_1ED10 == 1) then
												FlatIdent_89C0A = 1;
												break;
											end
											if (FlatIdent_1ED10 == 0) then
												FlatIdent_E80F = 0;
												FlatIdent_1976B = nil;
												FlatIdent_1ED10 = 1;
											end
										end
									end
								end
								break;
							end
						end
					end
					getgenv().Visibility = Value;
					break;
				end
			end
			break;
		end
	end
end});
Tab:AddToggle({Name="Box ESP",Default=getgenv().Visibility,Callback=function(Value)
	local FlatIdent_75255 = 0;
	local FlatIdent_16647;
	local FlatIdent_87335;
	while true do
		if (0 == FlatIdent_75255) then
			FlatIdent_16647 = 0;
			FlatIdent_87335 = nil;
			FlatIdent_75255 = 1;
		end
		if (FlatIdent_75255 == 1) then
			while true do
				if (0 == FlatIdent_16647) then
					FlatIdent_87335 = 0;
					while true do
						if (FlatIdent_87335 == 0) then
							if ((getgenv().esp_loaded == false) and (Value == true)) then
								local FlatIdent_5F52F = 0;
								local FlatIdent_76D39;
								local FlatIdent_7BB55;
								while true do
									if (FlatIdent_5F52F == 1) then
										while true do
											if (FlatIdent_76D39 == 0) then
												FlatIdent_7BB55 = 0;
												while true do
													if (FlatIdent_7BB55 == 0) then
														getgenv().esp_loaded = true;
														loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))();
														break;
													end
												end
												break;
											end
										end
										break;
									end
									if (0 == FlatIdent_5F52F) then
										FlatIdent_76D39 = 0;
										FlatIdent_7BB55 = nil;
										FlatIdent_5F52F = 1;
									end
								end
							end
							getgenv().boxESP = Value;
							break;
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
Tab:AddToggle({Name="Name",Default=getgenv().Visibility,Callback=function(Value)
	local FlatIdent_6527C = 0;
	local FlatIdent_7ADB2;
	local FlatIdent_11BAD;
	local FlatIdent_3A679;
	while true do
		if (FlatIdent_6527C == 0) then
			FlatIdent_7ADB2 = 0;
			FlatIdent_11BAD = nil;
			FlatIdent_6527C = 1;
		end
		if (1 == FlatIdent_6527C) then
			FlatIdent_3A679 = nil;
			while true do
				if (FlatIdent_7ADB2 == 0) then
					FlatIdent_11BAD = 0;
					FlatIdent_3A679 = nil;
					FlatIdent_7ADB2 = 1;
				end
				if (FlatIdent_7ADB2 == 1) then
					while true do
						if (FlatIdent_11BAD == 0) then
							FlatIdent_3A679 = 0;
							while true do
								if (FlatIdent_3A679 == 0) then
									if ((getgenv().esp_loaded == false) and (Value == true)) then
										local FlatIdent_8A8A2 = 0;
										local FlatIdent_6C4F6;
										local FlatIdent_309AC;
										local FlatIdent_94759;
										while true do
											if (FlatIdent_8A8A2 == 0) then
												FlatIdent_6C4F6 = 0;
												FlatIdent_309AC = nil;
												FlatIdent_8A8A2 = 1;
											end
											if (FlatIdent_8A8A2 == 1) then
												FlatIdent_94759 = nil;
												while true do
													if (FlatIdent_6C4F6 == 1) then
														while true do
															if (FlatIdent_309AC == 0) then
																FlatIdent_94759 = 0;
																while true do
																	if (FlatIdent_94759 == 0) then
																		getgenv().esp_loaded = true;
																		loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))();
																		break;
																	end
																end
																break;
															end
														end
														break;
													end
													if (FlatIdent_6C4F6 == 0) then
														FlatIdent_309AC = 0;
														FlatIdent_94759 = nil;
														FlatIdent_6C4F6 = 1;
													end
												end
												break;
											end
										end
									end
									getgenv().nameESP = Value;
									break;
								end
							end
							break;
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
Tab:AddToggle({Name="Chams",Default=getgenv().Visibility,Callback=function(Value)
	local FlatIdent_3890D = 0;
	local FlatIdent_2B748;
	while true do
		if (0 == FlatIdent_3890D) then
			FlatIdent_2B748 = 0;
			while true do
				if (FlatIdent_2B748 == 0) then
					if ((getgenv().esp_loaded == false) and (Value == true)) then
						local FlatIdent_5CDC3 = 0;
						local FlatIdent_248BE;
						local FlatIdent_252BC;
						local FlatIdent_81C67;
						while true do
							if (FlatIdent_5CDC3 == 1) then
								FlatIdent_81C67 = nil;
								while true do
									if (FlatIdent_248BE == 1) then
										while true do
											if (FlatIdent_252BC == 0) then
												FlatIdent_81C67 = 0;
												while true do
													if (FlatIdent_81C67 == 0) then
														getgenv().esp_loaded = true;
														loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))();
														break;
													end
												end
												break;
											end
										end
										break;
									end
									if (FlatIdent_248BE == 0) then
										local FlatIdent_70BBD = 0;
										while true do
											if (FlatIdent_70BBD == 0) then
												FlatIdent_252BC = 0;
												FlatIdent_81C67 = nil;
												FlatIdent_70BBD = 1;
											end
											if (FlatIdent_70BBD == 1) then
												FlatIdent_248BE = 1;
												break;
											end
										end
									end
								end
								break;
							end
							if (FlatIdent_5CDC3 == 0) then
								FlatIdent_248BE = 0;
								FlatIdent_252BC = nil;
								FlatIdent_5CDC3 = 1;
							end
						end
					end
					getgenv().cham = Value;
					break;
				end
			end
			break;
		end
	end
end});
SendNote = function(message, time)
	OrionLib:MakeNotification({Name="Title!",Content=message,Image="rbxassetid://4483345998",Time=(time or 3)});
end;
Tab:AddToggle({Name="Use Team-Color",Default=false,Callback=function(Value)
	getgenv().useTeamColor = Value;
end});
local Tab = Window:MakeTab({Name="Homes teleport",Icon="rbxassetid://4483345998",PremiumOnly=false});
local Section = Tab:AddSection({Name="Tap on number home for tp"});
local plr = game:service("Players").LocalPlayer;
local tween_s = game:service("TweenService");
local info = TweenInfo.new(1, Enum.EasingStyle.Quad);
tp = function(...)
	local FlatIdent_4AF42 = 0;
	local FlatIdent_703AA;
	local FlatIdent_7D2DB;
	local FlatIdent_28B65;
	local tic_k;
	local params;
	local cframe;
	local tween;
	local err;
	while true do
		if (FlatIdent_4AF42 == 2) then
			params = nil;
			cframe = nil;
			FlatIdent_4AF42 = 3;
		end
		if (FlatIdent_4AF42 == 3) then
			tween = nil;
			err = nil;
			FlatIdent_4AF42 = 4;
		end
		if (FlatIdent_4AF42 == 0) then
			FlatIdent_703AA = 0;
			FlatIdent_7D2DB = nil;
			FlatIdent_4AF42 = 1;
		end
		if (FlatIdent_4AF42 == 1) then
			FlatIdent_28B65 = nil;
			tic_k = nil;
			FlatIdent_4AF42 = 2;
		end
		if (4 == FlatIdent_4AF42) then
			while true do
				if (2 == FlatIdent_703AA) then
					cframe = nil;
					tween = nil;
					FlatIdent_703AA = 3;
				end
				if (FlatIdent_703AA == 3) then
					err = nil;
					while true do
						if (FlatIdent_7D2DB == 1) then
							local FlatIdent_7D7F = 0;
							local FlatIdent_29296;
							local FlatIdent_3475B;
							while true do
								if (FlatIdent_7D7F == 1) then
									while true do
										if (0 == FlatIdent_29296) then
											FlatIdent_3475B = 0;
											while true do
												if (FlatIdent_3475B == 0) then
													local FlatIdent_46D12 = 0;
													local FlatIdent_29BA8;
													while true do
														if (FlatIdent_46D12 == 0) then
															FlatIdent_29BA8 = 0;
															while true do
																if (FlatIdent_29BA8 == 0) then
																	params = nil;
																	cframe = nil;
																	FlatIdent_29BA8 = 1;
																end
																if (FlatIdent_29BA8 == 1) then
																	FlatIdent_3475B = 1;
																	break;
																end
															end
															break;
														end
													end
												end
												if (FlatIdent_3475B == 1) then
													FlatIdent_7D2DB = 2;
													break;
												end
											end
											break;
										end
									end
									break;
								end
								if (FlatIdent_7D7F == 0) then
									FlatIdent_29296 = 0;
									FlatIdent_3475B = nil;
									FlatIdent_7D7F = 1;
								end
							end
						end
						if (FlatIdent_7D2DB == 3) then
							while true do
								if (FlatIdent_28B65 == 0) then
									tic_k = tick();
									params = {...};
									FlatIdent_28B65 = 1;
								end
								if (1 == FlatIdent_28B65) then
									local FlatIdent_4BB46 = 0;
									local FlatIdent_1AD30;
									local FlatIdent_631C;
									while true do
										if (FlatIdent_4BB46 == 1) then
											while true do
												if (FlatIdent_1AD30 == 0) then
													FlatIdent_631C = 0;
													while true do
														if (FlatIdent_631C == 1) then
															FlatIdent_28B65 = 2;
															break;
														end
														if (FlatIdent_631C == 0) then
															local FlatIdent_79BAC = 0;
															local FlatIdent_126F3;
															while true do
																if (FlatIdent_79BAC == 0) then
																	FlatIdent_126F3 = 0;
																	while true do
																		if (0 == FlatIdent_126F3) then
																			local FlatIdent_8AD5 = 0;
																			local FlatIdent_39F1B;
																			while true do
																				if (FlatIdent_8AD5 == 0) then
																					FlatIdent_39F1B = 0;
																					while true do
																						if (1 == FlatIdent_39F1B) then
																							FlatIdent_126F3 = 1;
																							break;
																						end
																						if (FlatIdent_39F1B == 0) then
																							cframe = CFrame.new(params[1], params[2], params[3]);
																							tween, err = pcall(function()
																								local FlatIdent_431D3 = 0;
																								local FlatIdent_95FD1;
																								local FlatIdent_831D6;
																								local FlatIdent_91D0A;
																								local tween;
																								while true do
																									if (FlatIdent_431D3 == 2) then
																										while true do
																											if (FlatIdent_95FD1 == 1) then
																												tween = nil;
																												while true do
																													if (FlatIdent_831D6 == 1) then
																														while true do
																															if (FlatIdent_91D0A == 0) then
																																tween = tween_s:Create(plr.Character['HumanoidRootPart'], info, {CFrame=cframe});
																																tween:Play();
																																break;
																															end
																														end
																														break;
																													end
																													if (FlatIdent_831D6 == 0) then
																														local FlatIdent_3047 = 0;
																														while true do
																															if (FlatIdent_3047 == 0) then
																																local FlatIdent_3D372 = 0;
																																while true do
																																	if (0 == FlatIdent_3D372) then
																																		FlatIdent_91D0A = 0;
																																		tween = nil;
																																		FlatIdent_3D372 = 1;
																																	end
																																	if (FlatIdent_3D372 == 1) then
																																		FlatIdent_3047 = 1;
																																		break;
																																	end
																																end
																															end
																															if (FlatIdent_3047 == 1) then
																																FlatIdent_831D6 = 1;
																																break;
																															end
																														end
																													end
																												end
																												break;
																											end
																											if (FlatIdent_95FD1 == 0) then
																												local FlatIdent_9940F = 0;
																												while true do
																													if (FlatIdent_9940F == 1) then
																														FlatIdent_95FD1 = 1;
																														break;
																													end
																													if (0 == FlatIdent_9940F) then
																														FlatIdent_831D6 = 0;
																														FlatIdent_91D0A = nil;
																														FlatIdent_9940F = 1;
																													end
																												end
																											end
																										end
																										break;
																									end
																									if (FlatIdent_431D3 == 0) then
																										FlatIdent_95FD1 = 0;
																										FlatIdent_831D6 = nil;
																										FlatIdent_431D3 = 1;
																									end
																									if (FlatIdent_431D3 == 1) then
																										FlatIdent_91D0A = nil;
																										tween = nil;
																										FlatIdent_431D3 = 2;
																									end
																								end
																							end);
																							FlatIdent_39F1B = 1;
																						end
																					end
																					break;
																				end
																			end
																		end
																		if (FlatIdent_126F3 == 1) then
																			FlatIdent_631C = 1;
																			break;
																		end
																	end
																	break;
																end
															end
														end
													end
													break;
												end
											end
											break;
										end
										if (FlatIdent_4BB46 == 0) then
											FlatIdent_1AD30 = 0;
											FlatIdent_631C = nil;
											FlatIdent_4BB46 = 1;
										end
									end
								end
								if (2 == FlatIdent_28B65) then
									if not tween then
										return err;
									end
									break;
								end
							end
							break;
						end
						if (FlatIdent_7D2DB == 2) then
							local FlatIdent_647ED = 0;
							local FlatIdent_8202D;
							local FlatIdent_8A992;
							while true do
								if (FlatIdent_647ED == 1) then
									while true do
										if (FlatIdent_8202D == 0) then
											FlatIdent_8A992 = 0;
											while true do
												if (FlatIdent_8A992 == 1) then
													FlatIdent_7D2DB = 3;
													break;
												end
												if (FlatIdent_8A992 == 0) then
													tween = nil;
													err = nil;
													FlatIdent_8A992 = 1;
												end
											end
											break;
										end
									end
									break;
								end
								if (FlatIdent_647ED == 0) then
									FlatIdent_8202D = 0;
									FlatIdent_8A992 = nil;
									FlatIdent_647ED = 1;
								end
							end
						end
						if (0 == FlatIdent_7D2DB) then
							local FlatIdent_16EE5 = 0;
							local FlatIdent_579CF;
							while true do
								if (FlatIdent_16EE5 == 0) then
									FlatIdent_579CF = 0;
									while true do
										if (FlatIdent_579CF == 1) then
											FlatIdent_7D2DB = 1;
											break;
										end
										if (FlatIdent_579CF == 0) then
											local FlatIdent_10732 = 0;
											while true do
												if (FlatIdent_10732 == 1) then
													FlatIdent_579CF = 1;
													break;
												end
												if (FlatIdent_10732 == 0) then
													FlatIdent_28B65 = 0;
													tic_k = nil;
													FlatIdent_10732 = 1;
												end
											end
										end
									end
									break;
								end
							end
						end
					end
					break;
				end
				if (FlatIdent_703AA == 0) then
					local FlatIdent_1A835 = 0;
					while true do
						if (FlatIdent_1A835 == 1) then
							FlatIdent_703AA = 1;
							break;
						end
						if (FlatIdent_1A835 == 0) then
							FlatIdent_7D2DB = 0;
							FlatIdent_28B65 = nil;
							FlatIdent_1A835 = 1;
						end
					end
				end
				if (FlatIdent_703AA == 1) then
					local FlatIdent_10439 = 0;
					while true do
						if (FlatIdent_10439 == 0) then
							tic_k = nil;
							params = nil;
							FlatIdent_10439 = 1;
						end
						if (FlatIdent_10439 == 1) then
							FlatIdent_703AA = 2;
							break;
						end
					end
				end
			end
			break;
		end
	end
end;
Tab:AddButton({Name="1",Callback=function()
	tp(-220.085, 48.2279, 52.41);
end});
Tab:AddButton({Name="2",Callback=function()
	tp(-344.504, 35.8983, 61.1426);
end});
Tab:AddButton({Name="3",Callback=function()
	tp(-213.502, 35.8983, 9.02125);
end});
Tab:AddButton({Name="4",Callback=function()
	tp(-344.035, 35.8983, 9.28282);
end});
Tab:AddButton({Name="5",Callback=function()
	tp(-424.69146728515625, 66.66885375976562, 882.8732299804688);
end});
Tab:AddButton({Name="6",Callback=function()
	tp(-425.7768249511719, 88.66886901855469, 887.9725952148438);
end});
Tab:AddButton({Name="7",Callback=function()
	tp(-425.8601379394531, 110.66886901855469, 886.61767578125);
end});
Tab:AddButton({Name="8",Callback=function()
	tp(-425.28961181640625, 132.66888427734375, 886.6810913085938);
end});
Tab:AddButton({Name="9(VIP)",Callback=function()
	tp(-425.7493591308594, 154.66888427734375, 885.9296264648438);
end});
Tab:AddButton({Name="10",Callback=function()
	tp(-569.5691528320312, 66.66873168945312, 177.8140411376953);
end});
Tab:AddButton({Name="11",Callback=function()
	tp(-572.8062744140625, 66.66873168945312, -64.5912094116211);
end});
Tab:AddButton({Name="12",Callback=function()
	tp(-274.0978088378906, 66.16873168945312, 1202.4605712890625);
end});
Tab:AddButton({Name="13",Callback=function()
	tp(-139.9376220703125, 66.16866302490234, 1199.553955078125);
end});
Tab:AddButton({Name="14",Callback=function()
	tp(5.009995937347412, 66.16873168945312, 1196.099365234375);
end});
Tab:AddButton({Name="15",Callback=function()
	tp(145.9430389404297, 66.46874237060547, 1193.77978515625);
end});
Tab:AddButton({Name="16",Callback=function()
	tp(-469.0743713378906, 66.46867370605469, 1184.3870849609375);
end});
Tab:AddButton({Name="17",Callback=function()
	tp(395.5405578613281, 36.66881561279297, 1016.6677856445312);
end});
Tab:AddButton({Name="18",Callback=function()
	tp(83.84014129638672, 6.1689043045043945, 665.26904296875);
end});
Tab:AddButton({Name="19",Callback=function()
	tp(80.84259033203125, 6.368904113769531, 635.1744384765625);
end});
Tab:AddButton({Name="20",Callback=function()
	tp(82.75023651123047, 23.66888427734375, 664.067626953125);
end});
Tab:AddButton({Name="21",Callback=function()
	tp(84.03108978271484, 23.668888092041016, 634.2406616210938);
end});
local Tab = Window:MakeTab({Name="Event tp",Icon="rbxassetid://4483345998",PremiumOnly=false});
Tab:AddButton({Name="Spawn",Callback=function()
	tp(-184.66, 21.3496, 694.146);
end});
local Section = Tab:AddSection({Name="teleport to event"});
Tab:AddButton({Name="Shop Event",Callback=function()
	tp(-3882.134521484375, -92.83111572265625, 8.073095321655273);
end});
Tab:AddButton({Name="Update event(Metro)",Callback=function()
	tp(-204.628, -277.703, 1711.3);
end});
local Section = Tab:AddSection({Name="teleport metro"});
Tab:AddButton({Name="Beach Station",Callback=function()
	tp(-199.198, -277.21, -964.675);
end});
Tab:AddButton({Name="Mall Station",Callback=function()
	tp(-200.151, -278.132, 196.83);
end});
Tab:AddButton({Name="AirPort Station",Callback=function()
	tp(-200.462, -276.863, 1343.01);
end});
local Section = Tab:AddSection({Name="Event(Backrooms)"});
Tab:AddButton({Name="Backrooms login",Callback=function()
	tp(-484.378, 44.7245, -668.923);
end});
Tab:AddButton({Name="Backrooms exit",Callback=function()
	tp(-665.578, -25.3712, -559.979);
end});
local Tab = Window:MakeTab({Name="Animation",Icon="rbxassetid://4483345998",PremiumOnly=false});
Tab:AddLabel("Help Telekinesis");
Tab:AddLabel("Q & E - bring closer and further");
Tab:AddLabel("R - Roates Block");
Tab:AddLabel("T - Tilts Block");
Tab:AddLabel("Y - Throws Block");
Tab:AddButton({Name="Telekinesis",Callback=function()
	local FlatIdent_50E43 = 0;
	local FlatIdent_5204D;
	local FlatIdent_25AD7;
	local FlatIdent_24E56;
	local a;
	local g;
	local h;
	local i;
	local j;
	local k;
	local l;
	local m;
	while true do
		if (FlatIdent_50E43 == 0) then
			local FlatIdent_271A1 = 0;
			while true do
				if (FlatIdent_271A1 == 0) then
					FlatIdent_5204D = 0;
					FlatIdent_25AD7 = nil;
					FlatIdent_271A1 = 1;
				end
				if (FlatIdent_271A1 == 1) then
					FlatIdent_24E56 = nil;
					a = nil;
					FlatIdent_271A1 = 2;
				end
				if (FlatIdent_271A1 == 2) then
					FlatIdent_50E43 = 1;
					break;
				end
			end
		end
		if (FlatIdent_50E43 == 1) then
			local FlatIdent_C06C = 0;
			while true do
				if (FlatIdent_C06C == 0) then
					g = nil;
					h = nil;
					FlatIdent_C06C = 1;
				end
				if (2 == FlatIdent_C06C) then
					FlatIdent_50E43 = 2;
					break;
				end
				if (FlatIdent_C06C == 1) then
					i = nil;
					j = nil;
					FlatIdent_C06C = 2;
				end
			end
		end
		if (FlatIdent_50E43 == 2) then
			k = nil;
			l = nil;
			m = nil;
			while true do
				if (FlatIdent_5204D == 2) then
					l = nil;
					m = nil;
					while true do
						if (FlatIdent_25AD7 == 4) then
							m = nil;
							while true do
								if (FlatIdent_24E56 == 0) then
									local FlatIdent_5A681 = 0;
									local FlatIdent_67ABD;
									local FlatIdent_445AE;
									while true do
										if (FlatIdent_5A681 == 0) then
											FlatIdent_67ABD = 0;
											FlatIdent_445AE = nil;
											FlatIdent_5A681 = 1;
										end
										if (FlatIdent_5A681 == 1) then
											while true do
												if (FlatIdent_67ABD == 0) then
													FlatIdent_445AE = 0;
													while true do
														if (FlatIdent_445AE == 2) then
															i = Instance.new("Tool");
															FlatIdent_24E56 = 1;
															break;
														end
														if (FlatIdent_445AE == 0) then
															local FlatIdent_3E8AF = 0;
															while true do
																if (FlatIdent_3E8AF == 0) then
																	local FlatIdent_3D119 = 0;
																	while true do
																		if (FlatIdent_3D119 == 0) then
																			a = nil;
																			a = function(b, c)
																				local FlatIdent_57C98 = 0;
																				local FlatIdent_80386;
																				local d;
																				local e;
																				while true do
																					if (FlatIdent_57C98 == 0) then
																						local FlatIdent_4E919 = 0;
																						while true do
																							if (FlatIdent_4E919 == 0) then
																								FlatIdent_80386 = 0;
																								d = nil;
																								FlatIdent_4E919 = 1;
																							end
																							if (FlatIdent_4E919 == 1) then
																								FlatIdent_57C98 = 1;
																								break;
																							end
																						end
																					end
																					if (1 == FlatIdent_57C98) then
																						e = nil;
																						while true do
																							local FlatIdent_86573 = 0;
																							local FlatIdent_53F71;
																							while true do
																								if (FlatIdent_86573 == 0) then
																									FlatIdent_53F71 = 0;
																									while true do
																										if (FlatIdent_53F71 == 0) then
																											if (FlatIdent_80386 == 1) then
																												local FlatIdent_234F0 = 0;
																												local FlatIdent_7DB18;
																												local FlatIdent_C185;
																												while true do
																													if (1 == FlatIdent_234F0) then
																														while true do
																															if (FlatIdent_7DB18 == 0) then
																																FlatIdent_C185 = 0;
																																while true do
																																	if (FlatIdent_C185 == 0) then
																																		local FlatIdent_1E5B5 = 0;
																																		local FlatIdent_5EF9F;
																																		while true do
																																			if (FlatIdent_1E5B5 == 0) then
																																				FlatIdent_5EF9F = 0;
																																				while true do
																																					if (0 == FlatIdent_5EF9F) then
																																						setfenv(c, e);
																																						return c;
																																					end
																																				end
																																				break;
																																			end
																																		end
																																	end
																																end
																																break;
																															end
																														end
																														break;
																													end
																													if (FlatIdent_234F0 == 0) then
																														FlatIdent_7DB18 = 0;
																														FlatIdent_C185 = nil;
																														FlatIdent_234F0 = 1;
																													end
																												end
																											end
																											if (FlatIdent_80386 == 0) then
																												local FlatIdent_431F6 = 0;
																												local FlatIdent_86E17;
																												local FlatIdent_6337F;
																												while true do
																													if (FlatIdent_431F6 == 1) then
																														while true do
																															if (FlatIdent_86E17 == 0) then
																																FlatIdent_6337F = 0;
																																while true do
																																	if (FlatIdent_6337F == 0) then
																																		local FlatIdent_DDFA = 0;
																																		local FlatIdent_46CCD;
																																		while true do
																																			if (FlatIdent_DDFA == 0) then
																																				FlatIdent_46CCD = 0;
																																				while true do
																																					if (1 == FlatIdent_46CCD) then
																																						FlatIdent_6337F = 1;
																																						break;
																																					end
																																					if (FlatIdent_46CCD == 0) then
																																						local FlatIdent_3F1C1 = 0;
																																						while true do
																																							if (FlatIdent_3F1C1 == 0) then
																																								d = getfenv(c);
																																								e = setmetatable({}, {__index=function(self, f)
																																									if (f == "script") then
																																										return b;
																																									else
																																										return d[f];
																																									end
																																								end});
																																								FlatIdent_3F1C1 = 1;
																																							end
																																							if (1 == FlatIdent_3F1C1) then
																																								FlatIdent_46CCD = 1;
																																								break;
																																							end
																																						end
																																					end
																																				end
																																				break;
																																			end
																																		end
																																	end
																																	if (FlatIdent_6337F == 1) then
																																		FlatIdent_80386 = 1;
																																		break;
																																	end
																																end
																																break;
																															end
																														end
																														break;
																													end
																													if (0 == FlatIdent_431F6) then
																														FlatIdent_86E17 = 0;
																														FlatIdent_6337F = nil;
																														FlatIdent_431F6 = 1;
																													end
																												end
																											end
																											break;
																										end
																									end
																									break;
																								end
																							end
																						end
																						break;
																					end
																				end
																			end;
																			FlatIdent_3D119 = 1;
																		end
																		if (1 == FlatIdent_3D119) then
																			FlatIdent_3E8AF = 1;
																			break;
																		end
																	end
																end
																if (FlatIdent_3E8AF == 1) then
																	FlatIdent_445AE = 1;
																	break;
																end
															end
														end
														if (FlatIdent_445AE == 1) then
															local FlatIdent_8D77A = 0;
															while true do
																if (FlatIdent_8D77A == 1) then
																	FlatIdent_445AE = 2;
																	break;
																end
																if (FlatIdent_8D77A == 0) then
																	local FlatIdent_5EB0F = 0;
																	while true do
																		if (FlatIdent_5EB0F == 0) then
																			g = {};
																			h = Instance.new("Model", game:GetService("Lighting"));
																			FlatIdent_5EB0F = 1;
																		end
																		if (FlatIdent_5EB0F == 1) then
																			FlatIdent_8D77A = 1;
																			break;
																		end
																	end
																end
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
								if (FlatIdent_24E56 == 7) then
									table.insert(g, a(l, function()
										local FlatIdent_79EFA = 0;
										local FlatIdent_66FE3;
										local FlatIdent_6BEC2;
										local s;
										local u;
										local v;
										while true do
											if (FlatIdent_79EFA == 0) then
												FlatIdent_66FE3 = 0;
												FlatIdent_6BEC2 = nil;
												FlatIdent_79EFA = 1;
											end
											if (FlatIdent_79EFA == 1) then
												s = nil;
												u = nil;
												FlatIdent_79EFA = 2;
											end
											if (FlatIdent_79EFA == 2) then
												v = nil;
												while true do
													if (FlatIdent_66FE3 == 0) then
														local FlatIdent_594C5 = 0;
														local FlatIdent_37ACB;
														while true do
															if (FlatIdent_594C5 == 0) then
																FlatIdent_37ACB = 0;
																while true do
																	if (FlatIdent_37ACB == 0) then
																		local FlatIdent_46763 = 0;
																		while true do
																			if (0 == FlatIdent_46763) then
																				FlatIdent_6BEC2 = 0;
																				s = nil;
																				FlatIdent_46763 = 1;
																			end
																			if (1 == FlatIdent_46763) then
																				FlatIdent_37ACB = 1;
																				break;
																			end
																		end
																	end
																	if (FlatIdent_37ACB == 1) then
																		FlatIdent_66FE3 = 1;
																		break;
																	end
																end
																break;
															end
														end
													end
													if (FlatIdent_66FE3 == 2) then
														while true do
															if (0 == FlatIdent_6BEC2) then
																local FlatIdent_7B6FE = 0;
																while true do
																	if (1 == FlatIdent_7B6FE) then
																		lineconnect = tool.LineConnect;
																		object = nil;
																		FlatIdent_7B6FE = 2;
																	end
																	if (FlatIdent_7B6FE == 0) then
																		wait();
																		tool = script.Parent;
																		FlatIdent_7B6FE = 1;
																	end
																	if (FlatIdent_7B6FE == 2) then
																		mousedown = false;
																		FlatIdent_6BEC2 = 1;
																		break;
																	end
																end
															end
															if (FlatIdent_6BEC2 == 5) then
																local FlatIdent_76213 = 0;
																local FlatIdent_54E41;
																while true do
																	if (FlatIdent_76213 == 0) then
																		FlatIdent_54E41 = 0;
																		while true do
																			if (FlatIdent_54E41 == 0) then
																				local FlatIdent_1C67A = 0;
																				local FlatIdent_6009D;
																				while true do
																					if (FlatIdent_1C67A == 0) then
																						FlatIdent_6009D = 0;
																						while true do
																							if (FlatIdent_6009D == 0) then
																								objval = nil;
																								u = false;
																								FlatIdent_6009D = 1;
																							end
																							if (FlatIdent_6009D == 1) then
																								FlatIdent_54E41 = 1;
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																			if (FlatIdent_54E41 == 2) then
																				LineConnect = function(o, p, q)
																					local FlatIdent_8045C = 0;
																					local FlatIdent_14524;
																					local FlatIdent_684F6;
																					local FlatIdent_1A88A;
																					local w;
																					local x;
																					local y;
																					local z;
																					local A;
																					while true do
																						if (FlatIdent_8045C == 2) then
																							x = nil;
																							y = nil;
																							FlatIdent_8045C = 3;
																						end
																						if (4 == FlatIdent_8045C) then
																							while true do
																								if (FlatIdent_14524 == 0) then
																									local FlatIdent_470C5 = 0;
																									local FlatIdent_4EED0;
																									while true do
																										if (0 == FlatIdent_470C5) then
																											FlatIdent_4EED0 = 0;
																											while true do
																												if (FlatIdent_4EED0 == 1) then
																													FlatIdent_14524 = 1;
																													break;
																												end
																												if (FlatIdent_4EED0 == 0) then
																													FlatIdent_684F6 = 0;
																													FlatIdent_1A88A = nil;
																													FlatIdent_4EED0 = 1;
																												end
																											end
																											break;
																										end
																									end
																								end
																								if (FlatIdent_14524 == 1) then
																									local FlatIdent_3DE28 = 0;
																									local FlatIdent_24713;
																									while true do
																										if (FlatIdent_3DE28 == 0) then
																											FlatIdent_24713 = 0;
																											while true do
																												if (FlatIdent_24713 == 1) then
																													FlatIdent_14524 = 2;
																													break;
																												end
																												if (FlatIdent_24713 == 0) then
																													w = nil;
																													x = nil;
																													FlatIdent_24713 = 1;
																												end
																											end
																											break;
																										end
																									end
																								end
																								if (3 == FlatIdent_14524) then
																									A = nil;
																									while true do
																										if (FlatIdent_684F6 == 3) then
																											while true do
																												if (4 == FlatIdent_1A88A) then
																													local FlatIdent_5C8B = 0;
																													local FlatIdent_6B9F4;
																													while true do
																														if (FlatIdent_5C8B == 0) then
																															FlatIdent_6B9F4 = 0;
																															while true do
																																if (FlatIdent_6B9F4 == 1) then
																																	w.Parent = A;
																																	FlatIdent_1A88A = 5;
																																	break;
																																end
																																if (FlatIdent_6B9F4 == 0) then
																																	A = lineconnect:clone();
																																	A.Disabled = false;
																																	FlatIdent_6B9F4 = 1;
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_1A88A == 6) then
																													A.Parent = workspace;
																													if (p == object) then
																														objval = x;
																													end
																													break;
																												end
																												if (FlatIdent_1A88A == 0) then
																													local FlatIdent_5C35E = 0;
																													local FlatIdent_3640;
																													while true do
																														if (FlatIdent_5C35E == 0) then
																															FlatIdent_3640 = 0;
																															while true do
																																if (1 == FlatIdent_3640) then
																																	w.Name = "Part1";
																																	FlatIdent_1A88A = 1;
																																	break;
																																end
																																if (FlatIdent_3640 == 0) then
																																	local FlatIdent_55F65 = 0;
																																	local FlatIdent_8D749;
																																	while true do
																																		if (FlatIdent_55F65 == 0) then
																																			FlatIdent_8D749 = 0;
																																			while true do
																																				if (FlatIdent_8D749 == 0) then
																																					local FlatIdent_8532B = 0;
																																					while true do
																																						if (FlatIdent_8532B == 0) then
																																							w = Instance.new("ObjectValue");
																																							w.Value = o;
																																							FlatIdent_8532B = 1;
																																						end
																																						if (FlatIdent_8532B == 1) then
																																							FlatIdent_8D749 = 1;
																																							break;
																																						end
																																					end
																																				end
																																				if (FlatIdent_8D749 == 1) then
																																					FlatIdent_3640 = 1;
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_1A88A == 1) then
																													local FlatIdent_3F0BC = 0;
																													local FlatIdent_2C721;
																													while true do
																														if (FlatIdent_3F0BC == 0) then
																															FlatIdent_2C721 = 0;
																															while true do
																																if (FlatIdent_2C721 == 1) then
																																	x.Name = "Part2";
																																	FlatIdent_1A88A = 2;
																																	break;
																																end
																																if (FlatIdent_2C721 == 0) then
																																	local FlatIdent_32B60 = 0;
																																	while true do
																																		if (FlatIdent_32B60 == 0) then
																																			x = Instance.new("ObjectValue");
																																			x.Value = p;
																																			FlatIdent_32B60 = 1;
																																		end
																																		if (FlatIdent_32B60 == 1) then
																																			FlatIdent_2C721 = 1;
																																			break;
																																		end
																																	end
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_1A88A == 5) then
																													local FlatIdent_490C6 = 0;
																													local FlatIdent_F80A;
																													local FlatIdent_30B84;
																													local FlatIdent_6B3C8;
																													while true do
																														if (FlatIdent_490C6 == 0) then
																															FlatIdent_F80A = 0;
																															FlatIdent_30B84 = nil;
																															FlatIdent_490C6 = 1;
																														end
																														if (1 == FlatIdent_490C6) then
																															FlatIdent_6B3C8 = nil;
																															while true do
																																if (0 == FlatIdent_F80A) then
																																	local FlatIdent_12AC4 = 0;
																																	while true do
																																		if (FlatIdent_12AC4 == 1) then
																																			FlatIdent_F80A = 1;
																																			break;
																																		end
																																		if (FlatIdent_12AC4 == 0) then
																																			FlatIdent_30B84 = 0;
																																			FlatIdent_6B3C8 = nil;
																																			FlatIdent_12AC4 = 1;
																																		end
																																	end
																																end
																																if (FlatIdent_F80A == 1) then
																																	while true do
																																		if (0 == FlatIdent_30B84) then
																																			FlatIdent_6B3C8 = 0;
																																			while true do
																																				if (FlatIdent_6B3C8 == 0) then
																																					local FlatIdent_4FFCC = 0;
																																					local FlatIdent_13058;
																																					while true do
																																						if (FlatIdent_4FFCC == 0) then
																																							FlatIdent_13058 = 0;
																																							while true do
																																								if (FlatIdent_13058 == 0) then
																																									local FlatIdent_11D93 = 0;
																																									local FlatIdent_27AA;
																																									while true do
																																										if (FlatIdent_11D93 == 0) then
																																											FlatIdent_27AA = 0;
																																											while true do
																																												if (FlatIdent_27AA == 1) then
																																													FlatIdent_13058 = 1;
																																													break;
																																												end
																																												if (FlatIdent_27AA == 0) then
																																													local FlatIdent_799C9 = 0;
																																													while true do
																																														if (FlatIdent_799C9 == 0) then
																																															x.Parent = A;
																																															y.Parent = A;
																																															FlatIdent_799C9 = 1;
																																														end
																																														if (FlatIdent_799C9 == 1) then
																																															FlatIdent_27AA = 1;
																																															break;
																																														end
																																													end
																																												end
																																											end
																																											break;
																																										end
																																									end
																																								end
																																								if (FlatIdent_13058 == 1) then
																																									FlatIdent_6B3C8 = 1;
																																									break;
																																								end
																																							end
																																							break;
																																						end
																																					end
																																				end
																																				if (FlatIdent_6B3C8 == 1) then
																																					z.Parent = A;
																																					FlatIdent_1A88A = 6;
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_1A88A == 2) then
																													local FlatIdent_9C93 = 0;
																													local FlatIdent_98CB5;
																													while true do
																														if (0 == FlatIdent_9C93) then
																															FlatIdent_98CB5 = 0;
																															while true do
																																if (FlatIdent_98CB5 == 0) then
																																	local FlatIdent_39272 = 0;
																																	while true do
																																		if (FlatIdent_39272 == 0) then
																																			y = Instance.new("ObjectValue");
																																			y.Value = q;
																																			FlatIdent_39272 = 1;
																																		end
																																		if (FlatIdent_39272 == 1) then
																																			FlatIdent_98CB5 = 1;
																																			break;
																																		end
																																	end
																																end
																																if (FlatIdent_98CB5 == 1) then
																																	y.Name = "Par";
																																	FlatIdent_1A88A = 3;
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_1A88A == 3) then
																													local FlatIdent_96027 = 0;
																													local FlatIdent_4098A;
																													local FlatIdent_13A51;
																													while true do
																														if (FlatIdent_96027 == 1) then
																															while true do
																																if (FlatIdent_4098A == 0) then
																																	FlatIdent_13A51 = 0;
																																	while true do
																																		if (FlatIdent_13A51 == 0) then
																																			z = Instance.new("ObjectValue");
																																			z.Value = color;
																																			FlatIdent_13A51 = 1;
																																		end
																																		if (FlatIdent_13A51 == 1) then
																																			z.Name = "Color";
																																			FlatIdent_1A88A = 4;
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																															break;
																														end
																														if (FlatIdent_96027 == 0) then
																															FlatIdent_4098A = 0;
																															FlatIdent_13A51 = nil;
																															FlatIdent_96027 = 1;
																														end
																													end
																												end
																											end
																											break;
																										end
																										if (FlatIdent_684F6 == 0) then
																											local FlatIdent_C83A = 0;
																											while true do
																												if (FlatIdent_C83A == 0) then
																													FlatIdent_1A88A = 0;
																													w = nil;
																													FlatIdent_C83A = 1;
																												end
																												if (FlatIdent_C83A == 1) then
																													FlatIdent_684F6 = 1;
																													break;
																												end
																											end
																										end
																										if (2 == FlatIdent_684F6) then
																											local FlatIdent_983C8 = 0;
																											local FlatIdent_22F23;
																											local FlatIdent_2528F;
																											while true do
																												if (FlatIdent_983C8 == 0) then
																													FlatIdent_22F23 = 0;
																													FlatIdent_2528F = nil;
																													FlatIdent_983C8 = 1;
																												end
																												if (FlatIdent_983C8 == 1) then
																													while true do
																														if (FlatIdent_22F23 == 0) then
																															FlatIdent_2528F = 0;
																															while true do
																																if (FlatIdent_2528F == 0) then
																																	local FlatIdent_96241 = 0;
																																	local FlatIdent_2296D;
																																	while true do
																																		if (FlatIdent_96241 == 0) then
																																			FlatIdent_2296D = 0;
																																			while true do
																																				if (FlatIdent_2296D == 1) then
																																					FlatIdent_2528F = 1;
																																					break;
																																				end
																																				if (FlatIdent_2296D == 0) then
																																					z = nil;
																																					A = nil;
																																					FlatIdent_2296D = 1;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																end
																																if (FlatIdent_2528F == 1) then
																																	FlatIdent_684F6 = 3;
																																	break;
																																end
																															end
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end
																										if (FlatIdent_684F6 == 1) then
																											local FlatIdent_962B7 = 0;
																											local FlatIdent_3909F;
																											while true do
																												if (FlatIdent_962B7 == 0) then
																													FlatIdent_3909F = 0;
																													while true do
																														if (FlatIdent_3909F == 1) then
																															FlatIdent_684F6 = 2;
																															break;
																														end
																														if (FlatIdent_3909F == 0) then
																															local FlatIdent_58917 = 0;
																															while true do
																																if (FlatIdent_58917 == 1) then
																																	FlatIdent_3909F = 1;
																																	break;
																																end
																																if (0 == FlatIdent_58917) then
																																	x = nil;
																																	y = nil;
																																	FlatIdent_58917 = 1;
																																end
																															end
																														end
																													end
																													break;
																												end
																											end
																										end
																									end
																									break;
																								end
																								if (FlatIdent_14524 == 2) then
																									local FlatIdent_93A5F = 0;
																									while true do
																										if (FlatIdent_93A5F == 1) then
																											FlatIdent_14524 = 3;
																											break;
																										end
																										if (FlatIdent_93A5F == 0) then
																											local FlatIdent_3BF12 = 0;
																											while true do
																												if (FlatIdent_3BF12 == 0) then
																													y = nil;
																													z = nil;
																													FlatIdent_3BF12 = 1;
																												end
																												if (FlatIdent_3BF12 == 1) then
																													FlatIdent_93A5F = 1;
																													break;
																												end
																											end
																										end
																									end
																								end
																							end
																							break;
																						end
																						if (FlatIdent_8045C == 1) then
																							local FlatIdent_39837 = 0;
																							while true do
																								if (0 == FlatIdent_39837) then
																									FlatIdent_1A88A = nil;
																									w = nil;
																									FlatIdent_39837 = 1;
																								end
																								if (FlatIdent_39837 == 1) then
																									FlatIdent_8045C = 2;
																									break;
																								end
																							end
																						end
																						if (FlatIdent_8045C == 3) then
																							local FlatIdent_7927E = 0;
																							while true do
																								if (FlatIdent_7927E == 0) then
																									z = nil;
																									A = nil;
																									FlatIdent_7927E = 1;
																								end
																								if (FlatIdent_7927E == 1) then
																									FlatIdent_8045C = 4;
																									break;
																								end
																							end
																						end
																						if (FlatIdent_8045C == 0) then
																							local FlatIdent_92095 = 0;
																							while true do
																								if (FlatIdent_92095 == 0) then
																									FlatIdent_14524 = 0;
																									FlatIdent_684F6 = nil;
																									FlatIdent_92095 = 1;
																								end
																								if (FlatIdent_92095 == 1) then
																									FlatIdent_8045C = 1;
																									break;
																								end
																							end
																						end
																					end
																				end;
																				FlatIdent_6BEC2 = 6;
																				break;
																			end
																			if (FlatIdent_54E41 == 1) then
																				local FlatIdent_62F94 = 0;
																				while true do
																					if (FlatIdent_62F94 == 1) then
																						FlatIdent_54E41 = 2;
																						break;
																					end
																					if (FlatIdent_62F94 == 0) then
																						v = BP:clone();
																						v.maxForce = Vector3.new(30000, 30000, 30000);
																						FlatIdent_62F94 = 1;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
															if (FlatIdent_6BEC2 == 4) then
																local FlatIdent_A524 = 0;
																local FlatIdent_71C83;
																while true do
																	if (FlatIdent_A524 == 0) then
																		FlatIdent_71C83 = 0;
																		while true do
																			if (FlatIdent_71C83 == 2) then
																				color = tool.Handle;
																				FlatIdent_6BEC2 = 5;
																				break;
																			end
																			if (FlatIdent_71C83 == 0) then
																				local FlatIdent_40EE5 = 0;
																				while true do
																					if (FlatIdent_40EE5 == 1) then
																						FlatIdent_71C83 = 1;
																						break;
																					end
																					if (FlatIdent_40EE5 == 0) then
																						s.Scale = Vector3.new(0.7, 0.7, 0.7);
																						s.Parent = point;
																						FlatIdent_40EE5 = 1;
																					end
																				end
																			end
																			if (FlatIdent_71C83 == 1) then
																				local FlatIdent_7F3AE = 0;
																				while true do
																					if (FlatIdent_7F3AE == 1) then
																						FlatIdent_71C83 = 2;
																						break;
																					end
																					if (FlatIdent_7F3AE == 0) then
																						handle = tool.Handle;
																						front = tool.Handle;
																						FlatIdent_7F3AE = 1;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
															if (FlatIdent_6BEC2 == 1) then
																local FlatIdent_6970C = 0;
																local FlatIdent_85FA4;
																while true do
																	if (FlatIdent_6970C == 0) then
																		FlatIdent_85FA4 = 0;
																		while true do
																			if (FlatIdent_85FA4 == 0) then
																				found = false;
																				BP = Instance.new("BodyPosition");
																				FlatIdent_85FA4 = 1;
																			end
																			if (FlatIdent_85FA4 == 2) then
																				dist = nil;
																				FlatIdent_6BEC2 = 2;
																				break;
																			end
																			if (1 == FlatIdent_85FA4) then
																				local FlatIdent_84D2D = 0;
																				local FlatIdent_A632;
																				while true do
																					if (FlatIdent_84D2D == 0) then
																						FlatIdent_A632 = 0;
																						while true do
																							if (0 == FlatIdent_A632) then
																								local FlatIdent_69FEF = 0;
																								while true do
																									if (FlatIdent_69FEF == 1) then
																										FlatIdent_A632 = 1;
																										break;
																									end
																									if (0 == FlatIdent_69FEF) then
																										BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge);
																										BP.P = BP.P * 1.1;
																										FlatIdent_69FEF = 1;
																									end
																								end
																							end
																							if (1 == FlatIdent_A632) then
																								FlatIdent_85FA4 = 2;
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
															if (FlatIdent_6BEC2 == 3) then
																local FlatIdent_899CC = 0;
																while true do
																	if (FlatIdent_899CC == 1) then
																		point.CanCollide = false;
																		s = Instance.new("SpecialMesh");
																		FlatIdent_899CC = 2;
																	end
																	if (FlatIdent_899CC == 0) then
																		local FlatIdent_48C13 = 0;
																		while true do
																			if (0 == FlatIdent_48C13) then
																				point.BrickColor = BrickColor.Black();
																				point.Size = Vector3.new(1, 1, 1);
																				FlatIdent_48C13 = 1;
																			end
																			if (FlatIdent_48C13 == 1) then
																				FlatIdent_899CC = 1;
																				break;
																			end
																		end
																	end
																	if (FlatIdent_899CC == 2) then
																		s.MeshType = "Sphere";
																		FlatIdent_6BEC2 = 4;
																		break;
																	end
																end
															end
															if (FlatIdent_6BEC2 == 2) then
																local FlatIdent_8C457 = 0;
																local FlatIdent_232D8;
																while true do
																	if (FlatIdent_8C457 == 0) then
																		FlatIdent_232D8 = 0;
																		while true do
																			if (FlatIdent_232D8 == 1) then
																				local FlatIdent_393C8 = 0;
																				local FlatIdent_35A26;
																				while true do
																					if (FlatIdent_393C8 == 0) then
																						FlatIdent_35A26 = 0;
																						while true do
																							if (FlatIdent_35A26 == 1) then
																								FlatIdent_232D8 = 2;
																								break;
																							end
																							if (FlatIdent_35A26 == 0) then
																								local FlatIdent_8BD8A = 0;
																								while true do
																									if (1 == FlatIdent_8BD8A) then
																										FlatIdent_35A26 = 1;
																										break;
																									end
																									if (0 == FlatIdent_8BD8A) then
																										point.Anchored = true;
																										point.formFactor = 0;
																										FlatIdent_8BD8A = 1;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			if (FlatIdent_232D8 == 0) then
																				local FlatIdent_732BE = 0;
																				local FlatIdent_26365;
																				while true do
																					if (FlatIdent_732BE == 0) then
																						FlatIdent_26365 = 0;
																						while true do
																							if (0 == FlatIdent_26365) then
																								local FlatIdent_3FD66 = 0;
																								while true do
																									if (FlatIdent_3FD66 == 0) then
																										point = Instance.new("Part");
																										point.Locked = true;
																										FlatIdent_3FD66 = 1;
																									end
																									if (FlatIdent_3FD66 == 1) then
																										FlatIdent_26365 = 1;
																										break;
																									end
																								end
																							end
																							if (FlatIdent_26365 == 1) then
																								FlatIdent_232D8 = 1;
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																			if (FlatIdent_232D8 == 2) then
																				point.Shape = 0;
																				FlatIdent_6BEC2 = 3;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if (6 == FlatIdent_6BEC2) then
																onButton1Down = function(B)
																	local FlatIdent_3AA42 = 0;
																	local FlatIdent_2AADA;
																	local FlatIdent_906C4;
																	while true do
																		if (FlatIdent_3AA42 == 0) then
																			FlatIdent_2AADA = 0;
																			FlatIdent_906C4 = nil;
																			FlatIdent_3AA42 = 1;
																		end
																		if (FlatIdent_3AA42 == 1) then
																			while true do
																				if (FlatIdent_2AADA == 0) then
																					FlatIdent_906C4 = 0;
																					while true do
																						if (FlatIdent_906C4 == 3) then
																							object = nil;
																							objval.Value = nil;
																							break;
																						end
																						if (FlatIdent_906C4 == 2) then
																							local FlatIdent_39762 = 0;
																							local FlatIdent_92687;
																							while true do
																								if (FlatIdent_39762 == 0) then
																									FlatIdent_92687 = 0;
																									while true do
																										if (1 == FlatIdent_92687) then
																											FlatIdent_906C4 = 3;
																											break;
																										end
																										if (FlatIdent_92687 == 0) then
																											local FlatIdent_676F6 = 0;
																											while true do
																												if (FlatIdent_676F6 == 0) then
																													while mousedown == true do
																														if (object.Parent == nil) then
																															break;
																														end
																														local t = CFrame.new(front.Position, B.Hit.p);
																														BP.Parent = object;
																														BP.position = front.Position + (t.lookVector * dist);
																														wait();
																													end
																													BP:remove();
																													FlatIdent_676F6 = 1;
																												end
																												if (FlatIdent_676F6 == 1) then
																													FlatIdent_92687 = 1;
																													break;
																												end
																											end
																										end
																									end
																									break;
																								end
																							end
																						end
																						if (FlatIdent_906C4 == 0) then
																							local FlatIdent_679AF = 0;
																							local FlatIdent_8933C;
																							while true do
																								if (FlatIdent_679AF == 0) then
																									FlatIdent_8933C = 0;
																									while true do
																										if (FlatIdent_8933C == 0) then
																											local FlatIdent_68F65 = 0;
																											while true do
																												if (FlatIdent_68F65 == 1) then
																													FlatIdent_8933C = 1;
																													break;
																												end
																												if (FlatIdent_68F65 == 0) then
																													if (mousedown == true) then
																														return;
																													end
																													mousedown = true;
																													FlatIdent_68F65 = 1;
																												end
																											end
																										end
																										if (FlatIdent_8933C == 1) then
																											FlatIdent_906C4 = 1;
																											break;
																										end
																									end
																									break;
																								end
																							end
																						end
																						if (FlatIdent_906C4 == 1) then
																							local FlatIdent_871D3 = 0;
																							local FlatIdent_48139;
																							local FlatIdent_453F8;
																							while true do
																								if (FlatIdent_871D3 == 0) then
																									local FlatIdent_1CB20 = 0;
																									while true do
																										if (FlatIdent_1CB20 == 1) then
																											FlatIdent_871D3 = 1;
																											break;
																										end
																										if (FlatIdent_1CB20 == 0) then
																											FlatIdent_48139 = 0;
																											FlatIdent_453F8 = nil;
																											FlatIdent_1CB20 = 1;
																										end
																									end
																								end
																								if (FlatIdent_871D3 == 1) then
																									while true do
																										if (FlatIdent_48139 == 0) then
																											FlatIdent_453F8 = 0;
																											while true do
																												if (FlatIdent_453F8 == 0) then
																													local FlatIdent_525EB = 0;
																													local FlatIdent_25B19;
																													while true do
																														if (0 == FlatIdent_525EB) then
																															FlatIdent_25B19 = 0;
																															while true do
																																if (FlatIdent_25B19 == 1) then
																																	FlatIdent_453F8 = 1;
																																	break;
																																end
																																if (FlatIdent_25B19 == 0) then
																																	local FlatIdent_562AA = 0;
																																	local FlatIdent_8915;
																																	while true do
																																		if (FlatIdent_562AA == 0) then
																																			FlatIdent_8915 = 0;
																																			while true do
																																				if (FlatIdent_8915 == 0) then
																																					local FlatIdent_44378 = 0;
																																					while true do
																																						if (FlatIdent_44378 == 1) then
																																							FlatIdent_8915 = 1;
																																							break;
																																						end
																																						if (FlatIdent_44378 == 0) then
																																							coroutine.resume(coroutine.create(function()
																																								local FlatIdent_43968 = 0;
																																								local FlatIdent_4613E;
																																								local C;
																																								while true do
																																									if (FlatIdent_43968 == 1) then
																																										while true do
																																											if (FlatIdent_4613E == 0) then
																																												local FlatIdent_75C0E = 0;
																																												local FlatIdent_2E936;
																																												local FlatIdent_58498;
																																												while true do
																																													if (FlatIdent_75C0E == 1) then
																																														while true do
																																															if (FlatIdent_2E936 == 0) then
																																																FlatIdent_58498 = 0;
																																																while true do
																																																	if (FlatIdent_58498 == 0) then
																																																		local FlatIdent_11851 = 0;
																																																		local FlatIdent_11C37;
																																																		while true do
																																																			if (FlatIdent_11851 == 0) then
																																																				FlatIdent_11C37 = 0;
																																																				while true do
																																																					if (0 == FlatIdent_11C37) then
																																																						local FlatIdent_48627 = 0;
																																																						while true do
																																																							if (FlatIdent_48627 == 0) then
																																																								C = point:clone();
																																																								C.Parent = tool;
																																																								FlatIdent_48627 = 1;
																																																							end
																																																							if (FlatIdent_48627 == 1) then
																																																								FlatIdent_11C37 = 1;
																																																								break;
																																																							end
																																																						end
																																																					end
																																																					if (FlatIdent_11C37 == 1) then
																																																						FlatIdent_58498 = 1;
																																																						break;
																																																					end
																																																				end
																																																				break;
																																																			end
																																																		end
																																																	end
																																																	if (FlatIdent_58498 == 1) then
																																																		FlatIdent_4613E = 1;
																																																		break;
																																																	end
																																																end
																																																break;
																																															end
																																														end
																																														break;
																																													end
																																													if (FlatIdent_75C0E == 0) then
																																														FlatIdent_2E936 = 0;
																																														FlatIdent_58498 = nil;
																																														FlatIdent_75C0E = 1;
																																													end
																																												end
																																											end
																																											if (FlatIdent_4613E == 2) then
																																												C:remove();
																																												break;
																																											end
																																											if (FlatIdent_4613E == 1) then
																																												local FlatIdent_8C351 = 0;
																																												local FlatIdent_2BBF0;
																																												while true do
																																													if (0 == FlatIdent_8C351) then
																																														FlatIdent_2BBF0 = 0;
																																														while true do
																																															if (FlatIdent_2BBF0 == 1) then
																																																FlatIdent_4613E = 2;
																																																break;
																																															end
																																															if (FlatIdent_2BBF0 == 0) then
																																																local FlatIdent_5FD53 = 0;
																																																while true do
																																																	if (0 == FlatIdent_5FD53) then
																																																		LineConnect(front, C, workspace);
																																																		while mousedown == true do
																																																			C.Parent = tool;
																																																			if (object == nil) then
																																																				if (B.Target == nil) then
																																																					local FlatIdent_69C2C = 0;
																																																					local FlatIdent_923B8;
																																																					local t;
																																																					while true do
																																																						if (1 == FlatIdent_69C2C) then
																																																							while true do
																																																								if (FlatIdent_923B8 == 0) then
																																																									t = CFrame.new(front.Position, B.Hit.p);
																																																									C.CFrame = CFrame.new(front.Position + (t.lookVector * 1000));
																																																									break;
																																																								end
																																																							end
																																																							break;
																																																						end
																																																						if (0 == FlatIdent_69C2C) then
																																																							FlatIdent_923B8 = 0;
																																																							t = nil;
																																																							FlatIdent_69C2C = 1;
																																																						end
																																																					end
																																																				else
																																																					C.CFrame = CFrame.new(B.Hit.p);
																																																				end
																																																			else
																																																				LineConnect(front, object, workspace);
																																																				break;
																																																			end
																																																			wait();
																																																		end
																																																		FlatIdent_5FD53 = 1;
																																																	end
																																																	if (FlatIdent_5FD53 == 1) then
																																																		FlatIdent_2BBF0 = 1;
																																																		break;
																																																	end
																																																end
																																															end
																																														end
																																														break;
																																													end
																																												end
																																											end
																																										end
																																										break;
																																									end
																																									if (FlatIdent_43968 == 0) then
																																										local FlatIdent_7496D = 0;
																																										while true do
																																											if (FlatIdent_7496D == 0) then
																																												FlatIdent_4613E = 0;
																																												C = nil;
																																												FlatIdent_7496D = 1;
																																											end
																																											if (FlatIdent_7496D == 1) then
																																												FlatIdent_43968 = 1;
																																												break;
																																											end
																																										end
																																									end
																																								end
																																							end));
																																							while mousedown == true do
																																								if (B.Target ~= nil) then
																																									local D = B.Target;
																																									if (D.Anchored == false) then
																																										object = D;
																																										dist = (object.Position - front.Position).magnitude;
																																										break;
																																									end
																																								end
																																								wait();
																																							end
																																							FlatIdent_44378 = 1;
																																						end
																																					end
																																				end
																																				if (FlatIdent_8915 == 1) then
																																					FlatIdent_25B19 = 1;
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_453F8 == 1) then
																													FlatIdent_906C4 = 2;
																													break;
																												end
																											end
																											break;
																										end
																									end
																									break;
																								end
																							end
																						end
																					end
																					break;
																				end
																			end
																			break;
																		end
																	end
																end;
																onKeyDown = function(E, B)
																	local FlatIdent_499EC = 0;
																	local FlatIdent_62BF;
																	local FlatIdent_35723;
																	local FlatIdent_43A29;
																	local E;
																	local F;
																	while true do
																		if (FlatIdent_499EC == 1) then
																			FlatIdent_43A29 = nil;
																			E = nil;
																			FlatIdent_499EC = 2;
																		end
																		if (FlatIdent_499EC == 2) then
																			F = nil;
																			while true do
																				if (FlatIdent_62BF == 0) then
																					local FlatIdent_8B8D1 = 0;
																					local FlatIdent_89F12;
																					while true do
																						if (FlatIdent_8B8D1 == 0) then
																							FlatIdent_89F12 = 0;
																							while true do
																								if (FlatIdent_89F12 == 0) then
																									local FlatIdent_93213 = 0;
																									while true do
																										if (FlatIdent_93213 == 0) then
																											FlatIdent_35723 = 0;
																											FlatIdent_43A29 = nil;
																											FlatIdent_93213 = 1;
																										end
																										if (FlatIdent_93213 == 1) then
																											FlatIdent_89F12 = 1;
																											break;
																										end
																									end
																								end
																								if (FlatIdent_89F12 == 1) then
																									FlatIdent_62BF = 1;
																									break;
																								end
																							end
																							break;
																						end
																					end
																				end
																				if (FlatIdent_62BF == 1) then
																					E = nil;
																					F = nil;
																					FlatIdent_62BF = 2;
																				end
																				if (2 == FlatIdent_62BF) then
																					while true do
																						if (FlatIdent_35723 == 1) then
																							F = nil;
																							while true do
																								if (FlatIdent_43A29 == 4) then
																									if (E == "-") then
																										BP.P = BP.P * 0.5;
																									end
																									break;
																								end
																								if (FlatIdent_43A29 == 3) then
																									local FlatIdent_33267 = 0;
																									local FlatIdent_63F18;
																									local FlatIdent_866E7;
																									local FlatIdent_2D31E;
																									while true do
																										if (FlatIdent_33267 == 1) then
																											FlatIdent_2D31E = nil;
																											while true do
																												if (FlatIdent_63F18 == 1) then
																													while true do
																														if (FlatIdent_866E7 == 0) then
																															FlatIdent_2D31E = 0;
																															while true do
																																if (FlatIdent_2D31E == 0) then
																																	local FlatIdent_866C1 = 0;
																																	local FlatIdent_4BE36;
																																	local FlatIdent_1EC47;
																																	while true do
																																		if (1 == FlatIdent_866C1) then
																																			while true do
																																				if (FlatIdent_4BE36 == 0) then
																																					FlatIdent_1EC47 = 0;
																																					while true do
																																						if (FlatIdent_1EC47 == 1) then
																																							FlatIdent_2D31E = 1;
																																							break;
																																						end
																																						if (FlatIdent_1EC47 == 0) then
																																							local FlatIdent_182FF = 0;
																																							while true do
																																								if (FlatIdent_182FF == 0) then
																																									if (E == "y") then
																																										if (dist ~= 200) then
																																											dist = 200;
																																										end
																																									end
																																									if (E == "=") then
																																										BP.P = BP.P * 1.5;
																																									end
																																									FlatIdent_182FF = 1;
																																								end
																																								if (FlatIdent_182FF == 1) then
																																									FlatIdent_1EC47 = 1;
																																									break;
																																								end
																																							end
																																						end
																																					end
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																		if (FlatIdent_866C1 == 0) then
																																			FlatIdent_4BE36 = 0;
																																			FlatIdent_1EC47 = nil;
																																			FlatIdent_866C1 = 1;
																																		end
																																	end
																																end
																																if (1 == FlatIdent_2D31E) then
																																	FlatIdent_43A29 = 4;
																																	break;
																																end
																															end
																															break;
																														end
																													end
																													break;
																												end
																												if (FlatIdent_63F18 == 0) then
																													local FlatIdent_2E8F9 = 0;
																													while true do
																														if (FlatIdent_2E8F9 == 1) then
																															FlatIdent_63F18 = 1;
																															break;
																														end
																														if (FlatIdent_2E8F9 == 0) then
																															FlatIdent_866E7 = 0;
																															FlatIdent_2D31E = nil;
																															FlatIdent_2E8F9 = 1;
																														end
																													end
																												end
																											end
																											break;
																										end
																										if (FlatIdent_33267 == 0) then
																											FlatIdent_63F18 = 0;
																											FlatIdent_866E7 = nil;
																											FlatIdent_33267 = 1;
																										end
																									end
																								end
																								if (FlatIdent_43A29 == 1) then
																									local FlatIdent_34929 = 0;
																									while true do
																										if (FlatIdent_34929 == 0) then
																											if (E == "q") then
																												if (dist >= 5) then
																													dist = dist - 10;
																												end
																											end
																											if (E == "r") then
																												local FlatIdent_3D71B = 0;
																												local FlatIdent_4671E;
																												local FlatIdent_BEDB;
																												while true do
																													if (FlatIdent_3D71B == 1) then
																														while true do
																															if (FlatIdent_4671E == 0) then
																																FlatIdent_BEDB = 0;
																																while true do
																																	if (FlatIdent_BEDB == 3) then
																																		object.Orientation = Vector3.new(0, 0, 0);
																																		break;
																																	end
																																	if (FlatIdent_BEDB == 0) then
																																		local FlatIdent_8DB78 = 0;
																																		local FlatIdent_705F9;
																																		local FlatIdent_20CC5;
																																		while true do
																																			if (FlatIdent_8DB78 == 0) then
																																				FlatIdent_705F9 = 0;
																																				FlatIdent_20CC5 = nil;
																																				FlatIdent_8DB78 = 1;
																																			end
																																			if (FlatIdent_8DB78 == 1) then
																																				while true do
																																					if (FlatIdent_705F9 == 0) then
																																						FlatIdent_20CC5 = 0;
																																						while true do
																																							if (FlatIdent_20CC5 == 1) then
																																								local FlatIdent_27B82 = 0;
																																								local FlatIdent_11476;
																																								while true do
																																									if (FlatIdent_27B82 == 0) then
																																										FlatIdent_11476 = 0;
																																										while true do
																																											if (FlatIdent_11476 == 1) then
																																												FlatIdent_20CC5 = 2;
																																												break;
																																											end
																																											if (FlatIdent_11476 == 0) then
																																												BG = Instance.new("BodyGyro");
																																												BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge);
																																												FlatIdent_11476 = 1;
																																											end
																																										end
																																										break;
																																									end
																																								end
																																							end
																																							if (FlatIdent_20CC5 == 0) then
																																								local FlatIdent_51CDD = 0;
																																								while true do
																																									if (1 == FlatIdent_51CDD) then
																																										FlatIdent_20CC5 = 1;
																																										break;
																																									end
																																									if (0 == FlatIdent_51CDD) then
																																										if (object == nil) then
																																											return;
																																										end
																																										for G, H in pairs(object:children()) do
																																											if (H.className == "BodyGyro") then
																																												return nil;
																																											end
																																										end
																																										FlatIdent_51CDD = 1;
																																									end
																																								end
																																							end
																																							if (FlatIdent_20CC5 == 2) then
																																								FlatIdent_BEDB = 1;
																																								break;
																																							end
																																						end
																																						break;
																																					end
																																				end
																																				break;
																																			end
																																		end
																																	end
																																	if (FlatIdent_BEDB == 2) then
																																		local FlatIdent_8DA48 = 0;
																																		local FlatIdent_33933;
																																		local FlatIdent_50A60;
																																		while true do
																																			if (FlatIdent_8DA48 == 1) then
																																				while true do
																																					if (FlatIdent_33933 == 0) then
																																						FlatIdent_50A60 = 0;
																																						while true do
																																							if (FlatIdent_50A60 == 1) then
																																								local FlatIdent_67ECA = 0;
																																								while true do
																																									if (FlatIdent_67ECA == 1) then
																																										FlatIdent_50A60 = 2;
																																										break;
																																									end
																																									if (FlatIdent_67ECA == 0) then
																																										object.Velocity = Vector3.new(0, 0, 0);
																																										object.RotVelocity = Vector3.new(0, 0, 0);
																																										FlatIdent_67ECA = 1;
																																									end
																																								end
																																							end
																																							if (2 == FlatIdent_50A60) then
																																								FlatIdent_BEDB = 3;
																																								break;
																																							end
																																							if (FlatIdent_50A60 == 0) then
																																								local FlatIdent_76656 = 0;
																																								local FlatIdent_2F4FC;
																																								while true do
																																									if (0 == FlatIdent_76656) then
																																										FlatIdent_2F4FC = 0;
																																										while true do
																																											if (FlatIdent_2F4FC == 1) then
																																												FlatIdent_50A60 = 1;
																																												break;
																																											end
																																											if (FlatIdent_2F4FC == 0) then
																																												local FlatIdent_63620 = 0;
																																												while true do
																																													if (FlatIdent_63620 == 0) then
																																														if (object == nil) then
																																															return;
																																														end
																																														for G, H in pairs(object:children()) do
																																															if (H.className == "BodyGyro") then
																																																H.Parent = nil;
																																															end
																																														end
																																														FlatIdent_63620 = 1;
																																													end
																																													if (FlatIdent_63620 == 1) then
																																														FlatIdent_2F4FC = 1;
																																														break;
																																													end
																																												end
																																											end
																																										end
																																										break;
																																									end
																																								end
																																							end
																																						end
																																						break;
																																					end
																																				end
																																				break;
																																			end
																																			if (FlatIdent_8DA48 == 0) then
																																				FlatIdent_33933 = 0;
																																				FlatIdent_50A60 = nil;
																																				FlatIdent_8DA48 = 1;
																																			end
																																		end
																																	end
																																	if (FlatIdent_BEDB == 1) then
																																		local FlatIdent_3A80F = 0;
																																		local FlatIdent_9007E;
																																		while true do
																																			if (FlatIdent_3A80F == 0) then
																																				FlatIdent_9007E = 0;
																																				while true do
																																					if (FlatIdent_9007E == 2) then
																																						FlatIdent_BEDB = 2;
																																						break;
																																					end
																																					if (FlatIdent_9007E == 0) then
																																						local FlatIdent_1B91C = 0;
																																						while true do
																																							if (FlatIdent_1B91C == 0) then
																																								BG.cframe = CFrame.new(object.CFrame.p);
																																								BG.Parent = object;
																																								FlatIdent_1B91C = 1;
																																							end
																																							if (FlatIdent_1B91C == 1) then
																																								FlatIdent_9007E = 1;
																																								break;
																																							end
																																						end
																																					end
																																					if (FlatIdent_9007E == 1) then
																																						repeat
																																							wait();
																																						until object.CFrame == CFrame.new(object.CFrame.p) 
																																						BG.Parent = nil;
																																						FlatIdent_9007E = 2;
																																					end
																																				end
																																				break;
																																			end
																																		end
																																	end
																																end
																																break;
																															end
																														end
																														break;
																													end
																													if (FlatIdent_3D71B == 0) then
																														FlatIdent_4671E = 0;
																														FlatIdent_BEDB = nil;
																														FlatIdent_3D71B = 1;
																													end
																												end
																											end
																											FlatIdent_34929 = 1;
																										end
																										if (FlatIdent_34929 == 1) then
																											FlatIdent_43A29 = 2;
																											break;
																										end
																									end
																								end
																								if (FlatIdent_43A29 == 2) then
																									local FlatIdent_61D62 = 0;
																									local FlatIdent_23420;
																									while true do
																										if (FlatIdent_61D62 == 0) then
																											FlatIdent_23420 = 0;
																											while true do
																												if (FlatIdent_23420 == 0) then
																													local FlatIdent_243CE = 0;
																													local FlatIdent_3AD3C;
																													while true do
																														if (FlatIdent_243CE == 0) then
																															FlatIdent_3AD3C = 0;
																															while true do
																																if (0 == FlatIdent_3AD3C) then
																																	local FlatIdent_7875E = 0;
																																	while true do
																																		if (FlatIdent_7875E == 0) then
																																			if (E == "e") then
																																				dist = dist + 10;
																																			end
																																			if (E == "t") then
																																				if (dist ~= 10) then
																																					dist = 10;
																																				end
																																			end
																																			FlatIdent_7875E = 1;
																																		end
																																		if (FlatIdent_7875E == 1) then
																																			FlatIdent_3AD3C = 1;
																																			break;
																																		end
																																	end
																																end
																																if (1 == FlatIdent_3AD3C) then
																																	FlatIdent_23420 = 1;
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												if (FlatIdent_23420 == 1) then
																													FlatIdent_43A29 = 3;
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																								if (FlatIdent_43A29 == 0) then
																									local FlatIdent_82373 = 0;
																									local FlatIdent_38AF3;
																									while true do
																										if (0 == FlatIdent_82373) then
																											FlatIdent_38AF3 = 0;
																											while true do
																												if (FlatIdent_38AF3 == 0) then
																													local FlatIdent_3E61F = 0;
																													while true do
																														if (FlatIdent_3E61F == 1) then
																															FlatIdent_38AF3 = 1;
																															break;
																														end
																														if (FlatIdent_3E61F == 0) then
																															E = E:lower();
																															F = false;
																															FlatIdent_3E61F = 1;
																														end
																													end
																												end
																												if (FlatIdent_38AF3 == 1) then
																													FlatIdent_43A29 = 1;
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																							end
																							break;
																						end
																						if (FlatIdent_35723 == 0) then
																							local FlatIdent_41929 = 0;
																							local FlatIdent_5FE0E;
																							while true do
																								if (FlatIdent_41929 == 0) then
																									FlatIdent_5FE0E = 0;
																									while true do
																										if (FlatIdent_5FE0E == 1) then
																											FlatIdent_35723 = 1;
																											break;
																										end
																										if (FlatIdent_5FE0E == 0) then
																											local FlatIdent_1C9EB = 0;
																											while true do
																												if (FlatIdent_1C9EB == 1) then
																													FlatIdent_5FE0E = 1;
																													break;
																												end
																												if (FlatIdent_1C9EB == 0) then
																													FlatIdent_43A29 = 0;
																													E = nil;
																													FlatIdent_1C9EB = 1;
																												end
																											end
																										end
																									end
																									break;
																								end
																							end
																						end
																					end
																					break;
																				end
																			end
																			break;
																		end
																		if (FlatIdent_499EC == 0) then
																			FlatIdent_62BF = 0;
																			FlatIdent_35723 = nil;
																			FlatIdent_499EC = 1;
																		end
																	end
																end;
																onEquipped = function(B)
																	local FlatIdent_37823 = 0;
																	local FlatIdent_68908;
																	local I;
																	while true do
																		if (FlatIdent_37823 == 0) then
																			FlatIdent_68908 = 0;
																			I = nil;
																			FlatIdent_37823 = 1;
																		end
																		if (FlatIdent_37823 == 1) then
																			while true do
																				if (FlatIdent_68908 == 3) then
																					B.KeyDown:connect(function(E)
																						onKeyDown(E, B);
																					end);
																					B.Icon = "rbxasset://textures\\GunCursor.png";
																					break;
																				end
																				if (FlatIdent_68908 == 2) then
																					local FlatIdent_27717 = 0;
																					local FlatIdent_4CFED;
																					while true do
																						if (FlatIdent_27717 == 0) then
																							FlatIdent_4CFED = 0;
																							while true do
																								if (1 == FlatIdent_4CFED) then
																									FlatIdent_68908 = 3;
																									break;
																								end
																								if (0 == FlatIdent_4CFED) then
																									local FlatIdent_C23C = 0;
																									local FlatIdent_797DC;
																									while true do
																										if (FlatIdent_C23C == 0) then
																											FlatIdent_797DC = 0;
																											while true do
																												if (FlatIdent_797DC == 0) then
																													local FlatIdent_148F9 = 0;
																													while true do
																														if (FlatIdent_148F9 == 0) then
																															B.Button1Down:connect(function()
																																onButton1Down(B);
																															end);
																															B.Button1Up:connect(function()
																																mousedown = false;
																															end);
																															FlatIdent_148F9 = 1;
																														end
																														if (FlatIdent_148F9 == 1) then
																															FlatIdent_797DC = 1;
																															break;
																														end
																													end
																												end
																												if (FlatIdent_797DC == 1) then
																													FlatIdent_4CFED = 1;
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																							end
																							break;
																						end
																					end
																				end
																				if (FlatIdent_68908 == 0) then
																					local FlatIdent_5E7EA = 0;
																					local FlatIdent_254C4;
																					local FlatIdent_51E89;
																					while true do
																						if (FlatIdent_5E7EA == 1) then
																							while true do
																								if (FlatIdent_254C4 == 0) then
																									FlatIdent_51E89 = 0;
																									while true do
																										if (FlatIdent_51E89 == 0) then
																											local FlatIdent_4FBAF = 0;
																											while true do
																												if (FlatIdent_4FBAF == 1) then
																													FlatIdent_51E89 = 1;
																													break;
																												end
																												if (FlatIdent_4FBAF == 0) then
																													keymouse = B;
																													I = tool.Parent;
																													FlatIdent_4FBAF = 1;
																												end
																											end
																										end
																										if (FlatIdent_51E89 == 1) then
																											FlatIdent_68908 = 1;
																											break;
																										end
																									end
																									break;
																								end
																							end
																							break;
																						end
																						if (FlatIdent_5E7EA == 0) then
																							FlatIdent_254C4 = 0;
																							FlatIdent_51E89 = nil;
																							FlatIdent_5E7EA = 1;
																						end
																					end
																				end
																				if (FlatIdent_68908 == 1) then
																					local FlatIdent_2E03E = 0;
																					local FlatIdent_4FDD3;
																					local FlatIdent_45DC1;
																					while true do
																						if (FlatIdent_2E03E == 0) then
																							FlatIdent_4FDD3 = 0;
																							FlatIdent_45DC1 = nil;
																							FlatIdent_2E03E = 1;
																						end
																						if (FlatIdent_2E03E == 1) then
																							while true do
																								if (FlatIdent_4FDD3 == 0) then
																									FlatIdent_45DC1 = 0;
																									while true do
																										if (FlatIdent_45DC1 == 1) then
																											FlatIdent_68908 = 2;
																											break;
																										end
																										if (FlatIdent_45DC1 == 0) then
																											local FlatIdent_276C7 = 0;
																											local FlatIdent_244A1;
																											while true do
																												if (FlatIdent_276C7 == 0) then
																													FlatIdent_244A1 = 0;
																													while true do
																														if (0 == FlatIdent_244A1) then
																															local FlatIdent_59DAA = 0;
																															while true do
																																if (FlatIdent_59DAA == 1) then
																																	FlatIdent_244A1 = 1;
																																	break;
																																end
																																if (FlatIdent_59DAA == 0) then
																																	human = I.Humanoid;
																																	human.Changed:connect(function()
																																		if (human.Health == 0) then
																																			local FlatIdent_3D23 = 0;
																																			local FlatIdent_76099;
																																			local FlatIdent_35712;
																																			local FlatIdent_5FA62;
																																			while true do
																																				if (FlatIdent_3D23 == 1) then
																																					FlatIdent_5FA62 = nil;
																																					while true do
																																						if (FlatIdent_76099 == 0) then
																																							local FlatIdent_42F53 = 0;
																																							while true do
																																								if (FlatIdent_42F53 == 0) then
																																									FlatIdent_35712 = 0;
																																									FlatIdent_5FA62 = nil;
																																									FlatIdent_42F53 = 1;
																																								end
																																								if (1 == FlatIdent_42F53) then
																																									FlatIdent_76099 = 1;
																																									break;
																																								end
																																							end
																																						end
																																						if (FlatIdent_76099 == 1) then
																																							while true do
																																								if (FlatIdent_35712 == 0) then
																																									FlatIdent_5FA62 = 0;
																																									while true do
																																										if (FlatIdent_5FA62 == 1) then
																																											point:remove();
																																											tool:remove();
																																											break;
																																										end
																																										if (FlatIdent_5FA62 == 0) then
																																											local FlatIdent_1D95E = 0;
																																											while true do
																																												if (FlatIdent_1D95E == 1) then
																																													FlatIdent_5FA62 = 1;
																																													break;
																																												end
																																												if (FlatIdent_1D95E == 0) then
																																													local FlatIdent_2F447 = 0;
																																													while true do
																																														if (0 == FlatIdent_2F447) then
																																															mousedown = false;
																																															BP:remove();
																																															FlatIdent_2F447 = 1;
																																														end
																																														if (1 == FlatIdent_2F447) then
																																															FlatIdent_1D95E = 1;
																																															break;
																																														end
																																													end
																																												end
																																											end
																																										end
																																									end
																																									break;
																																								end
																																							end
																																							break;
																																						end
																																					end
																																					break;
																																				end
																																				if (FlatIdent_3D23 == 0) then
																																					FlatIdent_76099 = 0;
																																					FlatIdent_35712 = nil;
																																					FlatIdent_3D23 = 1;
																																				end
																																			end
																																		end
																																	end);
																																	FlatIdent_59DAA = 1;
																																end
																															end
																														end
																														if (FlatIdent_244A1 == 1) then
																															FlatIdent_45DC1 = 1;
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end
																									end
																									break;
																								end
																							end
																							break;
																						end
																					end
																				end
																			end
																			break;
																		end
																	end
																end;
																tool.Equipped:connect(onEquipped);
																break;
															end
														end
														break;
													end
													if (FlatIdent_66FE3 == 1) then
														local FlatIdent_72209 = 0;
														while true do
															if (FlatIdent_72209 == 1) then
																FlatIdent_66FE3 = 2;
																break;
															end
															if (FlatIdent_72209 == 0) then
																u = nil;
																v = nil;
																FlatIdent_72209 = 1;
															end
														end
													end
												end
												break;
											end
										end
									end));
									for J, H in pairs(h:GetChildren()) do
										local FlatIdent_700E2 = 0;
										local FlatIdent_7EDB;
										local FlatIdent_81928;
										while true do
											if (FlatIdent_700E2 == 1) then
												while true do
													if (FlatIdent_7EDB == 0) then
														FlatIdent_81928 = 0;
														while true do
															if (FlatIdent_81928 == 0) then
																H.Parent = game:GetService("Players").LocalPlayer.Backpack;
																pcall(function()
																	H:MakeJoints();
																end);
																break;
															end
														end
														break;
													end
												end
												break;
											end
											if (FlatIdent_700E2 == 0) then
												FlatIdent_7EDB = 0;
												FlatIdent_81928 = nil;
												FlatIdent_700E2 = 1;
											end
										end
									end
									h:Destroy();
									for J, H in pairs(g) do
										spawn(function()
											pcall(H);
										end);
									end
									break;
								end
								if (FlatIdent_24E56 == 6) then
									local FlatIdent_2A054 = 0;
									while true do
										if (FlatIdent_2A054 == 2) then
											l.Parent = i;
											FlatIdent_24E56 = 7;
											break;
										end
										if (1 == FlatIdent_2A054) then
											k.Disabled = true;
											l.Name = "MainScript";
											FlatIdent_2A054 = 2;
										end
										if (FlatIdent_2A054 == 0) then
											k.Parent = i;
											table.insert(g, a(k, function()
												local FlatIdent_4E525 = 0;
												local FlatIdent_240C7;
												local FlatIdent_9611D;
												local n;
												local o;
												local p;
												local q;
												local color;
												local r;
												local s;
												while true do
													if (FlatIdent_4E525 == 2) then
														local FlatIdent_8BF2C = 0;
														while true do
															if (1 == FlatIdent_8BF2C) then
																FlatIdent_4E525 = 3;
																break;
															end
															if (FlatIdent_8BF2C == 0) then
																p = nil;
																q = nil;
																FlatIdent_8BF2C = 1;
															end
														end
													end
													if (FlatIdent_4E525 == 0) then
														FlatIdent_240C7 = 0;
														FlatIdent_9611D = nil;
														FlatIdent_4E525 = 1;
													end
													if (FlatIdent_4E525 == 3) then
														local FlatIdent_55176 = 0;
														while true do
															if (FlatIdent_55176 == 1) then
																FlatIdent_4E525 = 4;
																break;
															end
															if (FlatIdent_55176 == 0) then
																color = nil;
																r = nil;
																FlatIdent_55176 = 1;
															end
														end
													end
													if (FlatIdent_4E525 == 4) then
														s = nil;
														while true do
															if (FlatIdent_240C7 == 0) then
																local FlatIdent_31064 = 0;
																local FlatIdent_10A8B;
																local FlatIdent_55726;
																while true do
																	if (FlatIdent_31064 == 0) then
																		FlatIdent_10A8B = 0;
																		FlatIdent_55726 = nil;
																		FlatIdent_31064 = 1;
																	end
																	if (FlatIdent_31064 == 1) then
																		while true do
																			if (FlatIdent_10A8B == 0) then
																				FlatIdent_55726 = 0;
																				while true do
																					if (FlatIdent_55726 == 0) then
																						local FlatIdent_43D83 = 0;
																						local FlatIdent_FC8F;
																						while true do
																							if (FlatIdent_43D83 == 0) then
																								FlatIdent_FC8F = 0;
																								while true do
																									if (FlatIdent_FC8F == 0) then
																										FlatIdent_9611D = 0;
																										n = nil;
																										FlatIdent_FC8F = 1;
																									end
																									if (FlatIdent_FC8F == 1) then
																										FlatIdent_55726 = 1;
																										break;
																									end
																								end
																								break;
																							end
																						end
																					end
																					if (FlatIdent_55726 == 1) then
																						FlatIdent_240C7 = 1;
																						break;
																					end
																				end
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if (FlatIdent_240C7 == 1) then
																local FlatIdent_26E0 = 0;
																local FlatIdent_5F14;
																local FlatIdent_3A2AA;
																while true do
																	if (FlatIdent_26E0 == 1) then
																		while true do
																			if (FlatIdent_5F14 == 0) then
																				FlatIdent_3A2AA = 0;
																				while true do
																					if (FlatIdent_3A2AA == 1) then
																						FlatIdent_240C7 = 2;
																						break;
																					end
																					if (FlatIdent_3A2AA == 0) then
																						local FlatIdent_FAB5 = 0;
																						while true do
																							if (0 == FlatIdent_FAB5) then
																								local FlatIdent_59949 = 0;
																								while true do
																									if (FlatIdent_59949 == 0) then
																										o = nil;
																										p = nil;
																										FlatIdent_59949 = 1;
																									end
																									if (1 == FlatIdent_59949) then
																										FlatIdent_FAB5 = 1;
																										break;
																									end
																								end
																							end
																							if (FlatIdent_FAB5 == 1) then
																								FlatIdent_3A2AA = 1;
																								break;
																							end
																						end
																					end
																				end
																				break;
																			end
																		end
																		break;
																	end
																	if (FlatIdent_26E0 == 0) then
																		FlatIdent_5F14 = 0;
																		FlatIdent_3A2AA = nil;
																		FlatIdent_26E0 = 1;
																	end
																end
															end
															if (FlatIdent_240C7 == 3) then
																local FlatIdent_43293 = 0;
																local FlatIdent_123EF;
																while true do
																	if (FlatIdent_43293 == 0) then
																		FlatIdent_123EF = 0;
																		while true do
																			if (0 == FlatIdent_123EF) then
																				local FlatIdent_1436C = 0;
																				while true do
																					if (FlatIdent_1436C == 0) then
																						r = nil;
																						s = nil;
																						FlatIdent_1436C = 1;
																					end
																					if (FlatIdent_1436C == 1) then
																						FlatIdent_123EF = 1;
																						break;
																					end
																				end
																			end
																			if (FlatIdent_123EF == 1) then
																				FlatIdent_240C7 = 4;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if (2 == FlatIdent_240C7) then
																local FlatIdent_19799 = 0;
																local FlatIdent_372A;
																while true do
																	if (FlatIdent_19799 == 0) then
																		FlatIdent_372A = 0;
																		while true do
																			if (FlatIdent_372A == 0) then
																				local FlatIdent_A478 = 0;
																				while true do
																					if (FlatIdent_A478 == 1) then
																						FlatIdent_372A = 1;
																						break;
																					end
																					if (0 == FlatIdent_A478) then
																						local FlatIdent_65724 = 0;
																						while true do
																							if (FlatIdent_65724 == 0) then
																								q = nil;
																								color = nil;
																								FlatIdent_65724 = 1;
																							end
																							if (FlatIdent_65724 == 1) then
																								FlatIdent_A478 = 1;
																								break;
																							end
																						end
																					end
																				end
																			end
																			if (FlatIdent_372A == 1) then
																				FlatIdent_240C7 = 3;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if (FlatIdent_240C7 == 4) then
																while true do
																	if (FlatIdent_9611D == 2) then
																		local FlatIdent_909AE = 0;
																		local FlatIdent_2AD12;
																		while true do
																			if (0 == FlatIdent_909AE) then
																				FlatIdent_2AD12 = 0;
																				while true do
																					if (FlatIdent_2AD12 == 1) then
																						r.BottomSurface = 0;
																						FlatIdent_9611D = 3;
																						break;
																					end
																					if (0 == FlatIdent_2AD12) then
																						local FlatIdent_43931 = 0;
																						while true do
																							if (FlatIdent_43931 == 0) then
																								r = Instance.new("Part");
																								r.TopSurface = 0;
																								FlatIdent_43931 = 1;
																							end
																							if (FlatIdent_43931 == 1) then
																								FlatIdent_2AD12 = 1;
																								break;
																							end
																						end
																					end
																				end
																				break;
																			end
																		end
																	end
																	if (FlatIdent_9611D == 5) then
																		local FlatIdent_7845F = 0;
																		local FlatIdent_7396A;
																		local FlatIdent_85979;
																		local FlatIdent_50823;
																		while true do
																			if (FlatIdent_7845F == 1) then
																				FlatIdent_50823 = nil;
																				while true do
																					if (FlatIdent_7396A == 1) then
																						while true do
																							if (FlatIdent_85979 == 0) then
																								FlatIdent_50823 = 0;
																								while true do
																									if (FlatIdent_50823 == 1) then
																										s.Parent = r;
																										FlatIdent_9611D = 6;
																										break;
																									end
																									if (0 == FlatIdent_50823) then
																										local FlatIdent_87EAE = 0;
																										local FlatIdent_855B4;
																										while true do
																											if (FlatIdent_87EAE == 0) then
																												FlatIdent_855B4 = 0;
																												while true do
																													if (FlatIdent_855B4 == 1) then
																														FlatIdent_50823 = 1;
																														break;
																													end
																													if (FlatIdent_855B4 == 0) then
																														local FlatIdent_276A6 = 0;
																														while true do
																															if (FlatIdent_276A6 == 1) then
																																FlatIdent_855B4 = 1;
																																break;
																															end
																															if (FlatIdent_276A6 == 0) then
																																r.Size = Vector3.new(1, 1, 1);
																																s = Instance.new("BlockMesh");
																																FlatIdent_276A6 = 1;
																															end
																														end
																													end
																												end
																												break;
																											end
																										end
																									end
																								end
																								break;
																							end
																						end
																						break;
																					end
																					if (FlatIdent_7396A == 0) then
																						local FlatIdent_67B17 = 0;
																						while true do
																							if (FlatIdent_67B17 == 1) then
																								FlatIdent_7396A = 1;
																								break;
																							end
																							if (FlatIdent_67B17 == 0) then
																								FlatIdent_85979 = 0;
																								FlatIdent_50823 = nil;
																								FlatIdent_67B17 = 1;
																							end
																						end
																					end
																				end
																				break;
																			end
																			if (FlatIdent_7845F == 0) then
																				FlatIdent_7396A = 0;
																				FlatIdent_85979 = nil;
																				FlatIdent_7845F = 1;
																			end
																		end
																	end
																	if (FlatIdent_9611D == 1) then
																		local FlatIdent_65FF9 = 0;
																		local FlatIdent_6CE72;
																		local FlatIdent_8B6BA;
																		while true do
																			if (FlatIdent_65FF9 == 1) then
																				while true do
																					if (FlatIdent_6CE72 == 0) then
																						FlatIdent_8B6BA = 0;
																						while true do
																							if (FlatIdent_8B6BA == 0) then
																								local FlatIdent_8EE3D = 0;
																								local FlatIdent_6AF1C;
																								while true do
																									if (FlatIdent_8EE3D == 0) then
																										FlatIdent_6AF1C = 0;
																										while true do
																											if (FlatIdent_6AF1C == 1) then
																												FlatIdent_8B6BA = 1;
																												break;
																											end
																											if (FlatIdent_6AF1C == 0) then
																												local FlatIdent_1D750 = 0;
																												while true do
																													if (FlatIdent_1D750 == 0) then
																														p = script.Part2.Value;
																														q = script.Par.Value;
																														FlatIdent_1D750 = 1;
																													end
																													if (FlatIdent_1D750 == 1) then
																														FlatIdent_6AF1C = 1;
																														break;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																							end
																							if (FlatIdent_8B6BA == 1) then
																								color = script.Color;
																								FlatIdent_9611D = 2;
																								break;
																							end
																						end
																						break;
																					end
																				end
																				break;
																			end
																			if (FlatIdent_65FF9 == 0) then
																				FlatIdent_6CE72 = 0;
																				FlatIdent_8B6BA = nil;
																				FlatIdent_65FF9 = 1;
																			end
																		end
																	end
																	if (FlatIdent_9611D == 3) then
																		local FlatIdent_59D52 = 0;
																		local FlatIdent_4A410;
																		while true do
																			if (FlatIdent_59D52 == 0) then
																				FlatIdent_4A410 = 0;
																				while true do
																					if (1 == FlatIdent_4A410) then
																						r.Locked = true;
																						FlatIdent_9611D = 4;
																						break;
																					end
																					if (FlatIdent_4A410 == 0) then
																						r.Reflectance = 0.5;
																						r.Name = "Laser";
																						FlatIdent_4A410 = 1;
																					end
																				end
																				break;
																			end
																		end
																	end
																	if (FlatIdent_9611D == 0) then
																		local FlatIdent_4BFBA = 0;
																		local FlatIdent_8FCA3;
																		local FlatIdent_20EC6;
																		while true do
																			if (FlatIdent_4BFBA == 1) then
																				while true do
																					if (FlatIdent_8FCA3 == 0) then
																						FlatIdent_20EC6 = 0;
																						while true do
																							if (1 == FlatIdent_20EC6) then
																								o = script.Part1.Value;
																								FlatIdent_9611D = 1;
																								break;
																							end
																							if (0 == FlatIdent_20EC6) then
																								local FlatIdent_41CEC = 0;
																								local FlatIdent_51F11;
																								while true do
																									if (0 == FlatIdent_41CEC) then
																										FlatIdent_51F11 = 0;
																										while true do
																											if (FlatIdent_51F11 == 0) then
																												local FlatIdent_494F8 = 0;
																												while true do
																													if (FlatIdent_494F8 == 1) then
																														FlatIdent_51F11 = 1;
																														break;
																													end
																													if (FlatIdent_494F8 == 0) then
																														wait();
																														n = script.Part2;
																														FlatIdent_494F8 = 1;
																													end
																												end
																											end
																											if (FlatIdent_51F11 == 1) then
																												FlatIdent_20EC6 = 1;
																												break;
																											end
																										end
																										break;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																				break;
																			end
																			if (FlatIdent_4BFBA == 0) then
																				FlatIdent_8FCA3 = 0;
																				FlatIdent_20EC6 = nil;
																				FlatIdent_4BFBA = 1;
																			end
																		end
																	end
																	if (FlatIdent_9611D == 6) then
																		while true do
																			if (n.Value == nil) then
																				break;
																			end
																			if ((o == nil) or (p == nil) or (q == nil)) then
																				break;
																			end
																			if ((o.Parent == nil) or (p.Parent == nil)) then
																				break;
																			end
																			if (q.Parent == nil) then
																				break;
																			end
																			local t = CFrame.new(o.Position, p.Position);
																			local dist = (o.Position - p.Position).magnitude;
																			r.Parent = q;
																			r.BrickColor = color.Value.BrickColor;
																			r.Reflectance = color.Value.Reflectance;
																			r.Transparency = color.Value.Transparency;
																			r.CFrame = CFrame.new(o.Position + ((t.lookVector * dist) / 2));
																			r.CFrame = CFrame.new(r.Position, p.Position);
																			s.Scale = Vector3.new(0.25, 0.25, dist);
																			wait();
																		end
																		r:remove();
																		script:remove();
																		break;
																	end
																	if (FlatIdent_9611D == 4) then
																		local FlatIdent_98DBC = 0;
																		local FlatIdent_41E60;
																		while true do
																			if (FlatIdent_98DBC == 0) then
																				FlatIdent_41E60 = 0;
																				while true do
																					if (FlatIdent_41E60 == 0) then
																						local FlatIdent_9823E = 0;
																						while true do
																							if (0 == FlatIdent_9823E) then
																								r.CanCollide = false;
																								r.Anchored = true;
																								FlatIdent_9823E = 1;
																							end
																							if (1 == FlatIdent_9823E) then
																								FlatIdent_41E60 = 1;
																								break;
																							end
																						end
																					end
																					if (FlatIdent_41E60 == 1) then
																						r.formFactor = 0;
																						FlatIdent_9611D = 5;
																						break;
																					end
																				end
																				break;
																			end
																		end
																	end
																end
																break;
															end
														end
														break;
													end
													if (FlatIdent_4E525 == 1) then
														n = nil;
														o = nil;
														FlatIdent_4E525 = 2;
													end
												end
											end));
											FlatIdent_2A054 = 1;
										end
									end
								end
								if (FlatIdent_24E56 == 5) then
									local FlatIdent_29829 = 0;
									local FlatIdent_39EDE;
									local FlatIdent_91C49;
									while true do
										if (FlatIdent_29829 == 1) then
											while true do
												if (FlatIdent_39EDE == 0) then
													FlatIdent_91C49 = 0;
													while true do
														if (FlatIdent_91C49 == 0) then
															local FlatIdent_7BBBF = 0;
															local FlatIdent_60786;
															while true do
																if (FlatIdent_7BBBF == 0) then
																	FlatIdent_60786 = 0;
																	while true do
																		if (FlatIdent_60786 == 0) then
																			local FlatIdent_4A805 = 0;
																			while true do
																				if (FlatIdent_4A805 == 1) then
																					FlatIdent_60786 = 1;
																					break;
																				end
																				if (FlatIdent_4A805 == 0) then
																					j.BrickColor = BrickColor.new("Really black");
																					j.Material = Enum.Material.Metal;
																					FlatIdent_4A805 = 1;
																				end
																			end
																		end
																		if (1 == FlatIdent_60786) then
																			FlatIdent_91C49 = 1;
																			break;
																		end
																	end
																	break;
																end
															end
														end
														if (FlatIdent_91C49 == 1) then
															local FlatIdent_E945 = 0;
															local FlatIdent_923A4;
															while true do
																if (FlatIdent_E945 == 0) then
																	FlatIdent_923A4 = 0;
																	while true do
																		if (FlatIdent_923A4 == 0) then
																			local FlatIdent_2492A = 0;
																			while true do
																				if (FlatIdent_2492A == 1) then
																					FlatIdent_923A4 = 1;
																					break;
																				end
																				if (FlatIdent_2492A == 0) then
																					j.TopSurface = Enum.SurfaceType.Smooth;
																					j.brickColor = BrickColor.new("Really black");
																					FlatIdent_2492A = 1;
																				end
																			end
																		end
																		if (FlatIdent_923A4 == 1) then
																			FlatIdent_91C49 = 2;
																			break;
																		end
																	end
																	break;
																end
															end
														end
														if (FlatIdent_91C49 == 2) then
															k.Name = "LineConnect";
															FlatIdent_24E56 = 6;
															break;
														end
													end
													break;
												end
											end
											break;
										end
										if (0 == FlatIdent_29829) then
											FlatIdent_39EDE = 0;
											FlatIdent_91C49 = nil;
											FlatIdent_29829 = 1;
										end
									end
								end
								if (FlatIdent_24E56 == 3) then
									local FlatIdent_8C5B0 = 0;
									while true do
										if (FlatIdent_8C5B0 == 0) then
											local FlatIdent_AF68 = 0;
											while true do
												if (0 == FlatIdent_AF68) then
													j.Name = "Handle";
													j.Parent = i;
													FlatIdent_AF68 = 1;
												end
												if (FlatIdent_AF68 == 1) then
													FlatIdent_8C5B0 = 1;
													break;
												end
											end
										end
										if (FlatIdent_8C5B0 == 2) then
											j.Position = Vector3.new(-17.2635937, 15.4915619, 46);
											FlatIdent_24E56 = 4;
											break;
										end
										if (FlatIdent_8C5B0 == 1) then
											local FlatIdent_90B87 = 0;
											local FlatIdent_6A20;
											while true do
												if (FlatIdent_90B87 == 0) then
													FlatIdent_6A20 = 0;
													while true do
														if (FlatIdent_6A20 == 1) then
															FlatIdent_8C5B0 = 2;
															break;
														end
														if (FlatIdent_6A20 == 0) then
															j.CFrame = CFrame.new(-17.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1);
															j.Orientation = Vector3.new(0, 180, 90);
															FlatIdent_6A20 = 1;
														end
													end
													break;
												end
											end
										end
									end
								end
								if (FlatIdent_24E56 == 4) then
									local FlatIdent_635D3 = 0;
									local FlatIdent_31BAC;
									while true do
										if (FlatIdent_635D3 == 0) then
											FlatIdent_31BAC = 0;
											while true do
												if (FlatIdent_31BAC == 2) then
													j.BottomSurface = Enum.SurfaceType.Weld;
													FlatIdent_24E56 = 5;
													break;
												end
												if (FlatIdent_31BAC == 1) then
													local FlatIdent_7467C = 0;
													while true do
														if (FlatIdent_7467C == 0) then
															j.Transparency = 1;
															j.Size = Vector3.new(1, 1.20000005, 1);
															FlatIdent_7467C = 1;
														end
														if (FlatIdent_7467C == 1) then
															FlatIdent_31BAC = 2;
															break;
														end
													end
												end
												if (FlatIdent_31BAC == 0) then
													local FlatIdent_6A2D = 0;
													while true do
														if (0 == FlatIdent_6A2D) then
															j.Rotation = Vector3.new(-180, 0, -90);
															j.Color = Color3.new(0.0666667, 0.0666667, 0.0666667);
															FlatIdent_6A2D = 1;
														end
														if (FlatIdent_6A2D == 1) then
															FlatIdent_31BAC = 1;
															break;
														end
													end
												end
											end
											break;
										end
									end
								end
								if (FlatIdent_24E56 == 1) then
									local FlatIdent_8BB32 = 0;
									while true do
										if (0 == FlatIdent_8BB32) then
											local FlatIdent_7037E = 0;
											while true do
												if (0 == FlatIdent_7037E) then
													j = Instance.new("Part");
													k = Instance.new("Script");
													FlatIdent_7037E = 1;
												end
												if (FlatIdent_7037E == 1) then
													FlatIdent_8BB32 = 1;
													break;
												end
											end
										end
										if (1 == FlatIdent_8BB32) then
											local FlatIdent_97348 = 0;
											while true do
												if (FlatIdent_97348 == 0) then
													local FlatIdent_6708A = 0;
													local FlatIdent_6A004;
													while true do
														if (FlatIdent_6708A == 0) then
															FlatIdent_6A004 = 0;
															while true do
																if (FlatIdent_6A004 == 1) then
																	FlatIdent_97348 = 1;
																	break;
																end
																if (FlatIdent_6A004 == 0) then
																	local FlatIdent_28965 = 0;
																	while true do
																		if (FlatIdent_28965 == 0) then
																			l = Instance.new("LocalScript");
																			m = sethiddenproperty or set_hidden_property;
																			FlatIdent_28965 = 1;
																		end
																		if (FlatIdent_28965 == 1) then
																			FlatIdent_6A004 = 1;
																			break;
																		end
																	end
																end
															end
															break;
														end
													end
												end
												if (FlatIdent_97348 == 1) then
													FlatIdent_8BB32 = 2;
													break;
												end
											end
										end
										if (FlatIdent_8BB32 == 2) then
											i.Name = "Telekinesis";
											FlatIdent_24E56 = 2;
											break;
										end
									end
								end
								if (2 == FlatIdent_24E56) then
									local FlatIdent_222E6 = 0;
									local FlatIdent_7798;
									local FlatIdent_577DE;
									while true do
										if (FlatIdent_222E6 == 0) then
											FlatIdent_7798 = 0;
											FlatIdent_577DE = nil;
											FlatIdent_222E6 = 1;
										end
										if (FlatIdent_222E6 == 1) then
											while true do
												if (FlatIdent_7798 == 0) then
													FlatIdent_577DE = 0;
													while true do
														if (FlatIdent_577DE == 0) then
															local FlatIdent_1295F = 0;
															local FlatIdent_7D419;
															while true do
																if (0 == FlatIdent_1295F) then
																	FlatIdent_7D419 = 0;
																	while true do
																		if (1 == FlatIdent_7D419) then
																			FlatIdent_577DE = 1;
																			break;
																		end
																		if (FlatIdent_7D419 == 0) then
																			local FlatIdent_7B391 = 0;
																			while true do
																				if (FlatIdent_7B391 == 1) then
																					FlatIdent_7D419 = 1;
																					break;
																				end
																				if (FlatIdent_7B391 == 0) then
																					i.Parent = h;
																					i.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0);
																					FlatIdent_7B391 = 1;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														end
														if (FlatIdent_577DE == 2) then
															i.GripUp = Vector3.new(1, 0, 0);
															FlatIdent_24E56 = 3;
															break;
														end
														if (FlatIdent_577DE == 1) then
															local FlatIdent_502A2 = 0;
															local FlatIdent_21938;
															while true do
																if (FlatIdent_502A2 == 0) then
																	FlatIdent_21938 = 0;
																	while true do
																		if (FlatIdent_21938 == 0) then
																			local FlatIdent_350CC = 0;
																			while true do
																				if (FlatIdent_350CC == 0) then
																					i.GripForward = Vector3.new("-0", -1, "-0");
																					i.GripRight = Vector3.new(0, 0, 1);
																					FlatIdent_350CC = 1;
																				end
																				if (FlatIdent_350CC == 1) then
																					FlatIdent_21938 = 1;
																					break;
																				end
																			end
																		end
																		if (FlatIdent_21938 == 1) then
																			FlatIdent_577DE = 2;
																			break;
																		end
																	end
																	break;
																end
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
							end
							break;
						end
						if (0 == FlatIdent_25AD7) then
							local FlatIdent_1B951 = 0;
							local FlatIdent_65F72;
							while true do
								if (FlatIdent_1B951 == 0) then
									FlatIdent_65F72 = 0;
									while true do
										if (FlatIdent_65F72 == 0) then
											local FlatIdent_42E98 = 0;
											local FlatIdent_70965;
											while true do
												if (FlatIdent_42E98 == 0) then
													FlatIdent_70965 = 0;
													while true do
														if (FlatIdent_70965 == 0) then
															local FlatIdent_4868C = 0;
															while true do
																if (FlatIdent_4868C == 0) then
																	FlatIdent_24E56 = 0;
																	a = nil;
																	FlatIdent_4868C = 1;
																end
																if (FlatIdent_4868C == 1) then
																	FlatIdent_70965 = 1;
																	break;
																end
															end
														end
														if (FlatIdent_70965 == 1) then
															FlatIdent_65F72 = 1;
															break;
														end
													end
													break;
												end
											end
										end
										if (FlatIdent_65F72 == 1) then
											FlatIdent_25AD7 = 1;
											break;
										end
									end
									break;
								end
							end
						end
						if (1 == FlatIdent_25AD7) then
							local FlatIdent_6C5C6 = 0;
							local FlatIdent_39B6E;
							while true do
								if (FlatIdent_6C5C6 == 0) then
									FlatIdent_39B6E = 0;
									while true do
										if (FlatIdent_39B6E == 1) then
											FlatIdent_25AD7 = 2;
											break;
										end
										if (FlatIdent_39B6E == 0) then
											g = nil;
											h = nil;
											FlatIdent_39B6E = 1;
										end
									end
									break;
								end
							end
						end
						if (FlatIdent_25AD7 == 3) then
							local FlatIdent_525C2 = 0;
							local FlatIdent_1D4B8;
							while true do
								if (FlatIdent_525C2 == 0) then
									FlatIdent_1D4B8 = 0;
									while true do
										if (FlatIdent_1D4B8 == 0) then
											local FlatIdent_63F85 = 0;
											while true do
												if (FlatIdent_63F85 == 0) then
													k = nil;
													l = nil;
													FlatIdent_63F85 = 1;
												end
												if (1 == FlatIdent_63F85) then
													FlatIdent_1D4B8 = 1;
													break;
												end
											end
										end
										if (FlatIdent_1D4B8 == 1) then
											FlatIdent_25AD7 = 4;
											break;
										end
									end
									break;
								end
							end
						end
						if (FlatIdent_25AD7 == 2) then
							local FlatIdent_91314 = 0;
							local FlatIdent_2A526;
							local FlatIdent_4C9C0;
							while true do
								if (FlatIdent_91314 == 0) then
									FlatIdent_2A526 = 0;
									FlatIdent_4C9C0 = nil;
									FlatIdent_91314 = 1;
								end
								if (FlatIdent_91314 == 1) then
									while true do
										if (FlatIdent_2A526 == 0) then
											FlatIdent_4C9C0 = 0;
											while true do
												if (1 == FlatIdent_4C9C0) then
													FlatIdent_25AD7 = 3;
													break;
												end
												if (FlatIdent_4C9C0 == 0) then
													local FlatIdent_7DA00 = 0;
													while true do
														if (FlatIdent_7DA00 == 1) then
															FlatIdent_4C9C0 = 1;
															break;
														end
														if (FlatIdent_7DA00 == 0) then
															i = nil;
															j = nil;
															FlatIdent_7DA00 = 1;
														end
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
					end
					break;
				end
				if (FlatIdent_5204D == 0) then
					local FlatIdent_96A65 = 0;
					while true do
						if (FlatIdent_96A65 == 0) then
							FlatIdent_25AD7 = 0;
							FlatIdent_24E56 = nil;
							FlatIdent_96A65 = 1;
						end
						if (FlatIdent_96A65 == 1) then
							a = nil;
							g = nil;
							FlatIdent_96A65 = 2;
						end
						if (FlatIdent_96A65 == 2) then
							FlatIdent_5204D = 1;
							break;
						end
					end
				end
				if (FlatIdent_5204D == 1) then
					local FlatIdent_6D1C5 = 0;
					local FlatIdent_1CDA6;
					while true do
						if (FlatIdent_6D1C5 == 0) then
							FlatIdent_1CDA6 = 0;
							while true do
								if (FlatIdent_1CDA6 == 1) then
									local FlatIdent_674D = 0;
									while true do
										if (FlatIdent_674D == 0) then
											j = nil;
											k = nil;
											FlatIdent_674D = 1;
										end
										if (1 == FlatIdent_674D) then
											FlatIdent_1CDA6 = 2;
											break;
										end
									end
								end
								if (FlatIdent_1CDA6 == 0) then
									local FlatIdent_CBE4 = 0;
									while true do
										if (FlatIdent_CBE4 == 1) then
											FlatIdent_1CDA6 = 1;
											break;
										end
										if (FlatIdent_CBE4 == 0) then
											h = nil;
											i = nil;
											FlatIdent_CBE4 = 1;
										end
									end
								end
								if (FlatIdent_1CDA6 == 2) then
									FlatIdent_5204D = 2;
									break;
								end
							end
							break;
						end
					end
				end
			end
			break;
		end
	end
end});
local Credits = Window:MakeTab({Name="Credits",Icon="rbxassetid://4483345998",PremiumOnly=false});
Credits:AddParagraph("Made by:", "Argetnar & Doku");
Credits:AddParagraph("Script on Redcliff City RP", "Version 1.5");
Credits:AddButton({Name="Discord Server copy",Callback=function()
	local FlatIdent_468DC = 0;
	local FlatIdent_542F;
	local FlatIdent_8F172;
	local FlatIdent_14AA4;
	while true do
		if (FlatIdent_468DC == 0) then
			FlatIdent_542F = 0;
			FlatIdent_8F172 = nil;
			FlatIdent_468DC = 1;
		end
		if (FlatIdent_468DC == 1) then
			FlatIdent_14AA4 = nil;
			while true do
				if (FlatIdent_542F == 1) then
					while true do
						if (FlatIdent_8F172 == 0) then
							FlatIdent_14AA4 = 0;
							while true do
								if (FlatIdent_14AA4 == 0) then
									setclipboard("https://discord.gg/9WGczwFcZx");
									OrionLib:MakeNotification({Name="Script",Content="Discord Link has been copy!",Image="rbxassetid://4483345998",Time=2});
									break;
								end
							end
							break;
						end
					end
					break;
				end
				if (FlatIdent_542F == 0) then
					local FlatIdent_8710E = 0;
					while true do
						if (FlatIdent_8710E == 0) then
							FlatIdent_8F172 = 0;
							FlatIdent_14AA4 = nil;
							FlatIdent_8710E = 1;
						end
						if (FlatIdent_8710E == 1) then
							FlatIdent_542F = 1;
							break;
						end
					end
				end
			end
			break;
		end
	end
end});
