local Players, Workspace, RunService, LocalPlayer, t3, t98, u365, v377, v406, v424, v425, v426, t175, t176, t180, t184, t185, t186, t190, t194, t199

do
	local u351
	local t4, v342, u343

	do
		local u130, u345
		local v5, UserInputService, t1, t2, u123, u124, v149, v151, v243

		do
			local u349, u369
			local VirtualUser

			do
				local ReplicatedStorage, vector3, v119, v152, v189, u191, u192, u193, u194, v203

				do
					local u177
					local t97, v160, v167, u214, u215, u216, u217, u219, u220, u221, u222, u223, u224, u225, u226, u227, u228

					do
						local u163
						local t5, t96

						do
							local t74

							do
								local t6

								do
									local eve_TextPoint = game:GetService("ReplicatedStorage").Service.TextPoint.Event.eve_TextPoint

									for i = 1, 3 do
										local _pcall = pcall
										local u4 = eve_TextPoint

										pcall(function()
											firesignal(u4.OnClientEvent, "Symbiote", nil, 5, nil)
										end)

										if i < 3 then
											task.wait(0.1)
										end
									end

									v5 = loadstring(
										game:HttpGet(
											"https://gist.githubusercontent.com/ssssssssss21/f2127829151a31beea020f5dd9211ad6/raw/39cabe77a3a30898f880ab55a48c9d7770d31a01/UI.lua"
										)
									)()
									Players = game:GetService("Players")
									ReplicatedStorage = game:GetService("ReplicatedStorage")
									Workspace = game:GetService("Workspace")
									RunService = game:GetService("RunService")
									UserInputService = game:GetService("UserInputService")
									VirtualUser = game:GetService("VirtualUser")
									LocalPlayer = Players.LocalPlayer
									t1 = {
										"New Demon",
										"Normal Demon",
										"Big Demon",
										"Meat Eater",
										"Killer",
										"Lurker",
										"Sakura Demon",
										"One Horn Demon",
										"Controlled Hunter",
										"Sister Demon",
										"HaHa Demon",
										"Headless Demon",
										"Caught Demon",
										"Caught Demon II",
										"Ticket Seller",
										"Muti Horn Demon",
										"Jack",
										"Evil Demon",
										"Horrible Demon",
										"Geisha",
										"Oiran",
										"Samurai",
										"Samurai Lord",
										"Cat Demon",
										"Peach Blossom Demon",
										"Fish Demon",
										"Horrible Fish Demon",
										"Happy Demon",
										"Sad Demon",
										"Black Wuchung",
										"White Wuchung",
										"Goldfish Demon",
										"Shark Demon",
										"Shadow Cat",
										"Shark Guard",
										"Fighting Demon",
										"Fighting Master",
										"Blade Demon",
										"Thunder Demon",
										"Junior Music Demon",
										"Biwa Demon",
										"Iron Golem",
										"Ice Golem",
										"ICE PHANTOM",
										"Crystal Child",
										"Horrible Snow Demon",
										"White Princess",
										"Ghost Samurai",
										"Wolf Samurai",
										"Blood Shadow ",
										"Palace Guard",
										"Greedy Demon",
										"Wronged Souls",
										"Snake Fang",
										"Snake Scales",
									}
									t2 = {
										"Multi Hand",
										"Swamp Demon",
										"Basketballer Girl",
										"Accelerator",
										"Drumming Demon",
										"Spider",
										"Tarantula",
										"Controller",
										"Dreamer",
										"Octopusr",
										"Pugilist",
										"Singer",
										"Blood Sickle",
										"Rock God",
										"Artist",
										"Hate Petian",
										"Sun(Robot)",
										"Night Guardian Wind",
										"Night Guardian Thunder",
										"Night Guardian Sound",
										"Night Guardian Bow",
										"Deserter",
										"Musician",
										"Ice God",
										"Bloodmoon Samurai",
										"Shadow of Moon",
										"Snake Demon",
										"Moon God",
										"Sea Beast",
									}
									t3 = {
										"Melee",
										"Ghost",
										"Gun",
										"Breath",
									}
									t4 = {
										"Lv5 Quest",
										"Lv15 Quest",
										"Lv20 Quest",
										"Lv25 Quest",
										"Lv35 Quest",
										"Lv45 Quest",
										"Lv55 Quest",
										"Lv60 Quest",
										"Lv75 Quest",
										"Lv90 Quest",
										"Lv105 Quest",
										"Lv120 Quest",
										"Lv130 Quest",
										"Lv155 Quest",
										"Lv175 Quest",
										"Lv190 Quest",
										"Lv210 Quest",
										"Lv220 Quest",
										"Lv230 Quest",
										"Lv240 Quest",
										"Lv250 Quest",
										"Lv275 Quest",
										"Lv300 Quest",
										"Lv325 Quest",
										"Lv350 Quest",
										"Lv375 Quest",
										"Lv400 Quest",
										"Lv425 Quest",
										"Lv450 Quest",
										"Lv475 Quest",
										"Lv525 Quest",
										"Lv550 Quest",
										"Lv575 Quest",
										"Lv625 Quest",
										"Lv650 Quest",
										"Lv675 Quest",
										"Lv700 Quest",
										"Lv725 Quest",
										"Lv750 Quest",
										"Lv775 Quest",
										"Lv800 Quest",
										"Lv850 Quest",
										"Lv875 Quest",
										"Lv900 Quest",
										"Lv925 Quest",
										"Lv950 Quest",
										"Lv975 Quest",
										"Lv1000 Quest",
										"Lv1100 Quest",
										"Lv1125 Quest",
										"Lv1150 Quest",
										"Lv1175 Quest",
										"Lv1200 Quest",
										"Lv1250 Quest",
										"Lv1275 Quest",
										"Lv1300 Quest",
										"Lv1325 Quest",
										"Lv1350 Quest",
										"Lv1375 Quest",
										"Lv1400 Quest",
										"Lv1425 Quest",
										"Lv1450 Quest",
										"Lv1475 Quest",
										"Lv1500 Quest",
										"Lv1525 Quest",
										"Lv1550 Quest",
										"Lv1575 Quest",
										"Lv1600 Quest",
										"Lv1625 Quest",
										"Lv1650 Quest",
										"Lv1675 Quest",
										"Lv1700 Quest",
										"Lv1750 Quest",
										"Lv1800 Quest",
										"Lv1850 Quest",
										"Lv1900 Quest",
										"Lv2000 Quest",
									}
									t5 = {}
									t6 = {
										mapNameKeyword = "Snow",
									}

									local t7 = {}
									local t8 = {
										name = "New Demon",
										level = 5,
									}
									local t9 = {
										name = "Normal Demon",
										level = 15,
									}

									t7[1] = t8
									t7[2] = t9
									t6.npcs = t7
								end

								local t10 = {
									mapNameKeyword = "Training Forest",
									npcs = {
										{
											name = "Big Demon",
											level = 20,
										},
									},
								}
								local t11 = {
									mapNameKeyword = "Main Town",
								}
								local t15

								do
									local t12 = {}
									local t13 = {
										name = "Meat Eater",
										level = 35,
									}
									local t14 = {
										name = "Killer",
										level = 45,
									}

									t12[1] = t13
									t12[2] = t14
									t11.npcs = t12
									t15 = {
										mapNameKeyword = "Sakura",
									}

									local t16 = {}
									local t17 = {
										name = "Lurker",
										level = 60,
									}
									local t18 = {
										name = "Sakura Demon",
										level = 75,
									}

									t16[1] = t17
									t16[2] = t18
									t15.npcs = t16
								end

								local t19 = {
									mapNameKeyword = "Deserted",
									npcs = {
										{
											name = "One Horn Demon",
											level = 120,
										},
									},
								}
								local t20 = {
									mapNameKeyword = "Spider",
								}
								local t26

								do
									local t21 = {}
									local t22 = {
										name = "Controlled Hunter",
										level = 155,
									}
									local t23 = {
										name = "Sister Demon",
										level = 175,
									}
									local t24 = {
										name = "HaHa Demon",
										level = 190,
									}
									local t25 = {
										name = "Headless Demon",
										level = 210,
									}

									t21[1] = t22
									t21[2] = t23
									t21[3] = t24
									t21[4] = t25
									t20.npcs = t21
									t26 = {
										mapNameKeyword = "Demon Hunter",
									}

									local t27 = {}
									local t28 = {
										name = "Caught Demon",
										level = 250,
									}
									local t29 = {
										name = "Caught Demon II",
										level = 275,
									}

									t27[1] = t28
									t27[2] = t29
									t26.npcs = t27
								end

								local t30 = {
									mapNameKeyword = "Train Stat",
								}
								local t35, t39

								do
									local t31 = {}
									local t32 = {
										name = "Ticket Seller",
										level = 300,
									}
									local t33 = {
										name = "Muti Horn Demon",
										level = 325,
									}
									local t34 = {
										name = "Jack",
										level = 350,
									}

									t31[1] = t32
									t31[2] = t33
									t31[3] = t34
									t30.npcs = t31
									t35 = {
										mapNameKeyword = "Butterfly",
									}

									local t36 = {}
									local t37 = {
										name = "Evil Demon",
										level = 450,
									}
									local t38 = {
										name = "Horrible Demon",
										level = 475,
									}

									t36[1] = t37
									t36[2] = t38
									t35.npcs = t36
									t39 = {
										mapNameKeyword = "Flower",
									}

									local t40 = {}
									local t41 = {
										name = "Geisha",
										level = 525,
									}
									local t42 = {
										name = "Oiran",
										level = 550,
									}
									local t43 = {
										name = "Samurai",
										level = 625,
									}
									local t44 = {
										name = "Samurai Lord",
										level = 650,
									}

									t40[1] = t41
									t40[2] = t42
									t40[3] = t43
									t40[4] = t44
									t39.npcs = t40
								end

								local t45 = {
									mapNameKeyword = "Shrine",
								}
								local t50, t56

								do
									local t46 = {}
									local t47 = {
										name = "Cat Demon",
										level = 700,
									}
									local t48 = {
										name = "Peach Blossom Demon",
										level = 725,
									}
									local t49 = {
										name = "Rabbit Demon",
										level = 750,
									}

									t46[1] = t47
									t46[2] = t48
									t46[3] = t49
									t45.npcs = t46
									t50 = {
										mapNameKeyword = "Blacksmith",
									}

									local t51 = {}
									local t52 = {
										name = "Fish Demon",
										level = 775,
									}
									local t53 = {
										name = "Horrible Fish Demon",
										level = 800,
									}
									local t54 = {
										name = "Happy Demon",
										level = 875,
									}
									local t55 = {
										name = "Sad Demon",
										level = 900,
									}

									t51[1] = t52
									t51[2] = t53
									t51[3] = t54
									t51[4] = t55
									t50.npcs = t51
									t56 = {
										mapNameKeyword = "Canyon",
									}

									local t57 = {}
									local t58 = {
										name = "Black Wuchung",
										level = 950,
									}
									local t59 = {
										name = "White Wuchung",
										level = 975,
									}

									t57[1] = t58
									t57[2] = t59
									t56.npcs = t57
								end

								local t60 = {
									mapNameKeyword = "Silvermoon Har",
								}
								local t61 = {}
								local t62 = {
									name = "Goldfish Demon",
									level = 1100,
								}
								local t63 = {
									name = "Shark Demon",
									level = 1125,
								}
								local t64 = {
									name = "Shadow Cat",
									level = 1150,
								}
								local t65 = {
									name = "Shark Guard",
									level = 1175,
								}

								t61[1] = t62
								t61[2] = t63
								t61[3] = t64
								t61[4] = t65
								t60.npcs = t61

								local t66 = {
									mapNameKeyword = "Mysterious",
								}
								local t67 = {}
								local t68 = {
									name = "Fighting Demon",
									level = 1200,
								}
								local t69 = {
									name = "Fighting Master",
									level = 1250,
								}

								t67[1] = t68
								t67[2] = t69
								t66.npcs = t67

								local t70 = {
									mapNameKeyword = "Thunder",
								}
								local t71 = {}
								local t72 = {
									name = "Blade Demon",
									level = 1275,
								}
								local t73 = {
									name = "Thunder Demon",
									level = 1300,
								}

								t71[1] = t72
								t71[2] = t73
								t70.npcs = t71
								t5[1] = t6
								t5[2] = t10
								t5[3] = t11
								t5[4] = t15
								t5[5] = t19
								t5[6] = t20
								t5[7] = t26
								t5[8] = t30
								t5[9] = t35
								t5[10] = t39
								t5[11] = t45
								t5[12] = t50
								t5[13] = t56
								t5[14] = t60
								t5[15] = t66
								t5[16] = t70
								t74 = {
									mapNameKeyword = "Music",
								}

								local t75 = {}
								local t76 = {
									name = "Junior Music Demon",
									level = 1350,
								}
								local t77 = {
									name = "Biwa Demon",
									level = 1375,
								}

								t75[1] = t76
								t75[2] = t77
								t74.npcs = t75
							end

							local t78 = {
								mapNameKeyword = "Ice Cas",
							}
							local t79 = {}
							local t80 = {
								name = "Iron Golem",
								level = 1425,
							}
							local t81 = {
								name = "Ice Golem",
								level = 1450,
							}
							local t82 = {
								name = "Horrible Snow Demon",
								level = 1500,
							}
							local t83 = {
								name = "White Princess",
								level = 1525,
							}

							t79[1] = t80
							t79[2] = t81
							t79[3] = t82
							t79[4] = t83
							t78.npcs = t79

							local t84 = {
								mapNameKeyword = "Lunar God",
							}
							local t85 = {}
							local t86 = {
								name = "Ghost Samurai",
								level = 1575,
							}
							local t87 = {
								name = "Wolf Samurai",
								level = 1600,
							}
							local t88 = {
								name = "Blood Shadow ",
								level = 1650,
							}
							local t89 = {
								name = "Palace Guard",
								level = 1675,
							}

							t85[1] = t86
							t85[2] = t87
							t85[3] = t88
							t85[4] = t89
							t84.npcs = t85

							local t90 = {
								mapNameKeyword = "Serpent",
							}
							local t91 = {}
							local t92 = {
								name = "Greedy Demon",
								level = 1750,
							}
							local t93 = {
								name = "Wronged Souls",
								level = 1800,
							}
							local t94 = {
								name = "Snake Fang",
								level = 1850,
							}
							local t95 = {
								name = "Snake Scales",
								level = 1900,
							}

							t91[1] = t92
							t91[2] = t93
							t91[3] = t94
							t91[4] = t95
							t90.npcs = t91
							t5[17] = t74
							t5[18] = t78
							t5[19] = t84
							t5[20] = t90
							t96 = {}
							t97 = {}

							for _, v in ipairs(t5) do
								for _, v2 in ipairs(v.npcs) do
									t96[v2.name] = v.mapNameKeyword
									t97[v2.name] = v2.level
								end
							end

							t98 = {
								AutoFarmEnabled = false,
								AutoFarmBossEnabled = false,
								AutoFarmLevelEnabled = false,
								TPBelowEnabled = false,
								FlyEnabled = false,
								NoClipEnabled = false,
								SelectedNPCs = {},
								SelectedBosses = {},
								CurrentTarget = nil,
								CurrentBossTarget = nil,
								DistanceBetweenNPC = 5,
								FlySpeed = 50,
								NoClipConnection = nil,
								FlyConnection = nil,
								FlyBodyVelocity = nil,
								FlyBodyGyro = nil,
								ServiceNPCESPEnabled = false,
								SecretTravelerESPEnabled = false,
								PlayerESPEnabled = false,
								PlayerESPObjects = {},
								ESPLinesEnabled = false,
								ESPLineObjects = {},
								OrbitEnabled = false,
								OrbitTarget = nil,
								OrbitSpeed = 1,
								OrbitDistance = 10,
								OrbitAngle = 0,
								OrbitConnection = nil,
								OrbitDropdownRef = nil,
								TPBehindOrbitEnabled = false,
								SpectateEnabled = false,
								SpectateTarget = nil,
								SpectateDropdownRef = nil,
								lastSpectatePlayerSet = {},
								LockCameraEnabled = false,
								LockCameraOnSelectedEnabled = false,
								LockCameraSelectedTarget = nil,
								LockCameraSelectedDropdownRef = nil,
								lastLockCameraPlayerSet = {},
								InfiniteJumpEnabled = false,
								InfiniteJumpConnection = nil,
								KillAuraEnabled = false,
								PlayerKillAuraEnabled = false,
								InfiniteStaminaEnabled = false,
								InfiniteStaminaOrigMax = nil,
								InfiniteStaminaOrigVal = nil,
								AutoFocusEnabled = false,
								AutoRealmEnabled = false,
								SelectedAutoQuest = nil,
								WalkSpeedEnabled = false,
								WalkSpeedSmoothing = 1,
								WalkSpeedConnection = nil,
								LaggyRunEnabled = false,
								LaggyRunDistance = 1,
								LaggyRunDelay = 1,
								LaggyRunConnection = nil,
								LaggyRunAccum = 0,
								CtrlClickTPEnabled = false,
								CtrlClickTPConnection = nil,
								ServiceNPCTPDropdownRef = nil,
								lastServiceNPCNames = {},
								FarmAutoEquipWeaponType = nil,
								PVPAutoEquipWeaponType = nil,
								RaidAutoEquipWeaponType = nil,
								ESPObjects = {},
								SecretTravelerESPObjects = {},
								AutoStatEnabled = false,
								SelectedAutoStats = {},
								AutoStatPoints = 1,
								AutoStatIndex = 1,
								farmLoopRunning = false,
								anchoredTargets = {},
								AutoFarmLevelCurrentNPCList = {},
								AutoFarmLevelCurrentLevel = nil,
								AutoCollectChestEnabled = false,
								autoCollectChestRunning = false,
								CraftAmount = 1,
								optimalNPCLevel = nil,
								optimalNPCLastPos = nil,
								optimalZoneWaitPos = nil,
								farmNPCWaitPos = nil,
								farmBossWaitPos = nil,
								farmNPCNoTargetTimer = 0,
								farmNPCTriedZone = false,
								farmNPCTriedGuide = false,
								farmBossNoTargetTimer = 0,
								farmBossTriedZone = false,
								farmBossTriedGuide = false,
								AutoAkazaRaidEnabled = false,
								AutoHantenguRaidEnabled = false,
								RaidTPBelowEnabled = false,
								RaidDistanceBetweenNPC = 5,
								AutoSerpentRaidEnabled = false,
								AutoSerpentRespawnEnabled = false,
								AutoRaceRaidEnabled = false,
								AutoStartRaceRaidEnabled = false,
								AutoSpawnMoonGodEnabled = false,
								AutoCollectPlaytimeEnabled = false,
								AutoRollDemonEnabled = false,
								AutoRollBreathEnabled = false,
								AutoStoreDemonBreathEnabled = false,
								AutoThunderIceRaidEnabled = false,
								AntiAFKEnabled = false,
								ESPLinesGui = nil,
							}
							vector3 = Vector3.new(-3182.57495, 1241.93835, -5254.56104)
							local u117 = LocalPlayer
							local u118 = ReplicatedStorage

							function v119(p1)
								if p1 then
									local Character = u117.Character
									local Backpack = u117:FindFirstChild("Backpack")

									if Character then
										if Backpack then
											for _, child in ipairs(Backpack:GetChildren()) do
												if child:IsA("Tool") then
													local _pcall = pcall
													local u683 = child
													local v684, v685 = pcall(function()
														return u683:GetAttribute("Type")
													end)

													if v684 and v685 == p1 then
														if child then
															local u687 = child

															pcall(function()
																u118.southRPG.ToolService.Event.eve_ChangeEquiped:FireServer(u687)
															end)
														end

														task.wait(0.2)

														return
													end
												end
											end
										end

										return
									end

									return
								end
							end

							u123 = t98
							u124 = LocalPlayer

							local u125 = LocalPlayer
							local u126 = t98
							local u127 = RunService
							local u128 = Workspace
							local u129 = UserInputService

							function u130()
								local Character = u125.Character

								if Character then
									local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										if u126.FlyBodyVelocity then
											u126.FlyBodyVelocity:Destroy()
										end

										if u126.FlyBodyGyro then
											u126.FlyBodyGyro:Destroy()
										end

										u126.FlyBodyVelocity = Instance.new("BodyVelocity")
										u126.FlyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
										u126.FlyBodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
										u126.FlyBodyVelocity.Parent = HumanoidRootPart
										u126.FlyBodyGyro = Instance.new("BodyGyro")
										u126.FlyBodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
										u126.FlyBodyGyro.P = 90000
										u126.FlyBodyGyro.Parent = HumanoidRootPart

										if u126.FlyConnection then
											u126.FlyConnection:Disconnect()
										end

										u126.FlyConnection = u127.Heartbeat:Connect(function()
											if u126.FlyEnabled then
												local Character2 = u125.Character

												if Character2 then
													if Character2:FindFirstChild("HumanoidRootPart") and u126.FlyBodyVelocity and u126.FlyBodyGyro then
														local CurrentCamera = u128.CurrentCamera
														local vector3_2 = Vector3.new(0, 0, 0)

														if u129:IsKeyDown(Enum.KeyCode.W) then
															vector3_2 = vector3_2 + CurrentCamera.CFrame.LookVector * u126.FlySpeed
														end

														if u129:IsKeyDown(Enum.KeyCode.S) then
															vector3_2 = vector3_2 - CurrentCamera.CFrame.LookVector * u126.FlySpeed
														end

														if u129:IsKeyDown(Enum.KeyCode.A) then
															vector3_2 = vector3_2 - CurrentCamera.CFrame.RightVector * u126.FlySpeed
														end

														if u129:IsKeyDown(Enum.KeyCode.D) then
															vector3_2 = vector3_2 + CurrentCamera.CFrame.RightVector * u126.FlySpeed
														end

														if u129:IsKeyDown(Enum.KeyCode.Space) then
															vector3_2 = vector3_2 + Vector3.new(0, u126.FlySpeed, 0)
														end

														if u129:IsKeyDown(Enum.KeyCode.LeftShift) then
															vector3_2 = vector3_2 - Vector3.new(0, u126.FlySpeed, 0)
														end

														u126.FlyBodyVelocity.Velocity = vector3_2
														u126.FlyBodyGyro.CFrame = CurrentCamera.CFrame

														return
													end

													return
												end

												return
											end
										end)

										return
									end

									return
								end
							end
						end

						local u145, u146, v155, v158, u170, u171

						do
							u145 = t98
							u146 = t98
							local u148 = t98

							function v149()
								for k in pairs(u148.anchoredTargets) do
									local _pcall = pcall
									local u714 = k

									pcall(function()
										if u714 then
											local HumanoidRootPart = u714:FindFirstChild("HumanoidRootPart")

											if HumanoidRootPart then
												local u1604 = HumanoidRootPart

												pcall(function()
													u1604.Anchored = false
												end)
											end

											return
										end
									end)
								end

								u148.anchoredTargets = {}
							end

							local u150 = LocalPlayer

							function v151()
								local Character = u150.Character

								if Character then
									local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										local Humanoid = Character:FindFirstChild("Humanoid")

										if Humanoid then
											Humanoid.PlatformStand = false

											local _pcall = pcall
											local u719 = Humanoid

											pcall(function()
												u719:Move(Vector3.new(0, 0, 0), false)
											end)
										end

										local BodyVelocity = Instance.new("BodyVelocity")

										BodyVelocity.Velocity = Vector3.new(0, 0, 0)
										BodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
										BodyVelocity.P = 9000000000
										BodyVelocity.Parent = HumanoidRootPart

										local delay = task.delay
										local u722 = BodyVelocity

										delay(0.15, function()
											pcall(function()
												u722:Destroy()
											end)
										end)

										return
									end

									return
								end
							end
							function v152(p2)
								for k in pairs(p2) do
									local _pcall = pcall
									local u726 = k

									pcall(function()
										local HumanoidRootPart = u726:FindFirstChild("HumanoidRootPart")

										if HumanoidRootPart then
											HumanoidRootPart.Anchored = false
										end
									end)
								end
							end

							local u153 = Workspace
							local u154 = LocalPlayer

							function v155(p3)
								local Folder_Monster = u153:FindFirstChild("Folder_Monster")

								if Folder_Monster then
									local Character = u154.Character
									local v730 = Character and Character:FindFirstChild("HumanoidRootPart")
									local v731 = nil
									local n1 = 1e999

									for _, child in ipairs(Folder_Monster:GetChildren()) do
										if child:IsA("Model") then
											local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

											if Humanoid and Humanoid.Health > 0 then
												local v736 = false

												for k in pairs(p3) do
													if k == Humanoid.DisplayName then
														v736 = true

														break
													end
												end

												if v736 then
													local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

													if not v730 or not HumanoidRootPart then
														if not v731 then
															v731 = child
														end
													else
														local Magnitude = (v730.Position - HumanoidRootPart.Position).Magnitude

														if Magnitude < n1 then
															n1 = Magnitude
															v731 = child
														end
													end
												end
											end
										end
									end

									return v731
								end

								return nil
							end

							local u156 = Workspace
							local u157 = LocalPlayer

							function v158(p4)
								local Folder_Monster = u156:FindFirstChild("Folder_Monster")

								if Folder_Monster then
									local Character = u157.Character
									local v743 = Character and Character:FindFirstChild("HumanoidRootPart")
									local v744 = nil
									local n2 = 1e999
									local t99 = {}

									for _, v in ipairs(p4) do
										t99[v] = true
									end

									for _, child in ipairs(Folder_Monster:GetChildren()) do
										if child:IsA("Model") then
											local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

											if Humanoid and Humanoid.Health > 0 and t99[Humanoid.DisplayName] then
												local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

												if not v743 or not HumanoidRootPart then
													if not v744 then
														v744 = child
													end
												else
													local Magnitude = (v743.Position - HumanoidRootPart.Position).Magnitude

													if Magnitude < n2 then
														n2 = Magnitude
														v744 = child
													end
												end
											end
										end
									end

									return v744
								end

								return nil
							end

							local u159 = Workspace

							function v160(p5)
								local Folder_GameMap = u159:FindFirstChild("Folder_GameMap")

								if Folder_GameMap then
									for _, child in ipairs(Folder_GameMap:GetChildren()) do
										if child:IsA("Folder") then
											local _pcall = pcall
											local u759 = child
											local v760, v761 = pcall(function()
												return u759:GetAttribute("MapName")
											end)

											if v760 and v761 and type(v761) == "string" and v761:lower():find(p5:lower(), 1, true) then
												return child
											end
										end
									end

									return nil
								end

								return nil
							end

							local u161 = t5
							local u162 = v160

							function u163(p6)
								if p6 then
									for _, v in ipairs(u161) do
										for _, v3 in ipairs(v.npcs) do
											if p6 == v3.level then
												local v770 = u162(v.mapNameKeyword)

												if v770 then
													if not v770 then
														return nil
													end

													local SpawnLocation = v770:FindFirstChild("SpawnLocation")

													if not SpawnLocation or not SpawnLocation:IsA("Model") then
														return nil
													end

													local SpawnLocation2 = SpawnLocation:FindFirstChild("SpawnLocation")

													if SpawnLocation2 then
														return SpawnLocation2.Position
													end

													return nil
												end
											end
										end
									end

									return nil
								end

								return nil
							end
							local u166 = Workspace

							function v167(p7)
								if p7 then
									local Folder_GameOutside = u166:FindFirstChild("Folder_GameOutside")

									if Folder_GameOutside then
										local MonsterGuide = Folder_GameOutside:FindFirstChild("MonsterGuide")

										if MonsterGuide then
											local v781 = MonsterGuide:FindFirstChild("Lv" .. tostring(p7))

											if not v781 or not v781:IsA("BasePart") then
												return nil
											end

											return v781.Position
										end

										return nil
									end

									return nil
								end

								return nil
							end

							u170 = t5
							u171 = Workspace

							local u172 = t98
							local u173 = LocalPlayer
							local u174 = v155
							local u175 = v158
							local u176 = t1

							function u177()
								if not u172.AutoFarmLevelEnabled then
									local v807 = false

									for _ in pairs(u172.SelectedNPCs) do
										v807 = true

										break
									end

									if not v807 then
										return (u175(u176))
									end

									return (u174(u172.SelectedNPCs))
								end

								local Character = u173.Character
								local v810 = Character and Character:FindFirstChild("HumanoidRootPart")
								local v811 = nil
								local n3 = 1e999

								for _, v in ipairs(u172.AutoFarmLevelCurrentNPCList) do
									local v816

									if v and v.Parent then
										local Humanoid = v:FindFirstChildWhichIsA("Humanoid")

										v816 = Humanoid ~= nil and Humanoid.Health > 0
									else
										v816 = false
									end

									if v816 then
										if not v810 then
											return v
										end

										local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")

										if not HumanoidRootPart then
											if not v811 then
												v811 = v
											end
										else
											local Magnitude = (v810.Position - HumanoidRootPart.Position).Magnitude

											if Magnitude < n3 then
												n3 = Magnitude
												v811 = v
											end
										end
									end
								end

								return v811
							end
						end

						local function u187(p8)
							local t100 = {}

							for match in p8:gmatch("[%-]?%d+%.?%d*[eE]?[+-]?%d*") do
								local num = tonumber(match)

								table.insert(t100, num)
							end

							if not (#t100 >= 12) then
								return nil
							end

							return CFrame.new(t100[1], t100[2], t100[3], t100[4], t100[5], t100[6], t100[7], t100[8], t100[9], t100[10], t100[11], t100[12])
						end

						local u188 = LocalPlayer

						function v189(p9)
							local v841 = u187(p9)

							if v841 then
								local Character = u188.Character
								local u843 = Character and Character:FindFirstChild("HumanoidRootPart")

								if u843 then
									local _pcall = pcall
									local u845 = v841

									pcall(function()
										u843.CFrame = u845
									end)
								end

								return
							end
						end

						u191 = Workspace
						u192 = LocalPlayer
						u193 = Workspace
						u194 = LocalPlayer

						local u195 = RunService
						local u196 = v152
						local u197 = LocalPlayer
						local u198 = v151

						local function u199(p10)
							if not u146.RaidTPBelowEnabled then
								return CFrame.new(Vector3.new(p10.Position.X, p10.Position.Y + u146.RaidDistanceBetweenNPC, p10.Position.Z), p10.Position)
							end

							return CFrame.new(Vector3.new(p10.Position.X, p10.Position.Y - u146.RaidDistanceBetweenNPC, p10.Position.Z), p10.Position)
						end

						local u200 = t98
						local u201 = v119
						local u202 = ReplicatedStorage

						function v203(p11, p12, p13)
							local connection = nil
							local Heartbeat = u195.Heartbeat
							local u873 = p12
							local u874 = p13
							local u875 = p11

							connection = Heartbeat:Connect(function()
								if not u873() then
									local Character = u197.Character

									if Character then
										local Humanoid = Character:FindFirstChild("Humanoid")

										if Humanoid and not (Humanoid.Health <= 0) then
											local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

											if HumanoidRootPart then
												local v1610 = u875()

												if v1610 then
													local HumanoidRootPart2 = v1610:FindFirstChild("HumanoidRootPart")

													if HumanoidRootPart2 then
														if not u874[v1610] then
															u874[v1610] = true
															local u1613 = HumanoidRootPart2

															pcall(function()
																u1613.Anchored = true
															end)
														end

														Humanoid.PlatformStand = true

														local v1614 = u199(HumanoidRootPart2)

														if not ((HumanoidRootPart.Position - v1614.Position).Magnitude < 0.5) then
															HumanoidRootPart.CFrame = HumanoidRootPart.CFrame:Lerp(v1614, 1)

															return
														end

														HumanoidRootPart.CFrame = v1614

														return
													end
													local u1616 = HumanoidRootPart
													local u1617 = v1610

													pcall(function()
														u1616.CFrame = u1617:GetPivot()
													end)

													return
												end

												if Humanoid.PlatformStand then
													Humanoid.PlatformStand = false
													u198()
												end

												return
											end

											return
										end

										return
									end

									return
								end

								connection:Disconnect()
								u196(u874)

								for k in pairs(u874) do
									u874[k] = nil
								end

								local Character = u197.Character
								local v1620 = Character and Character:FindFirstChild("Humanoid")

								if v1620 then
									v1620.PlatformStand = false
								end

								u198()
							end)

							local spawn = task.spawn
							local u877 = p12
							local u878 = p11

							spawn(function()
								while not u877() do
									local Character = u197.Character
									local v1622 = Character and Character:FindFirstChild("Humanoid")

									if v1622 and v1622.Health > 0 then
										local v1623 = u878()

										if v1623 then
											if u200.RaidAutoEquipWeaponType then
												u201(u200.RaidAutoEquipWeaponType)
												task.wait(0.2)
											end

											if v1623 then
												local _pcall = pcall
												local u1625 = v1623

												pcall(function()
													u202.SynService.Event.eve_SkillSyn:FireServer("effect", "Set", {
														AttackCharacterTp = {
															u1625,
														},
														Mod = u202.Folder_Effects.Weapon.M1,
														Character = u197.Character,
														UseAnima = 2,
														CharacterConfig = {
															Fight = {},
															EquipageUse = {},
															Config = {},
														},
													})
												end)
											end
										end
									end

									task.wait(0.1)
								end
							end)
						end

						local spawn = task.spawn
						local u205 = t98
						local u206 = LocalPlayer

						local function u207(p14)
							if p14 then
								local n4 = -1
								local name = nil

								for _, v in ipairs(u170) do
									for _, v4 in ipairs(v.npcs) do
										if p14 >= v4.level and n4 < v4.level then
											n4 = v4.level
											name = v4.name
										end
									end
								end

								if n4 ~= -1 then
									return n4, name
								end

								return nil, nil
							end

							return nil, nil
						end

						local u208 = t5

						local function u209(p15, p16)
							if p15 then
								local Folder_Monster = u171:FindFirstChild("Folder_Monster")

								if Folder_Monster then
									local t101 = {}

									for _, child in ipairs(Folder_Monster:GetChildren()) do
										if child:IsA("Model") then
											local _pcall = pcall
											local u798 = child
											local v799, v800 = pcall(function()
												return u798:GetAttribute("Type")
											end)

											if not v799 or v800 ~= "Boss" then
												local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

												if Humanoid and Humanoid.Health > 0 then
													local u803 = child
													local v804, v805 = pcall(function()
														return u803:GetAttribute("Level")
													end)
													local v806 = p16 == nil or p16 == Humanoid.DisplayName

													if v804 and v805 == p15 and v806 then
														table.insert(t101, child)
													end
												end
											end
										end
									end

									return t101
								end

								return {}
							end

							return {}
						end

						local u210 = v167
						local u211 = t4
						local u212 = ReplicatedStorage

						spawn(function()
							local optimalNPCLevel = nil
							local n5 = 0
							local v881 = false
							local v882 = false
							local v883 = nil
							local g911 = nil

							while true do
								task.wait(0.2)

								if u205.AutoFarmLevelEnabled then
									local ok, result = pcall(function()
										local v1626 = u206.PlayerGui.UI_PlayerConfig.Frame_Level.Text_Level.Text:match("Lv%.%s*(%d+)")

										return v1626 and tonumber(v1626) or nil
									end)

									if not ok then
										result = nil
									end

									if result then
										local v886 = u207(result)

										if not u205.optimalNPCLevel then
											if v886 then
												u205.optimalNPCLevel = v886
											end
										elseif v886 and v886 > u205.optimalNPCLevel then
											u205.optimalNPCLevel = v886
										end

										if optimalNPCLevel ~= u205.optimalNPCLevel then
											optimalNPCLevel = u205.optimalNPCLevel
											n5 = 0
											v881 = false
											v882 = false
											v883 = nil

											if u205.CurrentTarget then
												pcall(function()
													local CurrentTarget = u205.CurrentTarget

													if CurrentTarget then
														local HumanoidRootPart = CurrentTarget:FindFirstChild("HumanoidRootPart")

														if HumanoidRootPart then
															local u1630 = HumanoidRootPart

															pcall(function()
																u1630.Anchored = false
															end)
														end

														return
													end
												end)
												u205.anchoredTargets[u205.CurrentTarget] = nil
												u205.CurrentTarget = nil
											end

											local v887 = u163(u205.optimalNPCLevel)

											if v887 then
												u205.optimalZoneWaitPos = v887
											end
										end

										local name = nil

										for _, v in ipairs(u208) do
											for _, v6 in ipairs(v.npcs) do
												if v6.level == u205.optimalNPCLevel then
													name = v6.name

													break
												end
											end

											if name then
												break
											end
										end

										local v893 = u205.optimalNPCLevel and u209(u205.optimalNPCLevel, name) or {}
										local v894 = #v893 > 0

										if v883 ~= u205.optimalNPCLevel then
											v883 = u205.optimalNPCLevel
											n5 = 0
											v881 = false
											v882 = false
										end

										local t102 = {}

										for _, v in ipairs(v893) do
											t102[v] = true
										end

										if not v894 then
											u205.AutoFarmLevelCurrentNPCList = {}
											u205.AutoFarmLevelCurrentLevel = u205.optimalNPCLevel

											if u205.CurrentTarget then
												pcall(function()
													local CurrentTarget = u205.CurrentTarget

													if CurrentTarget then
														local HumanoidRootPart = CurrentTarget:FindFirstChild("HumanoidRootPart")

														if HumanoidRootPart then
															local u1638 = HumanoidRootPart

															pcall(function()
																u1638.Anchored = false
															end)
														end

														return
													end
												end)
												u205.anchoredTargets[u205.CurrentTarget] = nil
												u205.CurrentTarget = nil
											end

											n5 = n5 + 1

											if n5 >= 3 and not v881 then
												v881 = true

												local v898 = u163(u205.optimalNPCLevel)

												if v898 then
													u205.optimalNPCLastPos = v898
													u205.optimalZoneWaitPos = v898
												end
											end

											if n5 >= 6 and not v882 then
												v882 = true

												local v899 = u210(u205.optimalNPCLevel)

												if v899 then
													u205.optimalNPCLastPos = v899
													u205.optimalZoneWaitPos = v899
												end
											end

											if n5 >= 10 then
												n5 = 4
												v882 = false
											end
										else
											n5 = 0
											v881 = false
											v882 = false
											u205.AutoFarmLevelCurrentNPCList = v893
											u205.AutoFarmLevelCurrentLevel = u205.optimalNPCLevel

											if u205.CurrentTarget and not t102[u205.CurrentTarget] then
												pcall(function()
													local CurrentTarget = u205.CurrentTarget

													if CurrentTarget then
														local HumanoidRootPart = CurrentTarget:FindFirstChild("HumanoidRootPart")

														if HumanoidRootPart then
															local u1634 = HumanoidRootPart

															pcall(function()
																u1634.Anchored = false
															end)
														end

														return
													end
												end)
												u205.anchoredTargets[u205.CurrentTarget] = nil
												u205.CurrentTarget = nil
											end

											local Character = u206.Character
											local v901 = Character and Character:FindFirstChild("HumanoidRootPart")
											local n6 = 1e999

											for _, v in ipairs(v893) do
												local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")

												if HumanoidRootPart then
													if not v901 then
														u205.optimalNPCLastPos = HumanoidRootPart.Position
													else
														local Magnitude = (v901.Position - HumanoidRootPart.Position).Magnitude

														if Magnitude < n6 then
															n6 = Magnitude
															u205.optimalNPCLastPos = HumanoidRootPart.Position
														end
													end
												end
											end
										end

										if u205.AutoFarmLevelCurrentLevel then
											local AutoFarmLevelCurrentLevel = u205.AutoFarmLevelCurrentLevel
											local v908

											if AutoFarmLevelCurrentLevel then
												v908 = "Lv" .. tostring(AutoFarmLevelCurrentLevel) .. " Quest"

												for _, v in ipairs(u211) do
													if v == v908 then
														g911 = true
													end

													if g911 then
														break
													end
												end

												if not g911 then
													v908 = nil
												end
											else
												v908 = nil
											end

											g911 = false

											if v908 then
												local ok2, result2 = pcall(function()
													return u206.PlayerGui.UI_Game.UI_Task.Frame_View.Visible
												end)

												if ok2 and not result2 then
													local v914 = v908:match("^(Lv%d+)")

													if v914 then
														local _pcall = pcall
														local u916 = v914

														pcall(function()
															u212.Service.TaskService.Event.RemoteFunction_Task:InvokeServer({
																Name = "GetTask",
																TaskId = u916,
															})
														end)
													end
												end
											end
										end
									end
								else
									optimalNPCLevel = nil
									n5 = 0
									v881 = false
									v882 = false
									v883 = nil
									u205.AutoFarmLevelCurrentNPCList = {}
									u205.AutoFarmLevelCurrentLevel = nil
									u205.optimalNPCLevel = nil
									u205.optimalNPCLastPos = nil
									u205.optimalZoneWaitPos = nil
								end
							end
						end)

						u214 = t98
						u215 = LocalPlayer

						function u216(p17)
							if not u145.TPBelowEnabled then
								return CFrame.new(Vector3.new(p17.Position.X, p17.Position.Y + u145.DistanceBetweenNPC, p17.Position.Z), p17.Position)
							end

							return CFrame.new(Vector3.new(p17.Position.X, p17.Position.Y - u145.DistanceBetweenNPC, p17.Position.Z), p17.Position)
						end

						u217 = v151

						u219 = t98
						u220 = v155
						u221 = v158
						u222 = t2
						u223 = t96
						u224 = v160
						u225 = t97
						u226 = v167
						u227 = t98
						u228 = t96
					end

					local u229 = v160
					local u230 = t97
					local u231 = v167
					local u232 = Workspace
					local u233 = t98
					local u234 = RunService

					local function u235()
						if not u214.AutoFarmEnabled and (not u214.AutoFarmBossEnabled and not u214.AutoFarmLevelEnabled) then
							return false
						end

						local Character = u215.Character

						if not Character then
							return true
						end

						local Humanoid = Character:FindFirstChild("Humanoid")

						if not Humanoid or Humanoid.Health <= 0 then
							return true
						end

						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

						if not HumanoidRootPart then
							return true
						end

						local AutoFarmBossEnabled = u214.AutoFarmBossEnabled
						local g930 = nil
						local g938 = nil
						local v937 = nil
						local AutoFarmLevelEnabled = nil

						if AutoFarmBossEnabled then
							AutoFarmBossEnabled = u214.CurrentBossTarget

							if AutoFarmBossEnabled then
								local CurrentBossTarget = u214.CurrentBossTarget

								if CurrentBossTarget and CurrentBossTarget.Parent then
									local Humanoid2 = CurrentBossTarget:FindFirstChildWhichIsA("Humanoid")

									AutoFarmBossEnabled = Humanoid2 ~= nil and Humanoid2.Health > 0
								else
									AutoFarmBossEnabled = false
								end
							end
						end

						if AutoFarmBossEnabled then
							local HumanoidRootPart3 = u214.CurrentBossTarget:FindFirstChild("HumanoidRootPart")

							if not HumanoidRootPart3 then
								Humanoid.PlatformStand = true

								local _pcall = pcall
								local u927 = HumanoidRootPart

								pcall(function()
									local Pivot = u214.CurrentBossTarget:GetPivot()
									local cFrame

									if not u214.TPBelowEnabled then
										cFrame = CFrame.new(Pivot.Position + Vector3.new(0, u214.DistanceBetweenNPC, 0))
									else
										cFrame = CFrame.new(Pivot.Position - Vector3.new(0, u214.DistanceBetweenNPC, 0))
									end

									if not ((u927.Position - cFrame.Position).Magnitude < 0.5) then
										u927.CFrame = u927.CFrame:Lerp(cFrame, 1)

										return
									end

									u927.CFrame = cFrame
								end)
							else
								Humanoid.PlatformStand = true

								local v928 = u216(HumanoidRootPart3)

								if not ((HumanoidRootPart.Position - v928.Position).Magnitude < 0.5) then
									HumanoidRootPart.CFrame = HumanoidRootPart.CFrame:Lerp(v928, 1)
								else
									HumanoidRootPart.CFrame = v928
								end
							end

							return true
						end

						if not u214.AutoFarmEnabled then
							AutoFarmLevelEnabled = u214.AutoFarmLevelEnabled

							if not AutoFarmLevelEnabled then
								g930 = true
							end
						end

						if not g930 then
							AutoFarmLevelEnabled = u214.CurrentTarget

							if AutoFarmLevelEnabled then
								local CurrentTarget = u214.CurrentTarget

								if CurrentTarget and CurrentTarget.Parent then
									local Humanoid3 = CurrentTarget:FindFirstChildWhichIsA("Humanoid")
									local HumanoidRootPart4 = CurrentTarget:FindFirstChild("HumanoidRootPart")

									AutoFarmLevelEnabled = Humanoid3 ~= nil and (HumanoidRootPart4 ~= nil and Humanoid3.Health > 0)
								else
									AutoFarmLevelEnabled = false
								end
							end
						end

						g930 = false

						local AutoFarmLevelEnabled2 = u214.AutoFarmLevelEnabled

						if AutoFarmLevelEnabled2 then
							if u214.CurrentTarget then
								for _, v in ipairs(u214.AutoFarmLevelCurrentNPCList) do
									if v == u214.CurrentTarget then
										v937 = true
										g938 = true
									end

									if g938 then
										break
									end
								end

								if not g938 then
									v937 = false
								end
							else
								v937 = false
							end

							g938 = false
							AutoFarmLevelEnabled2 = not v937
						end

						if not AutoFarmLevelEnabled or AutoFarmLevelEnabled2 then
							local farmNPCWaitPos = nil

							if not u214.AutoFarmLevelEnabled or AutoFarmBossEnabled then
								if not u214.AutoFarmBossEnabled or u214.CurrentBossTarget or not u214.farmBossWaitPos then
									if u214.AutoFarmEnabled and not u214.CurrentTarget and u214.farmNPCWaitPos then
										farmNPCWaitPos = u214.farmNPCWaitPos
									end
								else
									farmNPCWaitPos = u214.farmBossWaitPos
								end
							else
								farmNPCWaitPos = u214.optimalNPCLastPos or u214.optimalZoneWaitPos
							end

							if not farmNPCWaitPos then
								if Humanoid.PlatformStand then
									Humanoid.PlatformStand = false
									u217()
								end
							else
								Humanoid.PlatformStand = true

								local cFrame = CFrame.new(farmNPCWaitPos + Vector3.new(0, u214.DistanceBetweenNPC, 0))

								if not ((HumanoidRootPart.Position - cFrame.Position).Magnitude > 1) then
									HumanoidRootPart.CFrame = cFrame
								else
									HumanoidRootPart.CFrame = HumanoidRootPart.CFrame:Lerp(cFrame, 1)
								end
							end

							return true
						end

						Humanoid.PlatformStand = true

						local HumanoidRootPart5 = u214.CurrentTarget:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart5 then
							local v942 = u216(HumanoidRootPart5)

							if not ((HumanoidRootPart.Position - v942.Position).Magnitude < 0.5) then
								HumanoidRootPart.CFrame = HumanoidRootPart.CFrame:Lerp(v942, 1)
							else
								HumanoidRootPart.CFrame = v942
							end
						end

						return true
					end

					local u236 = LocalPlayer
					local u237 = ReplicatedStorage
					local u238 = v119

					local function u239(p18)
						if not u219.AutoFarmBossEnabled then
							return p18
						end

						local g966 = nil
						local v965 = nil

						if u219.CurrentBossTarget then
							local CurrentBossTarget = u219.CurrentBossTarget
							local v949

							if CurrentBossTarget and CurrentBossTarget.Parent then
								local Humanoid = CurrentBossTarget:FindFirstChildWhichIsA("Humanoid")

								v949 = Humanoid ~= nil and Humanoid.Health > 0
							else
								v949 = false
							end

							if v949 then
								u219.farmBossNoTargetTimer = 0
								u219.farmBossTriedZone = false
								u219.farmBossTriedGuide = false
								u219.farmBossWaitPos = nil

								return p18
							end
						end

						local CurrentBossTarget = u219.CurrentBossTarget

						if CurrentBossTarget and CurrentBossTarget then
							local _pcall = pcall
							local u952 = CurrentBossTarget

							pcall(function()
								if u952 then
									local HumanoidRootPart = u952:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										local u1648 = HumanoidRootPart

										pcall(function()
											u1648.Anchored = false
										end)
									end

									return
								end
							end)
							u219.anchoredTargets[CurrentBossTarget] = nil
						end

						local v953 = u219
						local v954 = false

						for _ in pairs(u219.SelectedBosses) do
							v954 = true

							break
						end

						local v956

						if not v954 then
							v956 = u221(u222)
						else
							v956 = u220(u219.SelectedBosses)
						end

						v953.CurrentBossTarget = v956

						if u219.CurrentBossTarget then
							local CurrentBossTarget2 = u219.CurrentBossTarget

							if CurrentBossTarget2 and not u219.anchoredTargets[CurrentBossTarget2] then
								u219.anchoredTargets[CurrentBossTarget2] = true

								if CurrentBossTarget2 then
									local HumanoidRootPart = CurrentBossTarget2:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										local _pcall = pcall
										local u960 = HumanoidRootPart

										pcall(function()
											u960.Anchored = true
										end)
									end
								end
							end

							u219.farmBossNoTargetTimer = 0
							u219.farmBossTriedZone = false
							u219.farmBossTriedGuide = false
							u219.farmBossWaitPos = nil

							return p18
						end

						local v961 = false

						for _ in pairs(u219.SelectedBosses) do
							v961 = true

							break
						end

						if v961 and p18 >= 1 then
							p18 = 0
							u219.farmBossNoTargetTimer = u219.farmBossNoTargetTimer + 1

							local SelectedBosses = u219.SelectedBosses

							for k in pairs(SelectedBosses) do
								v965 = k
								g966 = true

								if true then
									break
								end
							end

							if not g966 then
								v965 = nil
							end

							g966 = false

							if u219.farmBossNoTargetTimer >= 3 and not u219.farmBossTriedZone then
								u219.farmBossTriedZone = true

								local v969

								if v965 then
									local v967 = u223[v965]

									if v967 then
										local v968 = u224(v967)

										if not v968 then
											v969 = nil
										elseif v968 then
											local SpawnLocation = v968:FindFirstChild("SpawnLocation")

											if SpawnLocation and SpawnLocation:IsA("Model") then
												local SpawnLocation3 = SpawnLocation:FindFirstChild("SpawnLocation")

												if SpawnLocation3 then
													v969 = SpawnLocation3.Position
												else
													v969 = nil
												end
											else
												v969 = nil
											end
										else
											v969 = nil
										end
									else
										v969 = nil
									end
								else
									v969 = nil
								end

								if v969 then
									u219.farmBossWaitPos = v969
								end
							end

							if u219.farmBossNoTargetTimer >= 6 and not u219.farmBossTriedGuide then
								u219.farmBossTriedGuide = true

								local v973

								if v965 then
									local v972 = u225[v965]

									if v972 then
										v973 = u226(v972)
									else
										v973 = nil
									end
								else
									v973 = nil
								end

								if v973 then
									u219.farmBossWaitPos = v973
								end
							end

							if u219.farmBossNoTargetTimer >= 10 then
								u219.farmBossNoTargetTimer = 4
								u219.farmBossTriedGuide = false

								return p18
							end
						end

						return p18
					end
					local function u240(p19, p20)
						if not u227.AutoFarmEnabled and not u227.AutoFarmLevelEnabled then
							return p19
						end

						local AutoFarmBossEnabled = u227.AutoFarmBossEnabled
						local g985 = nil
						local v984 = nil
						local g992 = nil
						local g1010 = nil
						local v1009 = nil

						if AutoFarmBossEnabled then
							AutoFarmBossEnabled = u227.CurrentBossTarget

							if AutoFarmBossEnabled then
								local CurrentBossTarget = u227.CurrentBossTarget

								if CurrentBossTarget and CurrentBossTarget.Parent then
									local Humanoid = CurrentBossTarget:FindFirstChildWhichIsA("Humanoid")

									AutoFarmBossEnabled = Humanoid ~= nil and Humanoid.Health > 0
								else
									AutoFarmBossEnabled = false
								end
							end
						end

						if AutoFarmBossEnabled then
							if u227.CurrentTarget then
								local CurrentTarget = u227.CurrentTarget

								if CurrentTarget then
									local _pcall = pcall
									local u981 = CurrentTarget

									pcall(function()
										if u981 then
											local HumanoidRootPart = u981:FindFirstChild("HumanoidRootPart")

											if HumanoidRootPart then
												local u1652 = HumanoidRootPart

												pcall(function()
													u1652.Anchored = false
												end)
											end

											return
										end
									end)
									u227.anchoredTargets[CurrentTarget] = nil
								end

								u227.CurrentTarget = nil
							end

							return p19
						end

						if u227.AutoFarmLevelEnabled and u227.CurrentTarget then
							if u227.CurrentTarget then
								for _, v in ipairs(u227.AutoFarmLevelCurrentNPCList) do
									if v == u227.CurrentTarget then
										v984 = true
										g985 = true
									end

									if g985 then
										break
									end
								end

								if not g985 then
									v984 = false
								end
							else
								v984 = false
							end

							g985 = false

							if not v984 then
								local CurrentTarget = u227.CurrentTarget

								if CurrentTarget then
									local _pcall = pcall
									local u988 = CurrentTarget

									pcall(function()
										if u988 then
											local HumanoidRootPart = u988:FindFirstChild("HumanoidRootPart")

											if HumanoidRootPart then
												local u1656 = HumanoidRootPart

												pcall(function()
													u1656.Anchored = false
												end)
											end

											return
										end
									end)
									u227.anchoredTargets[CurrentTarget] = nil
								end

								u227.CurrentTarget = nil
							end
						end

						if u227.CurrentTarget then
							local CurrentTarget = u227.CurrentTarget
							local v991

							if CurrentTarget and CurrentTarget.Parent then
								local Humanoid = CurrentTarget:FindFirstChildWhichIsA("Humanoid")

								v991 = Humanoid ~= nil and Humanoid.Health > 0
							else
								v991 = false
							end

							if v991 then
								u227.farmNPCNoTargetTimer = 0
								u227.farmNPCTriedZone = false
								u227.farmNPCTriedGuide = false
								u227.farmNPCWaitPos = nil
								g992 = true
							end
						end

						if not g992 then
							local CurrentTarget = u227.CurrentTarget

							if CurrentTarget and CurrentTarget then
								local _pcall = pcall
								local u995 = CurrentTarget

								pcall(function()
									if u995 then
										local HumanoidRootPart = u995:FindFirstChild("HumanoidRootPart")

										if HumanoidRootPart then
											local u1660 = HumanoidRootPart

											pcall(function()
												u1660.Anchored = false
											end)
										end

										return
									end
								end)
								u227.anchoredTargets[CurrentTarget] = nil
							end

							if not u227.AutoFarmLevelEnabled then
								u227.CurrentTarget = u177()
							else
								local v996 = nil
								local n7 = 1e999
								local HumanoidRootPart = p20:FindFirstChild("HumanoidRootPart")

								for _, v in ipairs(u227.AutoFarmLevelCurrentNPCList) do
									local v1002

									if v and v.Parent then
										local Humanoid = v:FindFirstChildWhichIsA("Humanoid")

										v1002 = Humanoid ~= nil and Humanoid.Health > 0
									else
										v1002 = false
									end

									if v1002 then
										if not HumanoidRootPart then
											v996 = v

											break
										end

										local HumanoidRootPart6 = v:FindFirstChild("HumanoidRootPart")

										if not HumanoidRootPart6 then
											if not v996 then
												v996 = v
											end
										else
											local Magnitude = (HumanoidRootPart.Position - HumanoidRootPart6.Position).Magnitude

											if Magnitude < n7 then
												n7 = Magnitude
												v996 = v
											end
										end
									end
								end

								u227.CurrentTarget = v996
							end

							if not u227.CurrentTarget then
								if u227.AutoFarmEnabled and not u227.AutoFarmLevelEnabled then
									local v1005 = false

									for _ in pairs(u227.SelectedNPCs) do
										v1005 = true

										break
									end

									if v1005 and p19 >= 1 then
										p19 = 0
										u227.farmNPCNoTargetTimer = u227.farmNPCNoTargetTimer + 1

										local SelectedNPCs = u227.SelectedNPCs

										for k in pairs(SelectedNPCs) do
											v1009 = k
											g1010 = true

											if true then
												break
											end
										end

										if not g1010 then
											v1009 = nil
										end

										g1010 = false

										if u227.farmNPCNoTargetTimer >= 3 and not u227.farmNPCTriedZone then
											u227.farmNPCTriedZone = true

											local v1013

											if v1009 then
												local v1011 = u228[v1009]

												if v1011 then
													local v1012 = u229(v1011)

													if not v1012 then
														v1013 = nil
													elseif v1012 then
														local SpawnLocation = v1012:FindFirstChild("SpawnLocation")

														if SpawnLocation and SpawnLocation:IsA("Model") then
															local SpawnLocation4 = SpawnLocation:FindFirstChild("SpawnLocation")

															if SpawnLocation4 then
																v1013 = SpawnLocation4.Position
															else
																v1013 = nil
															end
														else
															v1013 = nil
														end
													else
														v1013 = nil
													end
												else
													v1013 = nil
												end
											else
												v1013 = nil
											end

											if v1013 then
												u227.farmNPCWaitPos = v1013
											end
										end

										if u227.farmNPCNoTargetTimer >= 6 and not u227.farmNPCTriedGuide then
											u227.farmNPCTriedGuide = true

											local v1017

											if v1009 then
												local v1016 = u230[v1009]

												if v1016 then
													v1017 = u231(v1016)
												else
													v1017 = nil
												end
											else
												v1017 = nil
											end

											if v1017 then
												u227.farmNPCWaitPos = v1017
											end
										end

										if u227.farmNPCNoTargetTimer >= 10 then
											u227.farmNPCNoTargetTimer = 4
											u227.farmNPCTriedGuide = false
										end
									end
								end
							else
								local CurrentTarget2 = u227.CurrentTarget

								if CurrentTarget2 and not u227.anchoredTargets[CurrentTarget2] then
									u227.anchoredTargets[CurrentTarget2] = true

									if CurrentTarget2 then
										local HumanoidRootPart = CurrentTarget2:FindFirstChild("HumanoidRootPart")

										if HumanoidRootPart then
											local _pcall = pcall
											local u1021 = HumanoidRootPart

											pcall(function()
												u1021.Anchored = true
											end)
										end
									end
								end

								u227.farmNPCNoTargetTimer = 0
								u227.farmNPCTriedZone = false
								u227.farmNPCTriedGuide = false
								u227.farmNPCWaitPos = nil
							end
						end

						g992 = false

						local u1022 = u227

						if u227.CurrentTarget then
							u1022 = u227.CurrentTarget

							local v1024

							if u1022 and u1022.Parent then
								local Humanoid = u1022:FindFirstChildWhichIsA("Humanoid")

								v1024 = Humanoid ~= nil and Humanoid.Health > 0
							else
								v1024 = false
							end

							if v1024 then
								local CurrentTarget = u227.CurrentTarget

								u1022 = CurrentTarget

								if not CurrentTarget:FindFirstChild("HumanoidRootPart") then
									u1022 = u232

									local v1027 = u232:FindFirstChild("Folder_Monster")

									if v1027 then
										u1022 = u227.CurrentTarget.Parent

										if v1027 == u1022 then
											u1022 = p20:FindFirstChild("HumanoidRootPart")

											if u1022 then
												pcall(function()
													u1022.CFrame = u227.CurrentTarget:GetPivot()
												end)
											end
										end
									end
								end
							end
						end

						return p19
					end

					local u241 = v151
					local u242 = v149

					function v243()
						if not u233.farmLoopRunning then
							u233.farmLoopRunning = true
							u233.farmNPCWaitPos = nil
							u233.farmBossWaitPos = nil
							u233.farmNPCNoTargetTimer = 0
							u233.farmNPCTriedZone = false
							u233.farmNPCTriedGuide = false
							u233.farmBossNoTargetTimer = 0
							u233.farmBossTriedZone = false
							u233.farmBossTriedGuide = false

							local connection = nil

							connection = u234.Heartbeat:Connect(function()
								if u233.AutoFarmEnabled or u233.AutoFarmBossEnabled or u233.AutoFarmLevelEnabled then
									u235()

									return
								end

								connection:Disconnect()
							end)
							task.spawn(function()
								local g1663 = nil
								local g1671 = nil

								while u233.AutoFarmEnabled or u233.AutoFarmBossEnabled or u233.AutoFarmLevelEnabled do
									local Character = u236.Character
									local v1662 = Character and Character:FindFirstChild("Humanoid")

									if v1662 and v1662.Health > 0 then
										repeat
											if g1663 or (not u233.AutoFarmBossEnabled or not u233.CurrentBossTarget) then
												g1663 = false

												if (u233.AutoFarmEnabled or u233.AutoFarmLevelEnabled) and u233.CurrentTarget then
													local CurrentTarget = u233.CurrentTarget
													local v1667

													if CurrentTarget and CurrentTarget.Parent then
														local Humanoid = CurrentTarget:FindFirstChildWhichIsA("Humanoid")
														local HumanoidRootPart = CurrentTarget:FindFirstChild("HumanoidRootPart")

														v1667 = Humanoid ~= nil and (HumanoidRootPart ~= nil and Humanoid.Health > 0)
													else
														v1667 = false
													end

													if v1667 then
														local CurrentTarget3 = u233.CurrentTarget

														if CurrentTarget3 then
															local _pcall = pcall
															local u1670 = CurrentTarget3

															pcall(function()
																u237.SynService.Event.eve_SkillSyn:FireServer("effect", "Set", {
																	AttackCharacterTp = {
																		u1670,
																	},
																	Mod = u237.Folder_Effects.Weapon.M1,
																	Character = u236.Character,
																	UseAnima = 2,
																	CharacterConfig = {
																		Fight = {},
																		EquipageUse = {},
																		Config = {},
																	},
																})
															end)
														end
													end
												end

												g1671 = true
											end

											if g1671 then
												break
											end

											local CurrentBossTarget = u233.CurrentBossTarget
											local v1674

											if CurrentBossTarget and CurrentBossTarget.Parent then
												local Humanoid = CurrentBossTarget:FindFirstChildWhichIsA("Humanoid")

												v1674 = Humanoid ~= nil and Humanoid.Health > 0
											else
												v1674 = false
											end

											if not v1674 then
												g1663 = true
											end
										until not g1663

										if not g1671 then
											local CurrentBossTarget = u233.CurrentBossTarget

											if CurrentBossTarget then
												local _pcall = pcall
												local u1677 = CurrentBossTarget

												pcall(function()
													u237.SynService.Event.eve_SkillSyn:FireServer("effect", "Set", {
														AttackCharacterTp = {
															u1677,
														},
														Mod = u237.Folder_Effects.Weapon.M1,
														Character = u236.Character,
														UseAnima = 2,
														CharacterConfig = {
															Fight = {},
															EquipageUse = {},
															Config = {},
														},
													})
												end)
											end
										end
									end

									g1671 = false
									task.wait(0.1)
								end
							end)
							task.spawn(function()
								while u233.AutoFarmEnabled or u233.AutoFarmBossEnabled or u233.AutoFarmLevelEnabled do
									if u233.FarmAutoEquipWeaponType then
										u238(u233.FarmAutoEquipWeaponType)
										task.wait(0.2)
									end

									task.wait(0.5)
								end
							end)

							local n8 = 0
							local n9 = 0

							while u233.AutoFarmEnabled or u233.AutoFarmBossEnabled or u233.AutoFarmLevelEnabled do
								task.wait(0.05)
								n8 = n8 + 0.05
								n9 = n9 + 0.05

								local Character = u236.Character

								if Character then
									local Humanoid = Character:FindFirstChild("Humanoid")

									if Humanoid and not (Humanoid.Health <= 0) then
										n9 = u239(n9)
										n8 = u240(n8, Character)
									else
										u233.CurrentTarget = nil
										u233.CurrentBossTarget = nil
									end
								end
							end

							if connection then
								connection:Disconnect()
							end

							u241()

							local Character = u236.Character
							local v1034 = Character and Character:FindFirstChild("Humanoid")

							if v1034 then
								v1034.PlatformStand = false
							end

							u242()
							u233.CurrentTarget = nil
							u233.CurrentBossTarget = nil
							u233.farmNPCWaitPos = nil
							u233.farmBossWaitPos = nil
							u233.farmNPCNoTargetTimer = 0
							u233.farmNPCTriedZone = false
							u233.farmNPCTriedGuide = false
							u233.farmBossNoTargetTimer = 0
							u233.farmBossTriedZone = false
							u233.farmBossTriedGuide = false
							u233.farmLoopRunning = false

							return
						end
					end

					local spawn = task.spawn
					local u245 = t98
					local u246 = v152
					local u247 = LocalPlayer
					local u248 = v189
					local u249 = Workspace
					local u250 = v203
					local u251 = v151

					spawn(function()
						local t103 = {}
						local g1046 = nil

						while true do
							repeat
								repeat
									repeat
										while true do
											while true do
												task.wait(0.5)

												if u245.AutoAkazaRaidEnabled then
													break
												end

												u246(t103)

												for k in pairs(t103) do
													t103[k] = nil
												end
											end

											local Character = u247.Character

											if Character and Character:FindFirstChild("HumanoidRootPart") then
												break
											end

											task.wait(1)
										end

										u248(
											"853.802734, 15.6142492, 3973.40698, -0.962347984, -1.90347205e-08, 0.271820396, -2.8069822e-08, 1, -2.93510567e-08, -0.271820396, -3.58758818e-08, -0.962347984"
										)
										task.wait(0.3)
									until u245.AutoAkazaRaidEnabled

									pcall(function()
										game:GetService("ReplicatedStorage").Service.CreateWorldBossService.Event.RemoteFunction_CreateWorldBoss
											:InvokeServer("IsNeed")
									end)
									task.wait(0.3)
								until u245.AutoAkazaRaidEnabled

								pcall(function()
									game:GetService("ReplicatedStorage").Service.CreateWorldBossService.Event.RemoteFunction_CreateWorldBoss
										:InvokeServer("Create")
								end)
								task.wait(1)
							until u245.AutoAkazaRaidEnabled

							local v1038 = nil
							local n10 = 0

							while u245.AutoAkazaRaidEnabled and n10 < 30 do
								local Folder_Monster = u249:FindFirstChild("Folder_Monster")

								if Folder_Monster then
									for _, child in ipairs(Folder_Monster:GetChildren()) do
										if child:IsA("Model") and child.Name == "WorldBoss_1" then
											local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

											if Humanoid and Humanoid.Health > 0 then
												v1038 = child

												break
											end
										end
									end
								end

								if v1038 then
									break
								end

								task.wait(0.5)
								n10 = n10 + 1
							end

							if v1038 and u245.AutoAkazaRaidEnabled then
								local u1044 = false
								local u1045 = v1038

								u250(function()
									if u245.AutoAkazaRaidEnabled and not u1044 then
										if u1045 and u1045.Parent then
											local Humanoid = u1045:FindFirstChildWhichIsA("Humanoid")

											if Humanoid and not (Humanoid.Health <= 0) then
												return u1045
											end

											return nil
										end

										return nil
									end

									return nil
								end, function()
									return not u245.AutoAkazaRaidEnabled or u1044
								end, t103)

								repeat
									if not u245.AutoAkazaRaidEnabled then
										g1046 = true
									end

									if g1046 then
										break
									end

									task.wait(0.2)

									local v1047 = v1038 and v1038:FindFirstChildWhichIsA("Humanoid")
								until not v1047 or v1047.Health <= 0 or not v1038.Parent

								if not g1046 then
									u1044 = true
								end

								g1046 = false
								task.wait(0.3)
								u246(t103)

								for k in pairs(t103) do
									t103[k] = nil
								end

								local Character = u247.Character
								local v1050 = Character and Character:FindFirstChild("Humanoid")

								if v1050 then
									v1050.PlatformStand = false
								end

								u251()

								if u245.AutoAkazaRaidEnabled then
									task.wait(10)
								end
							end
						end
					end)

					local spawn2 = task.spawn
					local u253 = t98
					local u254 = v152
					local u255 = LocalPlayer
					local u256 = v189
					local u257 = Workspace
					local u258 = v203
					local u259 = v151

					spawn2(function()
						local t104 = {}
						local g1061 = nil
						local g1073 = nil

						while true do
							local v1057

							repeat
								repeat
									repeat
										repeat
											while true do
												while true do
													task.wait(0.5)

													if u253.AutoHantenguRaidEnabled then
														break
													end

													u254(t104)

													for k in pairs(t104) do
														t104[k] = nil
													end
												end

												local Character = u255.Character

												if Character and Character:FindFirstChild("HumanoidRootPart") then
													break
												end

												task.wait(1)
											end

											u256(
												"-3231.33496, 133.816406, -8975.27344, 0.986351311, 1.49644463e-09, 0.164654315, -5.04746134e-10, 1, -6.06475226e-09, -0.164654315, 5.89886806e-09, 0.986351311"
											)
											task.wait(0.3)
										until u253.AutoHantenguRaidEnabled

										for i = 1, 2 do
											if not u253.AutoHantenguRaidEnabled then
												break
											end

											pcall(function()
												game:GetService("ReplicatedStorage").Service.BossTaskService_1.Event.RemoteFunction_BossTaskService_1
													:InvokeServer("Get")
											end)

											if i < 2 then
												task.wait(0.2)
											end
										end

										task.wait(0.2)
									until u253.AutoHantenguRaidEnabled

									for i = 1, 4 do
										if not u253.AutoHantenguRaidEnabled then
											break
										end

										pcall(function()
											game:GetService("ReplicatedStorage").Service.BossTaskService_1.Event.RemoteFunction_BossTaskService_1
												:InvokeServer("Buy")
										end)

										if i < 4 then
											task.wait(0.2)
										end
									end

									task.wait(0.2)
								until u253.AutoHantenguRaidEnabled

								local t105 = {
									"BT_1_1",
									"BT_1_2",
									"BT_1_3",
									"BT_1_4",
								}

								function v1057()
									local Folder_Monster = u257:FindFirstChild("Folder_Monster")

									if Folder_Monster then
										local Character = u255.Character
										local v1681 = Character and Character:FindFirstChild("HumanoidRootPart")
										local v1682 = nil
										local n11 = 1e999

										for _, child in ipairs(Folder_Monster:GetChildren()) do
											if child:IsA("Model") then
												local v1686 = false

												for _, v in ipairs(t105) do
													if v == child.Name then
														v1686 = true

														break
													end
												end

												if v1686 then
													local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

													if Humanoid and Humanoid.Health > 0 then
														local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

														if not v1681 or not HumanoidRootPart then
															if not v1682 then
																v1682 = child
															end
														else
															local Magnitude = (v1681.Position - HumanoidRootPart.Position).Magnitude

															if Magnitude < n11 then
																n11 = Magnitude
																v1682 = child
															end
														end
													end
												end
											end
										end

										return v1682
									end

									return nil
								end

								while u253.AutoHantenguRaidEnabled and not v1057() do
									task.wait(0.3)
								end
							until u253.AutoHantenguRaidEnabled

							local u1058 = false
							local u1060 = v1057

							u258(function()
								if u253.AutoHantenguRaidEnabled then
									return (u1060())
								end

								return nil
							end, function()
								return not u253.AutoHantenguRaidEnabled or u1058
							end, t104)

							repeat
								if not u253.AutoHantenguRaidEnabled then
									g1061 = true
								end

								if g1061 then
									break
								end

								task.wait(0.3)
							until not v1057()

							if not g1061 then
								u1058 = true
							end

							g1061 = false
							task.wait(0.3)
							u254(t104)

							for k in pairs(t104) do
								t104[k] = nil
							end

							local Character = u255.Character
							local v1064 = Character and Character:FindFirstChild("Humanoid")

							if v1064 then
								v1064.PlatformStand = false
							end

							u259()

							if u253.AutoHantenguRaidEnabled then
								u256(
									"-101.904327, 76.8502121, -19987.1719, -0.050405506, 0.446346283, -0.893439591, 1.75439964e-05, 0.894577146, 0.4469136, 0.998728812, 0.0225112326, -0.0450994447"
								)
								task.wait(0.5)

								if u253.AutoHantenguRaidEnabled then
									local v1065 = nil

									while u253.AutoHantenguRaidEnabled do
										local Folder_Monster = u257:FindFirstChild("Folder_Monster")

										if Folder_Monster then
											for _, child in ipairs(Folder_Monster:GetChildren()) do
												if child:IsA("Model") and child.Name == "BT_1_Boss" then
													local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

													if Humanoid and Humanoid.Health > 0 then
														v1065 = child

														break
													end
												end
											end
										end

										if v1065 then
											break
										end

										task.wait(0.3)
									end

									if v1065 and u253.AutoHantenguRaidEnabled then
										local u1070 = false
										local u1072 = v1065

										u258(function()
											if u253.AutoHantenguRaidEnabled then
												if u1072 and u1072.Parent then
													local Humanoid = u1072:FindFirstChildWhichIsA("Humanoid")

													if Humanoid and not (Humanoid.Health <= 0) then
														return u1072
													end

													return nil
												end

												return nil
											end

											return nil
										end, function()
											return not u253.AutoHantenguRaidEnabled or u1070
										end, t104)

										repeat
											if not u253.AutoHantenguRaidEnabled then
												g1073 = true
											end

											if g1073 then
												break
											end

											task.wait(0.2)

											local v1074 = v1065 and v1065:FindFirstChildWhichIsA("Humanoid")
										until not v1074 or v1074.Health <= 0 or not v1065.Parent

										if not g1073 then
											u1070 = true
										end

										g1073 = false
										task.wait(0.3)
										u254(t104)

										for k in pairs(t104) do
											t104[k] = nil
										end

										local Character3 = u255.Character
										local v1077 = Character3 and Character3:FindFirstChild("Humanoid")

										if v1077 then
											v1077.PlatformStand = false
										end

										u259()

										if u253.AutoHantenguRaidEnabled then
											task.wait(10)
										end
									end
								end
							end
						end
					end)

					local spawn3 = task.spawn
					local u261 = t98
					local u262 = Workspace
					local u263 = LocalPlayer

					spawn3(function()
						local v1078 = false

						while true do
							task.wait(0.1)

							if u261.AutoSerpentRespawnEnabled then
								local Name = u262:FindFirstChild(u263.Name)

								if Name then
									local Health = Name:GetAttribute("Health")

									if not Health or not (Health <= 0) or v1078 then
										if Health and Health > 0 then
											v1078 = false
										end
									else
										v1078 = true
										pcall(function()
											game:GetService("ReplicatedStorage").Event.eve_Respawn:FireServer()
										end)
									end
								end
							else
								v1078 = false
							end
						end
					end)

					local spawn4 = task.spawn
					local u265 = t98
					local u266 = v152
					local u267 = LocalPlayer
					local u268 = v151
					local u269 = Workspace
					local u270 = v203

					spawn4(function()
						local t106 = {}
						local v1085 = nil
						local g1098 = nil

						while true do
							while true do
								while true do
									task.wait(0.1)

									if u265.AutoSerpentRaidEnabled then
										break
									end

									u266(t106)

									for k in pairs(t106) do
										t106[k] = nil
									end

									local Character = u267.Character
									local v1084 = Character and Character:FindFirstChild("Humanoid")

									if v1084 and v1084.PlatformStand then
										v1084.PlatformStand = false
										u268()
									end
								end

								function v1085()
									if u265.AutoSerpentRaidEnabled then
										local Folder_Monster = u269:FindFirstChild("Folder_Monster")

										if Folder_Monster then
											local Character = u267.Character
											local v1695 = Character and Character:FindFirstChild("HumanoidRootPart")
											local v1696 = nil
											local n12 = 1e999

											for _, child in ipairs(Folder_Monster:GetChildren()) do
												if child:IsA("Model") then
													local _pcall = pcall
													local u1701 = child
													local v1702, v1703 = pcall(function()
														return u1701:GetAttribute("GameMathNum")
													end)

													if v1702 and v1703 == "SnakeDungeon_nil" then
														local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

														if Humanoid and Humanoid.Health > 0 then
															local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

															if not HumanoidRootPart then
																if not v1696 then
																	v1696 = child
																end
															else
																local Magnitude = (v1695.Position - HumanoidRootPart.Position).Magnitude

																if Magnitude < n12 then
																	n12 = Magnitude
																	v1696 = child
																end
															end
														end
													end
												end
											end

											return v1696
										end

										return nil
									end

									return nil
								end

								if v1085() then
									break
								end

								u266(t106)

								for k in pairs(t106) do
									t106[k] = nil
								end

								local Character = u267.Character
								local v1088 = Character and Character:FindFirstChild("Humanoid")

								if v1088 and v1088.PlatformStand then
									v1088.PlatformStand = false
									u268()
								end

								local Folder_CreateStorage = u269:FindFirstChild("Folder_CreateStorage")

								if Folder_CreateStorage then
									local TeleportModel = Folder_CreateStorage:FindFirstChild("TeleportModel")

									if TeleportModel then
										local CenterPosi = TeleportModel:FindFirstChild("CenterPosi")

										if CenterPosi then
											local Character4 = u267.Character
											local v1093 = Character4 and Character4:FindFirstChild("HumanoidRootPart")

											if v1093 then
												local _pcall = pcall
												local u1095 = v1093
												local u1096 = CenterPosi

												pcall(function()
													u1095.CFrame = u1096.CFrame
												end)
											end
										end
									end
								end
							end

							local u1097 = false

							u270(v1085, function()
								return not u265.AutoSerpentRaidEnabled or u1097
							end, t106)

							repeat
								if not u265.AutoSerpentRaidEnabled then
									g1098 = true
								end

								if g1098 then
									break
								end

								task.wait(0.2)
							until not v1085()

							if not g1098 then
								u1097 = true
							end

							g1098 = false
							task.wait(0.3)
							u266(t106)

							for k in pairs(t106) do
								t106[k] = nil
							end

							local Character = u267.Character
							local v1101 = Character and Character:FindFirstChild("Humanoid")

							if v1101 then
								v1101.PlatformStand = false
							end

							u268()
						end
					end)
				end

				local spawn = task.spawn
				local u272 = t98
				local u273 = v152
				local u274 = LocalPlayer
				local u275 = v151
				local u276 = vector3
				local u277 = Workspace
				local u278 = v189

				local function u279()
					local Folder_Monster = u191:FindFirstChild("Folder_Monster")

					if Folder_Monster then
						local Character = u192.Character
						local v850 = Character and Character:FindFirstChild("HumanoidRootPart")
						local v851 = nil
						local n13 = 1e999

						for _, child in ipairs(Folder_Monster:GetChildren()) do
							if child:IsA("Model") and child.Name:sub(1, 2) == "PG" then
								local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

								if Humanoid and Humanoid.Health > 0 then
									local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

									if not v850 or not HumanoidRootPart then
										if not v851 then
											v851 = child
										end
									else
										local Magnitude = (v850.Position - HumanoidRootPart.Position).Magnitude

										if Magnitude < n13 then
											n13 = Magnitude
											v851 = child
										end
									end
								end
							end
						end

						return v851
					end

					return nil
				end

				local u280 = v203

				spawn(function()
					local t107 = {}
					local v1103 = false
					local n14 = 0
					local g1112 = nil
					local HumanoidRootPart = nil
					local g1127 = nil
					local Character = nil

					repeat
						local g1105 = false

						repeat
							repeat
								while true do
									repeat
										repeat
											repeat
												while true do
													task.wait(0.1)

													if u272.AutoRaceRaidEnabled then
														break
													end

													u273(t107)

													for k in pairs(t107) do
														t107[k] = nil
													end

													v1103 = false
													n14 = 0

													local Character5 = u274.Character
													local v1108 = Character5 and Character5:FindFirstChild("Humanoid")

													if v1108 and v1108.PlatformStand then
														v1108.PlatformStand = false
														u275()
													end
												end

												Character = u274.Character
											until Character

											local Humanoid = Character:FindFirstChild("Humanoid")
										until Humanoid and not (Humanoid.Health <= 0)

										HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
									until HumanoidRootPart

									if not u272.AutoStartRaceRaidEnabled then
										v1103 = false
										n14 = 0
										g1112 = true
									end

									if g1112 then
										break
									end

									if not v1103 then
										break
									end

									local timestamp = tick()

									if not (timestamp - n14 >= 3) then
										g1112 = true
									end

									if g1112 then
										break
									end

									n14 = timestamp

									if not ((HumanoidRootPart.Position - u276).Magnitude <= 20) then
										g1112 = true
									end

									if g1112 then
										break
									end

									pcall(function()
										game:GetService("ReplicatedStorage").Service.RacePowerGameService.Event.RemoteFunction_RacePowerGame
											:InvokeServer("StartGame")
									end)
									task.wait(0.5)

									if u272.AutoRaceRaidEnabled then
										local Folder_CreateStorage = u277:FindFirstChild("Folder_CreateStorage")
										local CenterPosi

										if Folder_CreateStorage then
											local TeleportModel = Folder_CreateStorage:FindFirstChild("TeleportModel")

											if TeleportModel then
												CenterPosi = TeleportModel:FindFirstChild("CenterPosi")
											else
												CenterPosi = nil
											end
										else
											CenterPosi = nil
										end

										if CenterPosi then
											local _pcall = pcall
											local u1118 = HumanoidRootPart
											local u1119 = CenterPosi

											pcall(function()
												u1118.CFrame = u1119.CFrame
											end)
										end

										g1112 = true
									end

									if g1112 then
										break
									end
								end

								if g1112 then
									break
								end

								if g1112 then
									break
								end

								if g1112 then
									break
								end

								if g1112 then
									break
								end

								u278("-3182.57495, 1241.93835, -5254.56104, 1, 0, 0, 0, 1, 0, 0, 0, 1")
								task.wait(0.3)
							until u272.AutoRaceRaidEnabled

							if g1112 then
								break
							end

							if g1112 then
								break
							end

							if g1112 then
								break
							end

							if g1112 then
								break
							end

							pcall(function()
								game:GetService("ReplicatedStorage").Service.RacePowerGameService.Event.RemoteFunction_RacePowerGame:InvokeServer("StartGame")
							end)
							task.wait(0.5)
						until u272.AutoRaceRaidEnabled

						if not g1112 then
							if not g1112 then
								if not g1112 then
									if not g1112 then
										local Folder_CreateStorage = u277:FindFirstChild("Folder_CreateStorage")
										local CenterPosi

										if Folder_CreateStorage then
											local TeleportModel = Folder_CreateStorage:FindFirstChild("TeleportModel")

											if TeleportModel then
												CenterPosi = TeleportModel:FindFirstChild("CenterPosi")
											else
												CenterPosi = nil
											end
										else
											CenterPosi = nil
										end

										if CenterPosi then
											local _pcall = pcall
											local u1124 = HumanoidRootPart
											local u1125 = CenterPosi

											pcall(function()
												u1124.CFrame = u1125.CFrame
											end)
										end

										v1103 = true
										n14 = tick()
									end
								end
							end
						end

						g1112 = false

						if u279() then
							local u1126 = false

							u280(u279, function()
								return not u272.AutoRaceRaidEnabled or u1126
							end, t107)

							repeat
								if not u272.AutoRaceRaidEnabled then
									g1127 = true
								end

								if g1127 then
									break
								end

								task.wait(0.2)
							until not u279()

							if not g1127 then
								u1126 = true
							end

							g1127 = false
							task.wait(0.3)
							u273(t107)

							for k in pairs(t107) do
								t107[k] = nil
							end

							local Character6 = u274.Character
							local v1130 = Character6 and Character6:FindFirstChild("Humanoid")

							if v1130 then
								v1130.PlatformStand = false
							end

							u275()
						else
							u273(t107)

							for k in pairs(t107) do
								t107[k] = nil
							end

							local Humanoid = Character:FindFirstChild("Humanoid")

							if Humanoid and Humanoid.PlatformStand then
								Humanoid.PlatformStand = false
								u275()
							end
						end

						g1105 = true
					until not g1105
				end)

				local spawn5 = task.spawn
				local u282 = t98
				local u283 = v152
				local u284 = LocalPlayer
				local u285 = v151

				local function u286()
					local Folder_Monster = u193:FindFirstChild("Folder_Monster")

					if Folder_Monster then
						local Character = u194.Character
						local v860 = Character and Character:FindFirstChild("HumanoidRootPart")
						local v861 = nil
						local n15 = 1e999

						for _, child in ipairs(Folder_Monster:GetChildren()) do
							if child:IsA("Model") and child.Name:sub(1, 2) == "TG" then
								local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

								if Humanoid and Humanoid.Health > 0 then
									local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

									if not v860 or not HumanoidRootPart then
										if not v861 then
											v861 = child
										end
									else
										local Magnitude = (v860.Position - HumanoidRootPart.Position).Magnitude

										if Magnitude < n15 then
											n15 = Magnitude
											v861 = child
										end
									end
								end
							end
						end

						return v861
					end

					return nil
				end

				local u287 = v203

				spawn5(function()
					local t108 = {}
					local g1141 = nil

					while true do
						while true do
							while true do
								task.wait(0.1)

								if u282.AutoThunderIceRaidEnabled then
									break
								end

								u283(t108)

								for k in pairs(t108) do
									t108[k] = nil
								end

								local Character = u284.Character
								local v1136 = Character and Character:FindFirstChild("Humanoid")

								if v1136 and v1136.PlatformStand then
									v1136.PlatformStand = false
									u285()
								end
							end

							if u286() then
								break
							end

							u283(t108)

							for k in pairs(t108) do
								t108[k] = nil
							end

							local Character = u284.Character
							local v1139 = Character and Character:FindFirstChild("Humanoid")

							if v1139 and v1139.PlatformStand then
								v1139.PlatformStand = false
								u285()
							end

							task.wait(0.3)
						end

						local u1140 = false

						u287(u286, function()
							return not u282.AutoThunderIceRaidEnabled or u1140
						end, t108)

						repeat
							if not u282.AutoThunderIceRaidEnabled then
								g1141 = true
							end

							if g1141 then
								break
							end

							task.wait(0.2)
						until not u286()

						if not g1141 then
							u1140 = true
						end

						g1141 = false
						task.wait(0.3)
						u283(t108)

						for k in pairs(t108) do
							t108[k] = nil
						end

						local Character = u284.Character
						local v1144 = Character and Character:FindFirstChild("Humanoid")

						if v1144 then
							v1144.PlatformStand = false
						end

						u285()
					end
				end)

				local spawn6 = task.spawn
				local u289 = t98

				spawn6(function()
					while true do
						task.wait(3)

						if u289.AutoSpawnMoonGodEnabled then
							pcall(function()
								game:GetService("ReplicatedStorage").Service.CreateWorldBossService.Event.RemoteFunction_CreateWorldBoss:InvokeServer("Create")
							end)
						end
					end
				end)

				local spawn7 = task.spawn
				local u291 = t98
				local u292 = v119

				spawn7(function()
					while true do
						task.wait(0.5)

						if u291.PVPAutoEquipWeaponType then
							u292(u291.PVPAutoEquipWeaponType)
							task.wait(0.2)
						end
					end
				end)

				local spawn8 = task.spawn
				local u294 = t98
				local u295 = Workspace
				local u296 = LocalPlayer
				local u297 = ReplicatedStorage

				spawn8(function()
					while true do
						task.wait(0.1)

						if u294.KillAuraEnabled then
							local Folder_Monster = u295:FindFirstChild("Folder_Monster")

							if Folder_Monster then
								local Character = u296.Character
								local v1147 = Character and Character:FindFirstChild("HumanoidRootPart")

								if v1147 then
									for _, child in ipairs(Folder_Monster:GetChildren()) do
										if child:IsA("Model") then
											local Humanoid = child:FindFirstChildWhichIsA("Humanoid")

											if Humanoid and Humanoid.Health > 0 then
												local HumanoidRootPart = child:FindFirstChild("HumanoidRootPart")

												if HumanoidRootPart and (v1147.Position - HumanoidRootPart.Position).Magnitude <= 50 and child then
													local _pcall = pcall
													local u1153 = child

													pcall(function()
														u297.SynService.Event.eve_SkillSyn:FireServer("effect", "Set", {
															AttackCharacterTp = {
																u1153,
															},
															Mod = u297.Folder_Effects.Weapon.M1,
															Character = u296.Character,
															UseAnima = 2,
															CharacterConfig = {
																Fight = {},
																EquipageUse = {},
																Config = {},
															},
														})
													end)
												end
											end
										end
									end
								end
							end
						end
					end
				end)

				local spawn9 = task.spawn
				local u299 = t98
				local u300 = LocalPlayer
				local u301 = Players
				local u302 = Workspace
				local u303 = ReplicatedStorage

				spawn9(function()
					while true do
						task.wait(0.1)

						if u299.PlayerKillAuraEnabled then
							local Character = u300.Character
							local v1155 = Character and Character:FindFirstChild("HumanoidRootPart")

							if v1155 then
								for _, player in ipairs(u301:GetPlayers()) do
									if player ~= u300 then
										local playerName = u302:FindFirstChild(player.Name)

										if playerName then
											local HumanoidRootPart = playerName:FindFirstChild("HumanoidRootPart")

											if HumanoidRootPart and (v1155.Position - HumanoidRootPart.Position).Magnitude <= 50 then
												local _pcall = pcall
												local u1161 = playerName

												pcall(function()
													u303.SynService.Event.eve_SkillSyn:FireServer("effect", "Set", {
														AttackCharacterTp = {
															u1161,
														},
														Mod = u303.Folder_Effects.Weapon.M1,
														Character = u300.Character,
														UseAnima = 3,
														CharacterConfig = {
															EquipageUse = {
																GiveSkill = {
																	["1"] = {},
																	["2"] = {},
																},
															},
															Fight = {},
															Config = {},
															_TypeLevels = {},
														},
													})
												end)
											end
										end
									end
								end
							end
						end
					end
				end)

				local spawn10 = task.spawn
				local u305 = t98
				local u306 = ReplicatedStorage
				local u307 = LocalPlayer

				spawn10(function()
					while true do
						task.wait(1)

						if u305.AutoFocusEnabled then
							pcall(function()
								u306.SynService.Event.eve_SkillSyn:FireServer("syn", "Set", {
									Mod = u306.Folder_Effects.Skill.Skill_J1,
									CharacterConfig = {
										Config = {},
										Fight = {},
									},
									Character = u307.Character,
									Level = 2,
									Open = true,
									SkillConfig = {
										Type = "Common",
										name = "",
										id = "J1",
										UseId = "J1",
										Config = {},
									},
								})
							end)
						end
					end
				end)

				local spawn11 = task.spawn
				local u309 = t98
				local u310 = ReplicatedStorage
				local u311 = LocalPlayer

				spawn11(function()
					while true do
						task.wait(1)

						if u309.AutoRealmEnabled then
							pcall(function()
								u310.SynService.Event.eve_SkillSyn:FireServer("syn", "Set", {
									Mod = u310.Folder_Effects.Skill.Skill_R1,
									CharacterConfig = {
										Fight = {},
										Config = {},
									},
									Character = u311.Character,
									Level = 1,
									Open = true,
									SkillConfig = {
										Type = "Common",
										name = "",
										id = "R1",
										UseId = "R1",
										Config = {},
									},
								})
							end)
						end
					end
				end)

				local spawn12 = task.spawn
				local u313 = t98
				local u314 = LocalPlayer

				spawn12(function()
					while true do
						task.wait(0.1)

						if u313.InfiniteStaminaEnabled then
							local Character = u314.Character

							if Character then
								local _pcall = pcall
								local u1164 = Character

								pcall(function()
									local MaxEnergy = u1164:GetAttribute("MaxEnergy")
									local Energy = u1164:GetAttribute("Energy")

									if u313.InfiniteStaminaOrigMax == nil and MaxEnergy ~= nil then
										u313.InfiniteStaminaOrigMax = MaxEnergy
									end

									if u313.InfiniteStaminaOrigVal == nil and Energy ~= nil then
										u313.InfiniteStaminaOrigVal = Energy
									end

									u1164:SetAttribute("MaxEnergy", 1e999)
									u1164:SetAttribute("Energy", 1e999)
								end)
							end
						end
					end
				end)

				local spawn13 = task.spawn
				local u316 = t98
				local u317 = ReplicatedStorage

				spawn13(function()
					while true do
						task.wait(0.5)

						if u316.AutoStatEnabled then
							local t109 = {}

							for k in pairs(u316.SelectedAutoStats) do
								table.insert(t109, k)
							end

							if #t109 ~= 0 then
								local v1167 = t109[(u316.AutoStatIndex - 1) % #t109 + 1]

								u316.AutoStatIndex = u316.AutoStatIndex + 1

								local _pcall = pcall
								local u1169 = v1167

								pcall(function()
									u317.Event.eve_UpConfig:FireServer({
										UseNumber = u316.AutoStatPoints,
										Name = "UseAdd",
										AddName = u1169,
									})
								end)
							end
						end
					end
				end)

				local spawn14 = task.spawn
				local u319 = t98
				local u320 = LocalPlayer
				local u321 = ReplicatedStorage

				spawn14(function()
					while true do
						task.wait(0.5)

						if u319.SelectedAutoQuest and not u319.AutoFarmLevelEnabled then
							local ok, result = pcall(function()
								return u320.PlayerGui.UI_Game.UI_Task.Frame_View.Visible
							end)

							if ok and not result then
								local v1172 = u319.SelectedAutoQuest:match("^(Lv%d+)")

								if v1172 then
									local _pcall = pcall
									local u1174 = v1172

									pcall(function()
										u321.Service.TaskService.Event.RemoteFunction_Task:InvokeServer({
											Name = "GetTask",
											TaskId = u1174,
										})
									end)
								end

								task.wait(1)
							end
						end
					end
				end)

				local spawn15 = task.spawn
				local u323 = t98

				spawn15(function()
					while true do
						task.wait(60)

						if u323.AutoCollectPlaytimeEnabled then
							for i = 1, 9 do
								local v1176 = i

								if not u323.AutoCollectPlaytimeEnabled then
									break
								end

								local _pcall = pcall
								local u1178 = v1176

								pcall(function()
									local eve_OnlineTimeReward = game:GetService("ReplicatedStorage")
										:WaitForChild("Service")
										:WaitForChild("OnlineTimeRewardService")
										:WaitForChild("Event")
										:WaitForChild("eve_OnlineTimeReward")

									eve_OnlineTimeReward:FireServer((tostring(u1178)))
								end)

								if v1176 < 9 then
									task.wait(1)
								end
							end
						end
					end
				end)

				local spawn16 = task.spawn
				local u325 = t98

				spawn16(function()
					while true do
						task.wait(60)

						if u325.AutoRollDemonEnabled then
							pcall(function()
								game:GetService("ReplicatedStorage")
									:WaitForChild("Service")
									:WaitForChild("RandomShopService")
									:WaitForChild("Event")
									:WaitForChild("RemoteFunction_RandomShop")
									:InvokeServer("Buy", "RandomShop_Ghost", "Ghost")
							end)
						end
					end
				end)

				local spawn17 = task.spawn
				local u327 = t98

				spawn17(function()
					while true do
						task.wait(60)

						if u327.AutoRollBreathEnabled then
							pcall(function()
								game:GetService("ReplicatedStorage")
									:WaitForChild("Service")
									:WaitForChild("RandomShopService")
									:WaitForChild("Event")
									:WaitForChild("RemoteFunction_RandomShop")
									:InvokeServer("Buy", "RandomShop_Breath", "Breath")
							end)
						end
					end
				end)
			end

			local spawn = task.spawn
			local u329 = t98
			local u330 = LocalPlayer

			spawn(function()
				local t110 = {}

				while true do
					task.wait(0.5)

					if u329.AutoStoreDemonBreathEnabled then
						local Backpack = u330:FindFirstChild("Backpack")

						if Backpack then
							for _, child in ipairs(Backpack:GetChildren()) do
								if child:IsA("Tool") then
									local _pcall = pcall
									local u1184 = child
									local v1185, v1186 = pcall(function()
										return u1184:GetAttribute("Type")
									end)

									if v1185 and v1186 == "LearningProp" then
										local childName = child.Name
										local v1188 = t110[childName]
										local timestamp = tick()

										if not v1188 or not (timestamp - v1188 < 10) then
											t110[childName] = timestamp
											local u1191 = childName

											pcall(function()
												game:GetService("ReplicatedStorage")
													:WaitForChild("southRPG")
													:WaitForChild("ToolService")
													:WaitForChild("Event")
													:WaitForChild("RemoteFunction_LearningProp")
													:InvokeServer("InEquipageBackpack", {
														Tool = u330:WaitForChild("Backpack"):WaitForChild(u1191),
													})
											end)
										end
									end
								end
							end
						end
					else
						t110 = {}
					end
				end
			end)

			local spawn18 = task.spawn
			local u332 = LocalPlayer
			local u333 = t98
			local u334 = VirtualUser

			spawn18(function()
				u332.Idled:Connect(function()
					if u333.AntiAFKEnabled then
						pcall(function()
							u334:CaptureController()
							local v1877 = (function(...)
								local t111 = { ... }

								t111.n = select("#", ...)

								return t111
							end)(Vector2.new())

							unpack(v1877, 1, 1)
							u334:ClickButton2(unpack(v1877, 1, v1877.n))
						end)

						return
					end
				end)
			end)
			local u339 = Workspace

			local function v340()
				local t112 = {}
				local Folder_GameMap = u339:FindFirstChild("Folder_GameMap")

				if Folder_GameMap then
					for _, child in ipairs(Folder_GameMap:GetChildren()) do
						if child:IsA("Folder") then
							for _, child2 in ipairs(child:GetChildren()) do
								if child2:IsA("Model") then
									local v1198 = false

									for _, descendant in ipairs(child2:GetDescendants()) do
										if
											descendant.Name == "TouchPart"
											and (
												descendant:IsA("BasePart")
												or descendant:IsA("UnionOperation")
												or descendant:IsA("MeshPart")
												or descendant:IsA("Model")
											)
										then
											v1198 = true

											break
										end
									end

									if v1198 then
										table.insert(t112, child2)
									end
								end
							end
						end
					end

					return t112
				end

				return t112
			end

			local u341 = v340

			function v342()
				local t113 = {}

				for _, v in ipairs((u341())) do
					local vName = v.Name

					table.insert(t113, vName)
				end

				if #t113 == 0 then
					table.insert(t113, "(None)")
				end

				return t113
			end

			u343 = Workspace

			local u344 = t98

			function u345()
				for _, v in pairs(u344.ESPObjects) do
					if v.highlight and v.highlight.Parent then
						v.highlight:Destroy()
					end

					if v.billboard and v.billboard.Parent then
						v.billboard:Destroy()
					end
				end

				u344.ESPObjects = {}
			end

			local u346 = Workspace

			local function v347(p21, p22, p23)
				if not p23[p21] then
					local v1220 = p21:FindFirstChild("HumanoidRootPart") or (p21:FindFirstChildWhichIsA("BasePart") or p21.PrimaryPart)

					if v1220 then
						local SelectionBox = Instance.new("SelectionBox")

						SelectionBox.Color3 = Color3.fromRGB(120, 80, 255)
						SelectionBox.LineThickness = 0.07
						SelectionBox.SurfaceTransparency = 0.85
						SelectionBox.SurfaceColor3 = Color3.fromRGB(120, 80, 255)
						SelectionBox.Adornee = p21
						SelectionBox.Parent = u346.CurrentCamera

						local BillboardGui = Instance.new("BillboardGui")

						BillboardGui.AlwaysOnTop = true
						BillboardGui.Size = UDim2.new(0, 160, 0, 50)
						BillboardGui.StudsOffset = Vector3.new(0, 4, 0)
						BillboardGui.Adornee = v1220
						BillboardGui.Parent = u346.CurrentCamera

						local TextLabel = Instance.new("TextLabel")

						TextLabel.Size = UDim2.new(1, 0, 0.52, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.TextColor3 = Color3.fromRGB(200, 170, 255)
						TextLabel.TextStrokeTransparency = 0.35
						TextLabel.TextStrokeColor3 = Color3.fromRGB(20, 5, 50)
						TextLabel.Font = Enum.Font.GothamBold
						TextLabel.TextSize = 14
						TextLabel.Text = p22 or p21.Name
						TextLabel.Parent = BillboardGui

						local TextLabel2 = Instance.new("TextLabel")

						TextLabel2.Size = UDim2.new(1, 0, 0.48, 0)
						TextLabel2.Position = UDim2.new(0, 0, 0.52, 0)
						TextLabel2.BackgroundTransparency = 1
						TextLabel2.TextColor3 = Color3.fromRGB(255, 220, 100)
						TextLabel2.TextStrokeTransparency = 0.35
						TextLabel2.TextStrokeColor3 = Color3.fromRGB(20, 5, 50)
						TextLabel2.Font = Enum.Font.GothamBold
						TextLabel2.TextSize = 13
						TextLabel2.Text = "-- m"
						TextLabel2.Parent = BillboardGui
						p23[p21] = {
							highlight = SelectionBox,
							billboard = BillboardGui,
							distLabel = TextLabel2,
							rootPart = v1220,
						}

						return
					end

					return
				end
			end

			local u348 = Workspace

			function u349()
				local t114 = {}
				local Folder_GameOutside = u348:FindFirstChild("Folder_GameOutside")

				if Folder_GameOutside then
					local TimingShop = Folder_GameOutside:FindFirstChild("TimingShop")

					if TimingShop then
						for _, child in ipairs(TimingShop:GetChildren()) do
							if child:IsA("Model") and child.Name == "ShopModel" then
								table.insert(t114, child)
							end
						end

						return t114
					end

					return t114
				end

				return t114
			end

			local u350 = t98

			function u351()
				for _, v in pairs(u350.SecretTravelerESPObjects) do
					if v.highlight and v.highlight.Parent then
						v.highlight:Destroy()
					end

					if v.billboard and v.billboard.Parent then
						v.billboard:Destroy()
					end
				end

				u350.SecretTravelerESPObjects = {}
			end

			local Heartbeat = RunService.Heartbeat
			local u353 = t98
			local u354 = LocalPlayer
			local u355 = v340
			local u356 = v347

			Heartbeat:Connect(function()
				if u353.ServiceNPCESPEnabled then
					local Character = u354.Character
					local v1233 = Character and Character:FindFirstChild("HumanoidRootPart")
					local v1234 = u355()
					local t115 = {}

					for _, v in ipairs(v1234) do
						t115[v] = v.Name
					end

					for k, v in pairs(t115) do
						if not u353.ESPObjects[k] then
							u356(k, v, u353.ESPObjects)
						end
					end

					local t116 = {}

					for k in pairs(u353.ESPObjects) do
						if not t115[k] then
							table.insert(t116, k)
						end
					end

					for _, v in ipairs(t116) do
						local v1244 = u353.ESPObjects[v]

						if v1244.highlight and v1244.highlight.Parent then
							v1244.highlight:Destroy()
						end

						if v1244.billboard and v1244.billboard.Parent then
							v1244.billboard:Destroy()
						end

						u353.ESPObjects[v] = nil
					end

					if v1233 then
						for _, v in pairs(u353.ESPObjects) do
							if v.rootPart and v.rootPart.Parent then
								local distLabel = v.distLabel
								local Magnitude = (v1233.Position - v.rootPart.Position).Magnitude

								distLabel.Text = math.floor(Magnitude) .. " m"
							end
						end
					end

					return
				end
			end)

			local Heartbeat2 = RunService.Heartbeat
			local u358 = t98
			local u359 = LocalPlayer
			local u360 = v347

			Heartbeat2:Connect(function()
				if u358.SecretTravelerESPEnabled then
					local Character = u359.Character
					local v1250 = Character and Character:FindFirstChild("HumanoidRootPart")
					local v1251 = u349()
					local t117 = {}

					for _, v in ipairs(v1251) do
						t117[v] = true
					end

					for k in pairs(t117) do
						if not u358.SecretTravelerESPObjects[k] then
							u360(k, "Secret Traveler", u358.SecretTravelerESPObjects)
						end
					end

					local t118 = {}

					for k in pairs(u358.SecretTravelerESPObjects) do
						if not t117[k] then
							table.insert(t118, k)
						end
					end

					for _, v in ipairs(t118) do
						local v1260 = u358.SecretTravelerESPObjects[v]

						if v1260.highlight and v1260.highlight.Parent then
							v1260.highlight:Destroy()
						end

						if v1260.billboard and v1260.billboard.Parent then
							v1260.billboard:Destroy()
						end

						u358.SecretTravelerESPObjects[v] = nil
					end

					if v1250 then
						for _, v in pairs(u358.SecretTravelerESPObjects) do
							if v.rootPart and v.rootPart.Parent then
								local distLabel = v.distLabel
								local Magnitude = (v1250.Position - v.rootPart.Position).Magnitude

								distLabel.Text = math.floor(Magnitude) .. " m"
							end
						end
					end

					return
				end
			end)

			local spawn19 = task.spawn
			local u362 = t98
			local u363 = v342

			spawn19(function()
				while true do
					task.wait(3)

					if u362.ServiceNPCTPDropdownRef then
						local v1265 = u363()
						local v1266 = #v1265 ~= #u362.lastServiceNPCNames

						if not v1266 then
							local t119 = {}

							for _, v in ipairs(u362.lastServiceNPCNames) do
								t119[v] = true
							end

							for _, v in ipairs(v1265) do
								if not t119[v] then
									v1266 = true

									break
								end
							end
						end

						if v1266 then
							u362.lastServiceNPCNames = v1265

							local ServiceNPCTPDropdownRef = u362.ServiceNPCTPDropdownRef

							if ServiceNPCTPDropdownRef then
								local _pcall = pcall
								local u1274 = ServiceNPCTPDropdownRef
								local u1275 = v1265

								pcall(function()
									if not u1274.UpdateOptions then
										if not u1274.Refresh then
											if u1274.SetOptions then
												u1274:SetOptions(u1275)
											end

											return
										end

										u1274:Refresh(u1275)

										return
									end

									u1274:UpdateOptions(u1275)
								end)
							end
						end
					end
				end
			end)

			local u364 = t98

			function u365()
				for _, v in pairs(u364.PlayerESPObjects) do
					local _pcall = pcall
					local u1279 = v

					pcall(function()
						if u1279.billboard and u1279.billboard.Parent then
							u1279.billboard:Destroy()
						end

						if u1279.selBox and u1279.selBox.Parent then
							u1279.selBox:Destroy()
						end
					end)
				end

				u364.PlayerESPObjects = {}
			end

			local u366 = LocalPlayer
			local u367 = Workspace
			local u368 = t98

			function u369(p24)
				if p24 ~= u366 then
					local p24Name = u367:FindFirstChild(p24.Name)

					if p24Name then
						if not u368.PlayerESPObjects[p24] then
							local v1282 = p24Name:FindFirstChild("HumanoidRootPart") or p24Name:FindFirstChildWhichIsA("BasePart")

							if v1282 then
								local SelectionBox = Instance.new("SelectionBox")

								SelectionBox.Color3 = Color3.fromRGB(255, 60, 60)
								SelectionBox.LineThickness = 0.07
								SelectionBox.SurfaceTransparency = 0.88
								SelectionBox.SurfaceColor3 = Color3.fromRGB(255, 60, 60)
								SelectionBox.Adornee = p24Name
								SelectionBox.Parent = u367.CurrentCamera

								local BillboardGui = Instance.new("BillboardGui")

								BillboardGui.AlwaysOnTop = true
								BillboardGui.Size = UDim2.new(0, 160, 0, 40)
								BillboardGui.StudsOffset = Vector3.new(0, 3, 0)
								BillboardGui.Adornee = v1282
								BillboardGui.Parent = u367.CurrentCamera

								local TextLabel = Instance.new("TextLabel")

								TextLabel.Size = UDim2.new(1, 0, 0.55, 0)
								TextLabel.BackgroundTransparency = 1
								TextLabel.TextColor3 = Color3.fromRGB(200, 170, 255)
								TextLabel.TextStrokeTransparency = 0.35
								TextLabel.TextStrokeColor3 = Color3.fromRGB(20, 5, 50)
								TextLabel.Font = Enum.Font.GothamBold
								TextLabel.TextSize = 14
								TextLabel.TextXAlignment = Enum.TextXAlignment.Center
								TextLabel.Text = p24.Name
								TextLabel.Parent = BillboardGui

								local TextLabel3 = Instance.new("TextLabel")

								TextLabel3.Size = UDim2.new(1, 0, 0.45, 0)
								TextLabel3.Position = UDim2.new(0, 0, 0.55, 0)
								TextLabel3.BackgroundTransparency = 1
								TextLabel3.TextColor3 = Color3.fromRGB(255, 220, 100)
								TextLabel3.TextStrokeTransparency = 0.35
								TextLabel3.TextStrokeColor3 = Color3.fromRGB(20, 5, 50)
								TextLabel3.Font = Enum.Font.GothamBold
								TextLabel3.TextSize = 13
								TextLabel3.TextXAlignment = Enum.TextXAlignment.Center
								TextLabel3.Text = "0 m"
								TextLabel3.Parent = BillboardGui
								u368.PlayerESPObjects[p24] = {
									model = p24Name,
									billboard = BillboardGui,
									selBox = SelectionBox,
									rootPart = v1282,
									distLabel = TextLabel3,
								}

								return
							end

							return
						end

						return
					end

					return
				end
			end
			local Heartbeat3 = RunService.Heartbeat
			local u372 = t98
			local u373 = LocalPlayer
			local u374 = Players
			local u375 = Workspace

			Heartbeat3:Connect(function()
				if u372.PlayerESPEnabled then
					local Character = u373.Character
					local v1292 = Character and Character:FindFirstChild("HumanoidRootPart")

					for _, player in pairs(u374:GetPlayers()) do
						if player ~= u373 then
							local playerName = u375:FindFirstChild(player.Name)

							if playerName then
								if not u372.PlayerESPObjects[player] then
									u369(player)
								end

								local v1296 = u372.PlayerESPObjects[player]

								if v1296 then
									local v1297 = playerName:FindFirstChild("HumanoidRootPart") or playerName:FindFirstChildWhichIsA("BasePart")

									if v1297 and v1297 ~= v1296.rootPart then
										v1296.rootPart = v1297

										if v1296.billboard then
											v1296.billboard.Adornee = v1297
										end

										if v1296.selBox then
											v1296.selBox.Adornee = playerName
										end
									end

									if v1292 and v1296.rootPart and v1296.rootPart.Parent then
										local distLabel = v1296.distLabel
										local Magnitude = (v1292.Position - v1296.rootPart.Position).Magnitude

										distLabel.Text = math.floor(Magnitude) .. " m"
									end
								end
							else
								local v1300 = u372.PlayerESPObjects[player]

								if v1300 then
									local _pcall = pcall
									local u1302 = v1300

									pcall(function()
										if u1302.billboard and u1302.billboard.Parent then
											u1302.billboard:Destroy()
										end

										if u1302.selBox and u1302.selBox.Parent then
											u1302.selBox:Destroy()
										end
									end)
									u372.PlayerESPObjects[player] = nil
								end
							end
						end
					end

					local t120 = {}

					for k in pairs(u372.PlayerESPObjects) do
						if not u374:FindFirstChild(k.Name) then
							table.insert(t120, k)
						end
					end

					for _, v in ipairs(t120) do
						local v1307 = u372.PlayerESPObjects[v]

						if v1307 then
							local _pcall = pcall
							local u1309 = v1307

							pcall(function()
								if u1309.billboard and u1309.billboard.Parent then
									u1309.billboard:Destroy()
								end

								if u1309.selBox and u1309.selBox.Parent then
									u1309.selBox:Destroy()
								end
							end)
							u372.PlayerESPObjects[v] = nil
						end
					end

					return
				end
			end)

			local u376 = t98

			function v377()
				for _, v in pairs(u376.ESPLineObjects) do
					local _pcall = pcall
					local u1313 = v

					pcall(function()
						if u1313.line and u1313.line.Parent then
							u1313.line:Destroy()
						end

						if u1313.outline and u1313.outline.Parent then
							u1313.outline:Destroy()
						end
					end)
				end

				u376.ESPLineObjects = {}
			end

			local u378 = t98
			local u379 = LocalPlayer
			local Heartbeat4 = RunService.Heartbeat
			local u381 = t98
			local u382 = v377

			local function u383()
				if not u378.ESPLinesGui or not u378.ESPLinesGui.Parent then
					u378.ESPLinesGui = Instance.new("ScreenGui")
					u378.ESPLinesGui.Name = "SymbioteESPLinesGui"
					u378.ESPLinesGui.ResetOnSpawn = false
					u378.ESPLinesGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					u378.ESPLinesGui.DisplayOrder = 998
					u378.ESPLinesGui.IgnoreGuiInset = true
					u378.ESPLinesGui.Parent = u379.PlayerGui

					return
				end
			end

			local u384 = LocalPlayer
			local u385 = Workspace
			local u386 = Players

			Heartbeat4:Connect(function()
				if u381.ESPLinesEnabled then
					u383()

					local Character = u384.Character
					local v1318 = Character and Character:FindFirstChild("HumanoidRootPart")

					if v1318 then
						local CurrentCamera = u385.CurrentCamera
						local vector2 = Vector2.new(CurrentCamera.ViewportSize.X / 2, CurrentCamera.ViewportSize.Y)
						local v1321 = nil
						local n16 = 1e999

						for _, player in pairs(u386:GetPlayers()) do
							if player ~= u384 then
								local playerName = u385:FindFirstChild(player.Name)

								if playerName then
									local HumanoidRootPart = playerName:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										local Magnitude = (v1318.Position - HumanoidRootPart.Position).Magnitude

										if Magnitude < n16 then
											n16 = Magnitude
											v1321 = player
										end
									end
								end
							end
						end

						local t121 = {}

						for _, player in pairs(u386:GetPlayers()) do
							if player ~= u384 then
								local playerName = u385:FindFirstChild(player.Name)

								if playerName then
									local HumanoidRootPart = playerName:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										t121[player] = true

										if not u381.ESPLineObjects[player] then
											local ESPLineObjects = u381.ESPLineObjects
											local t122 = {}
											local ESPLinesGui = u381.ESPLinesGui
											local Frame = Instance.new("Frame")

											Frame.BorderSizePixel = 0
											Frame.AnchorPoint = Vector2.new(0.5, 0.5)
											Frame.ZIndex = 2
											Frame.Parent = ESPLinesGui
											t122.line = Frame

											local ESPLinesGui2 = u381.ESPLinesGui
											local Frame2 = Instance.new("Frame")

											Frame2.BorderSizePixel = 0
											Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
											Frame2.ZIndex = 1
											Frame2.Parent = ESPLinesGui2
											t122.outline = Frame2
											ESPLineObjects[player] = t122
										end

										local v1339 = u381.ESPLineObjects[player]
										local v1340 = player == v1321
										local v1341 = v1340 and Color3.fromRGB(255, 50, 50) or Color3.fromRGB(180, 80, 255)
										local v1342 = v1340 and 1.5 or 1
										local v1343 = v1340 and 2 or 1.5
										local v1344, v1345 = CurrentCamera:WorldToViewportPoint(HumanoidRootPart.Position)

										if v1345 then
											local vector2_2 = Vector2.new(v1344.X, v1344.Y)
											local v1347 = vector2_2.X - vector2.X
											local v1348 = vector2_2.Y - vector2.Y
											local v1349 = v1347 * v1347 + v1348 * v1348
											local v1350 = math.sqrt(v1349)

											if not (v1350 < 1) then
												local v1351 = math.atan2(v1348, v1347)
												local v1352 = math.deg(v1351)
												local v1353 = (vector2.X + vector2_2.X) / 2
												local v1354 = (vector2.Y + vector2_2.Y) / 2

												v1339.outline.Size = UDim2.new(0, v1350 + v1343, 0, v1342 + v1343)
												v1339.outline.Position = UDim2.new(0, v1353, 0, v1354)
												v1339.outline.Rotation = v1352
												v1339.outline.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
												v1339.outline.Visible = true
												v1339.line.Size = UDim2.new(0, v1350, 0, v1342)
												v1339.line.Position = UDim2.new(0, v1353, 0, v1354)
												v1339.line.Rotation = v1352
												v1339.line.BackgroundColor3 = v1341
												v1339.line.Visible = true
											else
												v1339.line.Visible = false
												v1339.outline.Visible = false
											end
										else
											v1339.line.Visible = false
											v1339.outline.Visible = false
										end
									end
								elseif u381.ESPLineObjects[player] then
									local v1355 = u381.ESPLineObjects[player]
									local _pcall = pcall
									local u1357 = v1355

									pcall(function()
										if u1357.outline and u1357.outline.Parent then
											u1357.outline:Destroy()
										end
									end)
									local u1359 = v1355

									pcall(function()
										if u1359.line and u1359.line.Parent then
											u1359.line:Destroy()
										end
									end)
									u381.ESPLineObjects[player] = nil
								end
							end
						end

						local t123 = {}

						for k in pairs(u381.ESPLineObjects) do
							if not t121[k] then
								table.insert(t123, k)
							end
						end

						for _, v in ipairs(t123) do
							local v1364 = u381.ESPLineObjects[v]
							local _pcall = pcall
							local u1366 = v1364

							pcall(function()
								if u1366.outline and u1366.outline.Parent then
									u1366.outline:Destroy()
								end
							end)
							local u1368 = v1364

							pcall(function()
								if u1368.line and u1368.line.Parent then
									u1368.line:Destroy()
								end
							end)
							u381.ESPLineObjects[v] = nil
						end

						return
					end

					return
				end

				if next(u381.ESPLineObjects) then
					u382()
				end
			end)

			local Heartbeat5 = RunService.Heartbeat
			local u388 = t98
			local u389 = Workspace

			Heartbeat5:Connect(function()
				if u388.SpectateEnabled and u388.SpectateTarget then
					local SpectateTargetName = u389:FindFirstChild(u388.SpectateTarget.Name)

					if SpectateTargetName then
						local HumanoidRootPart = SpectateTargetName:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							local CurrentCamera = u389.CurrentCamera

							CurrentCamera.CameraSubject = HumanoidRootPart
							CurrentCamera.CameraType = Enum.CameraType.Follow

							return
						end

						return
					end

					return
				end
			end)

			local Heartbeat6 = RunService.Heartbeat
			local u391 = t98
			local u392 = LocalPlayer
			local u393 = Players
			local u394 = Workspace

			Heartbeat6:Connect(function()
				if u391.LockCameraEnabled then
					local Character = u392.Character
					local v1373 = Character and Character:FindFirstChild("HumanoidRootPart")

					if v1373 then
						local v1374 = nil
						local n17 = 1e999

						for _, player in pairs(u393:GetPlayers()) do
							if player ~= u392 then
								local playerName = u394:FindFirstChild(player.Name)

								if playerName then
									local HumanoidRootPart = playerName:FindFirstChild("HumanoidRootPart")

									if HumanoidRootPart then
										local Magnitude = (v1373.Position - HumanoidRootPart.Position).Magnitude

										if Magnitude < n17 then
											n17 = Magnitude
											v1374 = player
										end
									end
								end
							end
						end

						if v1374 then
							local Name = u394:FindFirstChild(v1374.Name)

							if Name then
								local HumanoidRootPart = Name:FindFirstChild("HumanoidRootPart")

								if HumanoidRootPart then
									local CurrentCamera = u394.CurrentCamera

									CurrentCamera.CameraType = Enum.CameraType.Scriptable

									local v1384 = v1373.Position + Vector3.new(0, 5, 0) + (v1373.Position - HumanoidRootPart.Position).Unit * 15

									CurrentCamera.CFrame = CFrame.new(v1384, HumanoidRootPart.Position)

									return
								end

								return
							end

							return
						end

						return
					end

					return
				end
			end)

			local Heartbeat7 = RunService.Heartbeat
			local u396 = t98
			local u397 = LocalPlayer
			local u398 = Workspace

			Heartbeat7:Connect(function()
				if u396.LockCameraOnSelectedEnabled and u396.LockCameraSelectedTarget then
					local Character = u397.Character
					local v1386 = Character and Character:FindFirstChild("HumanoidRootPart")

					if v1386 then
						local LockCameraSelectedTargetName = u398:FindFirstChild(u396.LockCameraSelectedTarget.Name)

						if LockCameraSelectedTargetName then
							local HumanoidRootPart = LockCameraSelectedTargetName:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart then
								local CurrentCamera = u398.CurrentCamera

								CurrentCamera.CameraType = Enum.CameraType.Scriptable

								local v1390 = v1386.Position + Vector3.new(0, 5, 0) + (v1386.Position - HumanoidRootPart.Position).Unit * 15

								CurrentCamera.CFrame = CFrame.new(v1390, HumanoidRootPart.Position)

								return
							end

							return
						end

						return
					end

					return
				end
			end)
		end

		local u404 = Players
		local u405 = LocalPlayer

		function v406()
			local t124 = {}

			for _, player in ipairs(u404:GetPlayers()) do
				if player ~= u405 then
					local playerName = player.Name

					table.insert(t124, playerName)
				end
			end

			if #t124 == 0 then
				table.insert(t124, "(No players)")
			end

			return t124
		end
		local t125 = {}

		local spawn = task.spawn
		local u409 = t98
		local u410 = v406

		spawn(function()
			while true do
				task.wait(3)

				if u409.OrbitDropdownRef then
					local v1396 = u410()
					local t126 = {}

					for _, v in ipairs(v1396) do
						t126[v] = true
					end

					local v1400 = false

					for k in pairs(t126) do
						if not t125[k] then
							v1400 = true

							break
						end
					end

					if not v1400 then
						for k in pairs(t125) do
							if not t126[k] then
								v1400 = true

								break
							end
						end
					end

					if v1400 then
						t125 = t126

						local OrbitDropdownRef = u409.OrbitDropdownRef

						if OrbitDropdownRef then
							local _pcall = pcall
							local u1405 = OrbitDropdownRef
							local u1406 = v1396

							pcall(function()
								if not u1405.UpdateOptions then
									if not u1405.Refresh then
										if u1405.SetOptions then
											u1405:SetOptions(u1406)
										end

										return
									end

									u1405:Refresh(u1406)

									return
								end

								u1405:UpdateOptions(u1406)
							end)
						end

						if u409.OrbitTarget and not t126[u409.OrbitTarget.Name] then
							u409.OrbitEnabled = false

							if u409.OrbitConnection then
								u409.OrbitConnection:Disconnect()
								u409.OrbitConnection = nil
							end

							u409.OrbitTarget = nil
						end
					end
				end
			end
		end)

		local spawn20 = task.spawn
		local u412 = t98
		local u413 = v406
		local u414 = Workspace
		local u415 = LocalPlayer

		spawn20(function()
			while true do
				task.wait(3)

				if u412.SpectateDropdownRef then
					local v1407 = u413()
					local t127 = {}

					for _, v in ipairs(v1407) do
						t127[v] = true
					end

					local v1411 = false

					for k in pairs(t127) do
						if not u412.lastSpectatePlayerSet[k] then
							v1411 = true

							break
						end
					end

					if not v1411 then
						for k in pairs(u412.lastSpectatePlayerSet) do
							if not t127[k] then
								v1411 = true

								break
							end
						end
					end

					if v1411 then
						u412.lastSpectatePlayerSet = t127

						local SpectateDropdownRef = u412.SpectateDropdownRef

						if SpectateDropdownRef then
							local _pcall = pcall
							local u1416 = SpectateDropdownRef
							local u1417 = v1407

							pcall(function()
								if not u1416.UpdateOptions then
									if not u1416.Refresh then
										if u1416.SetOptions then
											u1416:SetOptions(u1417)
										end

										return
									end

									u1416:Refresh(u1417)

									return
								end

								u1416:UpdateOptions(u1417)
							end)
						end

						if u412.SpectateTarget and not t127[u412.SpectateTarget.Name] then
							u412.SpectateEnabled = false
							u412.SpectateTarget = nil
							pcall(function()
								local CurrentCamera = u414.CurrentCamera
								local Character = u415.Character
								local v1760 = Character and Character:FindFirstChild("Humanoid")

								if v1760 then
									CurrentCamera.CameraSubject = v1760
								end

								CurrentCamera.CameraType = Enum.CameraType.Custom
							end)
						end
					end
				end
			end
		end)

		local spawn21 = task.spawn
		local u417 = t98
		local u418 = v406
		local u419 = Workspace
		local u420 = LocalPlayer

		spawn21(function()
			while true do
				task.wait(3)

				if u417.LockCameraSelectedDropdownRef then
					local v1418 = u418()
					local t128 = {}

					for _, v in ipairs(v1418) do
						t128[v] = true
					end

					local v1422 = false

					for k in pairs(t128) do
						if not u417.lastLockCameraPlayerSet[k] then
							v1422 = true

							break
						end
					end

					if not v1422 then
						for k in pairs(u417.lastLockCameraPlayerSet) do
							if not t128[k] then
								v1422 = true

								break
							end
						end
					end

					if v1422 then
						u417.lastLockCameraPlayerSet = t128

						local LockCameraSelectedDropdownRef = u417.LockCameraSelectedDropdownRef

						if LockCameraSelectedDropdownRef then
							local _pcall = pcall
							local u1427 = LockCameraSelectedDropdownRef
							local u1428 = v1418

							pcall(function()
								if not u1427.UpdateOptions then
									if not u1427.Refresh then
										if u1427.SetOptions then
											u1427:SetOptions(u1428)
										end

										return
									end

									u1427:Refresh(u1428)

									return
								end

								u1427:UpdateOptions(u1428)
							end)
						end

						if u417.LockCameraSelectedTarget and not t128[u417.LockCameraSelectedTarget.Name] then
							u417.LockCameraSelectedTarget = nil

							if u417.LockCameraOnSelectedEnabled then
								u417.LockCameraOnSelectedEnabled = false
								pcall(function()
									local CurrentCamera = u419.CurrentCamera
									local Character = u420.Character
									local v1763 = Character and Character:FindFirstChild("Humanoid")

									if v1763 then
										CurrentCamera.CameraSubject = v1763
									end

									CurrentCamera.CameraType = Enum.CameraType.Custom
								end)
							end
						end
					end
				end
			end
		end)

		local v421 = v5:CreateWindow({
			Title = " Symbiote ",
			Size = UDim2.new(0, 580, 0, 440),
		})
		local v422 = v421:CreateTab("Player")
		local v423 = v421:CreateTab("Auto Farm")

		v424 = v421:CreateTab("Various")
		v425 = v421:CreateTab("PVP")
		v426 = v421:CreateTab("Auto Raid")
		v422:AddLabel("MOVEMENT")

		local u427 = t98

		v422:AddToggle("Fly", function(p25)
			u427.FlyEnabled = p25

			if not p25 then
				if u427.FlyConnection then
					u427.FlyConnection:Disconnect()
					u427.FlyConnection = nil
				end

				if u427.FlyBodyVelocity then
					u427.FlyBodyVelocity:Destroy()
					u427.FlyBodyVelocity = nil
				end

				if u427.FlyBodyGyro then
					u427.FlyBodyGyro:Destroy()
					u427.FlyBodyGyro = nil
				end

				return
			end

			u130()
		end)

		local u428 = t98

		v422:AddSlider("Fly Speed", 50, 500, 50, function(p26)
			u428.FlySpeed = p26
		end)

		local u429 = t98
		local u430 = RunService
		local u431 = LocalPlayer

		local function u432()
			if u123.NoClipConnection then
				u123.NoClipConnection:Disconnect()
				u123.NoClipConnection = nil
			end

			local Character = u124.Character

			if Character then
				for _, descendant in pairs(Character:GetDescendants()) do
					if descendant:IsA("BasePart") then
						descendant.CanCollide = true
					end
				end
			end
		end

		v422:AddToggle("NoClip", function(p27)
			u429.NoClipEnabled = p27

			if not p27 then
				u432()

				return
			end

			if not u429.NoClipConnection then
				u429.NoClipConnection = u430.Stepped:Connect(function()
					local Character = u431.Character

					if Character then
						for _, descendant in pairs(Character:GetDescendants()) do
							if descendant:IsA("BasePart") then
								descendant.CanCollide = false
							end
						end
					end
				end)

				return
			end
		end)

		local u433 = t98
		local u434 = UserInputService
		local u435 = LocalPlayer

		v422:AddToggle("Infinite Jump", function(p28)
			u433.InfiniteJumpEnabled = p28

			if not p28 then
				if u433.InfiniteJumpConnection then
					u433.InfiniteJumpConnection:Disconnect()
					u433.InfiniteJumpConnection = nil
				end

				return
			end

			if u433.InfiniteJumpConnection then
				u433.InfiniteJumpConnection:Disconnect()
			end

			u433.InfiniteJumpConnection = u434.JumpRequest:Connect(function()
				if u433.InfiniteJumpEnabled then
					local Character = u435.Character
					local v1768 = Character and Character:FindFirstChild("Humanoid")

					if v1768 then
						v1768:ChangeState(Enum.HumanoidStateType.Jumping)
					end

					return
				end
			end)
		end)

		local u436 = t98
		local u437 = UserInputService
		local u438 = LocalPlayer
		local u439 = Workspace

		v422:AddToggle("CTRL + Click to TP", function(p29)
			u436.CtrlClickTPEnabled = p29

			if not p29 then
				if u436.CtrlClickTPConnection then
					u436.CtrlClickTPConnection:Disconnect()
					u436.CtrlClickTPConnection = nil
				end

				return
			end

			if not u436.CtrlClickTPConnection then
				u436.CtrlClickTPConnection = u437.InputBegan:Connect(function(input, gameProcessed)
					if u436.CtrlClickTPEnabled then
						if not gameProcessed then
							if input.UserInputType == Enum.UserInputType.MouseButton1 then
								if u437:IsKeyDown(Enum.KeyCode.LeftControl) or u437:IsKeyDown(Enum.KeyCode.RightControl) then
									local Character = u438.Character
									local v1772 = Character and Character:FindFirstChild("HumanoidRootPart")

									if v1772 then
										local CurrentCamera = u439.CurrentCamera
										local MouseLocation = u437:GetMouseLocation()
										local v1775 = CurrentCamera:ViewportPointToRay(MouseLocation.X, MouseLocation.Y)
										local raycastParams = RaycastParams.new()

										raycastParams.FilterType = Enum.RaycastFilterType.Exclude
										raycastParams.FilterDescendantsInstances = {
											Character,
										}

										local raycastResult = u439:Raycast(v1775.Origin, v1775.Direction * 5000, raycastParams)

										if raycastResult then
											v1772.CFrame = CFrame.new(raycastResult.Position + Vector3.new(0, 3, 0)) * (v1772.CFrame - v1772.CFrame.Position)
										end

										return
									end

									return
								end

								return
							end

							return
						end

						return
					end
				end)

				return
			end
		end)
		v422:AddSeparator()
		v422:AddLabel("SPEED")

		local u440 = t98
		local u441 = RunService
		local u442 = LocalPlayer

		v422:AddToggle("Walk Speed", function(p30)
			u440.WalkSpeedEnabled = p30

			if not p30 then
				if u440.WalkSpeedConnection then
					u440.WalkSpeedConnection:Disconnect()
					u440.WalkSpeedConnection = nil
				end

				return
			end

			if u440.WalkSpeedConnection then
				u440.WalkSpeedConnection:Disconnect()
			end

			u440.WalkSpeedConnection = u441.Heartbeat:Connect(function()
				if u440.WalkSpeedEnabled then
					local Character = u442.Character

					if Character then
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							local Humanoid = Character:FindFirstChild("Humanoid")

							if Humanoid and not (Humanoid.Health <= 0) then
								local MoveDirection = Humanoid.MoveDirection

								if not (MoveDirection.Magnitude < 0.1) then
									local HumanoidRootPartCFrame = HumanoidRootPart.CFrame
									local v1783 = HumanoidRootPartCFrame.Position + MoveDirection.Unit * u440.WalkSpeedSmoothing

									HumanoidRootPart.CFrame = CFrame.fromMatrix(
										v1783,
										HumanoidRootPartCFrame.RightVector,
										HumanoidRootPartCFrame.UpVector,
										-HumanoidRootPartCFrame.LookVector
									)

									return
								end

								return
							end

							return
						end

						return
					end

					return
				end
			end)
		end)

		local u443 = t98

		v422:AddSlider("Walk Speed Amount", 1, 5, 1, function(p31)
			u443.WalkSpeedSmoothing = p31
		end)

		local u444 = t98
		local u445 = RunService
		local u446 = LocalPlayer

		v422:AddToggle("Laggy Run", function(p32)
			u444.LaggyRunEnabled = p32

			if not p32 then
				if u444.LaggyRunConnection then
					u444.LaggyRunConnection:Disconnect()
					u444.LaggyRunConnection = nil
				end

				u444.LaggyRunAccum = 0

				return
			end

			if u444.LaggyRunConnection then
				u444.LaggyRunConnection:Disconnect()
			end

			u444.LaggyRunAccum = 0
			u444.LaggyRunConnection = u445.Heartbeat:Connect(function(dt)
				if u444.LaggyRunEnabled then
					local Character = u446.Character

					if Character then
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							local Humanoid = Character:FindFirstChild("Humanoid")

							if Humanoid and not (Humanoid.Health <= 0) then
								local MoveDirection = Humanoid.MoveDirection

								if not (MoveDirection.Magnitude < 0.1) then
									u444.LaggyRunAccum = u444.LaggyRunAccum + dt

									if not (u444.LaggyRunAccum < u444.LaggyRunDelay * 0.1) then
										u444.LaggyRunAccum = 0

										local HumanoidRootPartCFrame = HumanoidRootPart.CFrame
										local v1790 = HumanoidRootPartCFrame.Position + MoveDirection.Unit * u444.LaggyRunDistance

										HumanoidRootPart.CFrame = CFrame.fromMatrix(
											v1790,
											HumanoidRootPartCFrame.RightVector,
											HumanoidRootPartCFrame.UpVector,
											-HumanoidRootPartCFrame.LookVector
										)

										return
									end

									return
								end

								u444.LaggyRunAccum = 0

								return
							end

							return
						end

						return
					end

					return
				end
			end)
		end)

		local u447 = t98

		v422:AddSlider("Laggy Run Distance", 1, 10, 1, function(p33)
			u447.LaggyRunDistance = p33
		end)

		local u448 = t98

		v422:AddSlider("Laggy Run Delay", 1, 10, 1, function(p34)
			u448.LaggyRunDelay = p34
		end)
		v422:AddSeparator()
		v422:AddLabel("MISC")

		local u449 = t98

		v422:AddToggle("Kill Aura", function(p35)
			u449.KillAuraEnabled = p35
		end)

		local u450 = t98
		local u451 = LocalPlayer

		v422:AddToggle("Infinite Stamina", function(p36)
			u450.InfiniteStaminaEnabled = p36

			if not p36 then
				local Character = u451.Character

				if Character then
					local u1443 = Character

					pcall(function()
						if u450.InfiniteStaminaOrigMax ~= nil then
							u1443:SetAttribute("MaxEnergy", u450.InfiniteStaminaOrigMax)
						end

						if u450.InfiniteStaminaOrigVal ~= nil then
							u1443:SetAttribute("Energy", u450.InfiniteStaminaOrigVal)
						end
					end)
				end

				u450.InfiniteStaminaOrigMax = nil
				u450.InfiniteStaminaOrigVal = nil
			end
		end)

		local u452 = t98

		v422:AddToggle("Auto Focus", function(p37)
			u452.AutoFocusEnabled = p37
		end)

		local u453 = t98

		v422:AddToggle("Auto Realm", function(p38)
			u453.AutoRealmEnabled = p38
		end)

		local u454 = t98

		v422:AddToggle("Anti AFK", function(p39)
			u454.AntiAFKEnabled = p39
		end)
		v423:AddLabel("SETTINGS")

		local u455 = false
		local u456 = nil
		local u457 = t98

		u456 = v423:AddDropdown("Auto Equip Weapon", t3, function(p40)
			if not u455 then
				local t129 = {}

				for k in pairs(p40) do
					table.insert(t129, k)
				end

				if #t129 ~= 0 then
					local v1450 = nil
					local v1453

					if #t129 ~= 1 then
						for _, v in ipairs(t129) do
							if v ~= u457.FarmAutoEquipWeaponType then
								v1450 = v

								break
							end
						end

						v1453 = v1450 or t129[1]
						u455 = true
						pcall(function()
							u456:ClearSelection()
						end)
						u455 = false
					else
						v1453 = t129[1]
					end

					u457.FarmAutoEquipWeaponType = v1453

					return
				end

				u457.FarmAutoEquipWeaponType = nil

				return
			end
		end)

		local u458 = t98

		v423:AddSlider("Distance To NPC (studs)", 5, 50, 5, function(p41)
			u458.DistanceBetweenNPC = p41
		end)

		local u459 = t98

		v423:AddToggle("TP Below", function(p42)
			u459.TPBelowEnabled = p42
		end)
		v423:AddSeparator()
		v423:AddLabel("NPC FARM")

		local u460 = t98
		local u461 = v243
		local u462 = v151
		local u463 = v149

		v423:AddToggle("Auto Farm", function(p43)
			if not p43 then
				u460.AutoFarmEnabled = false
				u460.farmNPCWaitPos = nil
				u460.farmNPCNoTargetTimer = 0
				u460.farmNPCTriedZone = false
				u460.farmNPCTriedGuide = false

				if not u460.AutoFarmBossEnabled and not u460.AutoFarmLevelEnabled then
					u462()
					u463()
					u460.CurrentTarget = nil

					return
				end

				if u460.CurrentTarget then
					pcall(function()
						local CurrentTarget = u460.CurrentTarget

						if CurrentTarget then
							local HumanoidRootPart = CurrentTarget:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart then
								local u1794 = HumanoidRootPart

								pcall(function()
									u1794.Anchored = false
								end)
							end

							return
						end
					end)
					u460.anchoredTargets[u460.CurrentTarget] = nil
					u460.CurrentTarget = nil
				end
			else
				u460.AutoFarmEnabled = true
				u460.farmNPCWaitPos = nil
				u460.farmNPCNoTargetTimer = 0
				u460.farmNPCTriedZone = false
				u460.farmNPCTriedGuide = false

				if not u460.farmLoopRunning then
					task.spawn(u461)

					return
				end
			end
		end)

		local t130 = {}

		for _, v in ipairs(t1) do
			table.insert(t130, v)
		end

		local u467 = t98

		v423:AddDropdown("Select NPC", t130, function(p44)
			u467.SelectedNPCs = {}

			for k in pairs(p44) do
				u467.SelectedNPCs[k] = true
			end

			u467.farmNPCWaitPos = nil
			u467.farmNPCNoTargetTimer = 0
			u467.farmNPCTriedZone = false
			u467.farmNPCTriedGuide = false
		end)
		v423:AddSeparator()
		v423:AddLabel("BOSS FARM")

		local u468 = t98
		local u469 = v243
		local u470 = v151
		local u471 = v149

		v423:AddToggle("Auto Farm Boss", function(p45)
			if not p45 then
				u468.AutoFarmBossEnabled = false
				u468.farmBossWaitPos = nil
				u468.farmBossNoTargetTimer = 0
				u468.farmBossTriedZone = false
				u468.farmBossTriedGuide = false

				if not u468.AutoFarmEnabled and not u468.AutoFarmLevelEnabled then
					u470()
					u471()
					u468.CurrentBossTarget = nil

					return
				end

				if u468.CurrentBossTarget then
					pcall(function()
						local CurrentBossTarget = u468.CurrentBossTarget

						if CurrentBossTarget then
							local HumanoidRootPart = CurrentBossTarget:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart then
								local u1798 = HumanoidRootPart

								pcall(function()
									u1798.Anchored = false
								end)
							end

							return
						end
					end)
					u468.anchoredTargets[u468.CurrentBossTarget] = nil
					u468.CurrentBossTarget = nil
				end
			else
				u468.AutoFarmBossEnabled = true
				u468.farmBossWaitPos = nil
				u468.farmBossNoTargetTimer = 0
				u468.farmBossTriedZone = false
				u468.farmBossTriedGuide = false

				if not u468.farmLoopRunning then
					task.spawn(u469)

					return
				end
			end
		end)

		local t131 = {}

		for _, v in ipairs(t2) do
			table.insert(t131, v)
		end

		local u475 = t98

		v423:AddDropdown("Select Boss", t131, function(p46)
			u475.SelectedBosses = {}

			for k in pairs(p46) do
				u475.SelectedBosses[k] = true
			end

			u475.farmBossWaitPos = nil
			u475.farmBossNoTargetTimer = 0
			u475.farmBossTriedZone = false
			u475.farmBossTriedGuide = false
		end)

		local u476 = t98

		v423:AddToggle("Auto Spawn World Boss", function(p47)
			u476.AutoSpawnMoonGodEnabled = p47
		end)
		v423:AddSeparator()
		v423:AddLabel("LEVEL FARM")

		local u477 = t98
		local u478 = v243
		local u479 = v151
		local u480 = v149

		v423:AddToggle("Auto Farm Level", function(p48)
			u477.AutoFarmLevelEnabled = p48

			if not p48 then
				u477.AutoFarmLevelCurrentNPCList = {}
				u477.AutoFarmLevelCurrentLevel = nil
				u477.optimalNPCLevel = nil
				u477.optimalNPCLastPos = nil
				u477.optimalZoneWaitPos = nil

				if not u477.AutoFarmEnabled and not u477.AutoFarmBossEnabled then
					u479()
					u480()
					u477.CurrentTarget = nil

					return
				end

				if u477.CurrentTarget then
					pcall(function()
						local CurrentTarget = u477.CurrentTarget

						if CurrentTarget then
							local HumanoidRootPart = CurrentTarget:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart then
								local u1802 = HumanoidRootPart

								pcall(function()
									u1802.Anchored = false
								end)
							end

							return
						end
					end)
					u477.anchoredTargets[u477.CurrentTarget] = nil
					u477.CurrentTarget = nil
				end
			else
				u477.optimalNPCLevel = nil
				u477.optimalNPCLastPos = nil
				u477.optimalZoneWaitPos = nil

				if not u477.farmLoopRunning then
					task.spawn(u478)

					return
				end
			end
		end)
		v424:AddLabel("ESP")

		local u481 = t98

		v424:AddToggle("Service NPC ESP", function(p49)
			u481.ServiceNPCESPEnabled = p49

			if not p49 then
				u345()
			end
		end)
	end

	local u482 = t98

	v424:AddToggle("Secret Traveler ESP", function(p50)
		u482.SecretTravelerESPEnabled = p50

		if not p50 then
			u351()
		end
	end)
	v424:AddSeparator()
	v424:AddLabel("TELEPORT")

	local v483 = v342()

	t98.lastServiceNPCNames = v483

	local u484 = false
	local u485 = LocalPlayer
	local u486 = Workspace
	local u487 = t98

	t98.ServiceNPCTPDropdownRef = v424:AddDropdown("Teleport To NPC", v483, function(p51)
		if not u484 then
			local g1477 = nil

			for k in pairs(p51) do
				if k == "(None)" then
					break
				end

				local Character = u485.Character
				local v1469 = Character and Character:FindFirstChild("HumanoidRootPart")

				if not v1469 then
					break
				end

				local Folder_GameMap = u486:FindFirstChild("Folder_GameMap")

				if not Folder_GameMap then
					break
				end

				local v1471 = false

				for _, child in ipairs(Folder_GameMap:GetChildren()) do
					if child:IsA("Folder") then
						for _, child3 in ipairs(child:GetChildren()) do
							if child3:IsA("Model") and k == child3.Name then
								local v1476 = child3:FindFirstChild("HumanoidRootPart") or (child3:FindFirstChildWhichIsA("BasePart") or child3.PrimaryPart)

								if v1476 then
									v1469.CFrame = CFrame.new(v1476.Position + Vector3.new(0, 5, 0))
									v1471 = true

									break
								end
							end
						end
					end

					if v1471 then
						g1477 = true
					end

					if g1477 then
						break
					end
				end

				if g1477 then
					break
				end

				break
			end
			u484 = true
			task.defer(function()
				pcall(function()
					u487.ServiceNPCTPDropdownRef:ClearSelection()
				end)
				u484 = false
			end)

			return
		end
	end)

	local v488 = (function()
		local t132 = {}
		local Folder_GameMap = u343:FindFirstChild("Folder_GameMap")

		if Folder_GameMap then
			for _, child in ipairs(Folder_GameMap:GetChildren()) do
				if child:IsA("Folder") then
					local SpawnLocation = child:FindFirstChild("SpawnLocation")

					if SpawnLocation and SpawnLocation:IsA("Model") then
						local _pcall = pcall
						local u1211 = child
						local v1212, v1213 = pcall(function()
							return u1211:GetAttribute("MapName")
						end)

						if v1212 and v1213 and v1213 ~= "" then
							local t133 = {
								displayName = v1213,
								folder = child,
							}

							table.insert(t132, t133)
						end
					end
				end
			end

			return t132
		end

		return t132
	end)()
	local t134 = {}
	local t135 = {}

	for _, v in ipairs(v488) do
		local displayName = v.displayName

		table.insert(t134, displayName)
		t135[v.displayName] = v.folder
	end

	if #t134 == 0 then
		table.insert(t134, "(None)")
	end

	local u494 = false
	local u495 = nil
	local u496 = t135
	local u497 = LocalPlayer

	u495 = v424:AddDropdown("Teleport To Place", t134, function(p52)
		if not u494 then
			for k in pairs(p52) do
				if k == "(None)" then
					break
				end

				local v1480 = u496[k]

				if not v1480 then
					break
				end

				local SpawnLocation = v1480:FindFirstChild("SpawnLocation")

				if not SpawnLocation or not SpawnLocation:IsA("Model") then
					break
				end

				local SpawnLocation5 = SpawnLocation:FindFirstChild("SpawnLocation")

				if not SpawnLocation5 then
					break
				end

				local Character = u497.Character
				local v1484 = Character and Character:FindFirstChild("HumanoidRootPart")

				if not v1484 then
					break
				end

				local _pcall = pcall
				local u1486 = v1484
				local u1487 = SpawnLocation5

				pcall(function()
					u1486.CFrame = u1487.CFrame
				end)

				break
			end

			u494 = true
			task.defer(function()
				pcall(function()
					u495:ClearSelection()
				end)
				u494 = false
			end)

			return
		end
	end)
	v424:AddSeparator()
	v424:AddLabel("QUEST & STATS")

	local u498 = false
	local u499 = nil
	local u500 = t98

	u499 = v424:AddDropdown("Auto Quest", t4, function(p53)
		if not u498 then
			local t136 = {}

			for k in pairs(p53) do
				table.insert(t136, k)
			end

			if #t136 ~= 0 then
				local v1491 = nil
				local v1494

				if #t136 ~= 1 then
					for _, v in ipairs(t136) do
						if v ~= u500.SelectedAutoQuest then
							v1491 = v

							break
						end
					end

					v1494 = v1491 or t136[1]
					u498 = true
					pcall(function()
						u499:ClearSelection()
					end)
					u498 = false
				else
					v1494 = t136[1]
				end

				u500.SelectedAutoQuest = v1494

				return
			end

			u500.SelectedAutoQuest = nil

			return
		end
	end)

	local t137 = {
		"Melee",
		"Defense",
		"Breath",
		"Ghost",
		"Gun",
	}
	local u502 = t98

	v424:AddDropdown("Auto Stat", t137, function(p54)
		u502.SelectedAutoStats = {}
		u502.AutoStatIndex = 1

		for k in pairs(p54) do
			if k ~= "(None)" then
				u502.SelectedAutoStats[k] = true
			end
		end

		local v1497 = false

		for _ in pairs(u502.SelectedAutoStats) do
			v1497 = true

			break
		end

		u502.AutoStatEnabled = v1497
	end)

	local u503 = t98

	v424:AddSlider("Stat Point", 1, 50, 1, function(p55)
		u503.AutoStatPoints = p55
	end)
	v424:AddSeparator()
	v424:AddLabel("SHOP & CRAFT")

	local t138 = {}
	local t139 = {
		name = "Water I",
		id = "B1",
	}
	local t140 = {
		name = "Thunder I",
		id = "B3",
	}
	local t141 = {
		name = "Water II",
		id = "B2",
	}
	local t142 = {
		name = "Flame",
		id = "B4",
	}
	local t143 = {
		name = "Beast",
		id = "B9",
	}
	local t144 = {
		name = "Wind",
		id = "B5",
	}
	local t145 = {
		name = "Mist",
		id = "B7",
	}
	local t146 = {
		name = "Love",
		id = "B8",
	}
	local t147 = {
		name = "Flower",
		id = "B12",
	}
	local t148 = {
		name = "Insect",
		id = "B14",
	}
	local t149 = {
		name = "Thunder II",
		id = "B16",
	}
	local t150 = {
		name = "Rock",
		id = "B6",
	}
	local t151 = {
		name = "Sound",
		id = "B15",
	}
	local t152 = {
		name = "Serpent",
		id = "B10",
	}
	local t153 = {
		name = "Moon",
		id = "B11",
	}
	local t154 = {
		name = "Sun",
		id = "B13",
	}

	t138[1] = t139
	t138[2] = t140
	t138[3] = t141
	t138[4] = t142
	t138[5] = t143
	t138[6] = t144
	t138[7] = t145
	t138[8] = t146
	t138[9] = t147
	t138[10] = t148
	t138[11] = t149
	t138[12] = t150
	t138[13] = t151
	t138[14] = t152
	t138[15] = t153
	t138[16] = t154

	local t155 = {
		name = "Sun II",
		id = "B17",
	}
	local t156 = {
		name = "Serpent II",
		id = "B18",
	}
	local t157 = {
		name = "Arrow",
		id = "G1",
	}
	local t158 = {
		name = "Satin",
		id = "G5",
	}
	local t159 = {
		name = "Spider",
		id = "G2",
	}
	local t160 = {
		name = "Nightmare",
		id = "G3",
	}
	local t161 = {
		name = "Reaper",
		id = "G6",
	}
	local t162 = {
		name = "Black Thunder",
		id = "G10",
	}
	local t163 = {
		name = "Pot",
		id = "G8",
	}
	local t164 = {
		name = "Reaper II",
		id = "G15",
	}
	local t165 = {
		name = "Element",
		id = "G7",
	}
	local t166 = {
		name = "Bewitchment",
		id = "G14",
	}
	local t167 = {
		name = "Biwa",
		id = "G11",
	}
	local t168 = {
		name = "Destroy",
		id = "G4",
	}
	local t169 = {
		name = "Blood",
		id = "G12",
	}
	local t170 = {
		name = "Wolf",
		id = "G13",
	}

	t138[17] = t155
	t138[18] = t156
	t138[19] = t157
	t138[20] = t158
	t138[21] = t159
	t138[22] = t160
	t138[23] = t161
	t138[24] = t162
	t138[25] = t163
	t138[26] = t164
	t138[27] = t165
	t138[28] = t166
	t138[29] = t167
	t138[30] = t168
	t138[31] = t169
	t138[32] = t170

	local t171 = {
		name = "Ice",
		id = "G9",
	}
	local t172 = {
		name = "Demon King",
		id = "G16",
	}

	t138[33] = t171
	t138[34] = t172

	local t173 = {}
	local t174 = {}

	for _, v in ipairs(t138) do
		local name = v.name

		table.insert(t173, name)
		t174[v.name] = v.id
	end

	local u544 = false
	local u545 = nil
	local u546 = t174

	u545 = v424:AddDropdown("Instant Buy(If Stock)", t173, function(p56)
		if not u544 then
			for k in pairs(p56) do
				local v1502 = u546[k]

				if not v1502 then
					break
				end

				local _pcall = pcall
				local u1504 = v1502

				pcall(function()
					game:GetService("ReplicatedStorage").Service.EquipageShopService.Event.eve_EquipageShop:FireServer({
						Name = "Gold",
						EquipageId = u1504,
					})
				end)

				break
			end

			u544 = true
			task.defer(function()
				pcall(function()
					u545:ClearSelection()
				end)
				u544 = false
			end)

			return
		end
	end)
	t175 = {}
	t176 = {
		name = "Red Potion I",
	}

	local t177 = {}
	local t178 = {
		FuseKey = 1,
		PackageType = "Item",
		id = "Item1",
	}
	local t179 = {
		FuseKey = 2,
		PackageType = "Item",
		id = "Item1",
	}

	t177[1] = t178
	t177[2] = t179
	t176.entries = t177
	t180 = {
		name = "Blue Potion I",
	}

	local t181 = {}
	local t182 = {
		FuseKey = 1,
		PackageType = "Item",
		id = "Item2",
	}
	local t183 = {
		FuseKey = 2,
		PackageType = "Item",
		id = "Item2",
	}

	t181[1] = t182
	t181[2] = t183
	t180.entries = t181
	t184 = {
		name = "Yello Potion I",
		entries = {
			{
				FuseKey = 1,
				PackageType = "Item",
				id = "Item3",
			},
		},
	}
	t185 = {
		name = "Green Potion I",
		entries = {
			{
				FuseKey = 1,
				PackageType = "Item",
				id = "Item4",
			},
		},
	}
	t186 = {
		name = "Red Potion II",
	}

	local t187 = {}
	local t188 = {
		FuseKey = 1,
		PackageType = "Item",
		id = "Item5",
	}
	local t189 = {
		FuseKey = 2,
		PackageType = "Item",
		id = "Item5",
	}

	t187[1] = t188
	t187[2] = t189
	t186.entries = t187
	t190 = {
		name = "Blue Potion II",
	}

	local t191 = {}
	local t192 = {
		FuseKey = 1,
		PackageType = "Item",
		id = "Item6",
	}
	local t193 = {
		FuseKey = 2,
		PackageType = "Item",
		id = "Item6",
	}

	t191[1] = t192
	t191[2] = t193
	t190.entries = t191
	t194 = {
		name = "Yello Potion II",
	}

	local t195 = {}
	local t196 = {
		FuseKey = 1,
		PackageType = "Item",
		id = "Item7",
	}
	local t197 = {
		FuseKey = 2,
		PackageType = "Item",
		id = "Item7",
	}
	local t198 = {
		FuseKey = 3,
		PackageType = "Item",
		id = "Item7",
	}

	t195[1] = t196
	t195[2] = t197
	t195[3] = t198
	t194.entries = t195
	t199 = {
		name = "Green Potion II",
	}

	local t200 = {}
	local t201 = {
		FuseKey = 1,
		PackageType = "Item",
		id = "Item8",
	}
	local t202 = {
		FuseKey = 2,
		PackageType = "Item",
		id = "Item8",
	}
	local t203 = {
		FuseKey = 3,
		PackageType = "Item",
		id = "Item8",
	}

	t200[1] = t201
	t200[2] = t202
	t200[3] = t203
	t199.entries = t200
end

local t204 = {
	name = "Purple Potion II",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item9",
		},
	},
}
local t205 = {
	name = "Light Green Potion II",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item10",
		},
	},
}
local t206 = {
	name = "Rare Scroll",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item11",
		},
	},
}
local t207 = {
	name = "Epic Scroll",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item12",
		},
	},
}
local t208 = {
	name = "Legendary Scroll",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item13",
		},
	},
}
local t209 = {
	name = "Red Potion III",
}
local t210 = {}
local t211 = {
	FuseKey = 1,
	PackageType = "Item",
	id = "Item23",
}
local t212 = {
	FuseKey = 2,
	PackageType = "Item",
	id = "Item23",
}

t210[1] = t211
t210[2] = t212
t209.entries = t210

local t213 = {
	name = "Blue Potion III",
}
local t214 = {}
local t215 = {
	FuseKey = 1,
	PackageType = "Item",
	id = "Item24",
}
local t216 = {
	FuseKey = 2,
	PackageType = "Item",
	id = "Item24",
}

t214[1] = t215
t214[2] = t216
t213.entries = t214

local t217 = {
	name = "Purple Potion III",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item25",
		},
	},
}

t175[1] = t176
t175[2] = t180
t175[3] = t184
t175[4] = t185
t175[5] = t186
t175[6] = t190
t175[7] = t194
t175[8] = t199
t175[9] = t204
t175[10] = t205
t175[11] = t206
t175[12] = t207
t175[13] = t208
t175[14] = t209
t175[15] = t213
t175[16] = t217

local t218 = {
	name = "Yellow Potion III",
}
local t219 = {}
local t220 = {
	FuseKey = 1,
	PackageType = "Item",
	id = "Item26",
}
local t221 = {
	FuseKey = 2,
	PackageType = "Item",
	id = "Item26",
}

t219[1] = t220
t219[2] = t221
t218.entries = t219

local t222 = {
	name = "Green Potion III",
}
local t223 = {}
local t224 = {
	FuseKey = 1,
	PackageType = "Item",
	id = "Item27",
}
local t225 = {
	FuseKey = 2,
	PackageType = "Item",
	id = "Item27",
}

t223[1] = t224
t223[2] = t225
t222.entries = t223

local t226 = {
	name = "Light Green Potion III",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item28",
		},
	},
}
local t227 = {
	name = "Holy Potion",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item29",
		},
	},
}
local t228 = {
	name = "Mythical Scroll",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item30",
		},
	},
}
local t229 = {
	name = "Red Key",
	entries = {
		{
			FuseKey = 1,
			PackageType = "Item",
			id = "Item33",
		},
	},
}

t175[17] = t218
t175[18] = t222
t175[19] = t226
t175[20] = t227
t175[21] = t228
t175[22] = t229

local t230 = {}
local t231 = {}

for _, v in ipairs(t175) do
	local name = v.name

	table.insert(t230, name)
	t231[v.name] = v.entries
end

local u607 = false
local u608 = nil
local u609 = t231
local u610 = t98

u608 = v424:AddDropdown("Instant Craft", t230, function(p57)
	if not u607 then
		for k in pairs(p57) do
			local v1507 = u609[k]

			if not v1507 then
				break
			end

			for _, v in ipairs(v1507) do
				local _pcall = pcall
				local u1511 = v

				pcall(function()
					game:GetService("ReplicatedStorage").Event.eve_AccessoryFuse:FireServer({
						FuseKey = u1511.FuseKey,
						PackageMode = "Fuse",
						PackageType = u1511.PackageType,
						CreateNumber = u610.CraftAmount,
						id = u1511.id,
					})
				end)
			end

			break
		end

		u607 = true
		task.defer(function()
			pcall(function()
				u608:ClearSelection()
			end)
			u607 = false
		end)

		return
	end
end)

local u611 = t98

v424:AddSlider("Craft Amount", 1, 100, 1, function(p58)
	u611.CraftAmount = p58
end)

local u612 = t98

v424:AddToggle("Auto Roll Demon", function(p59)
	u612.AutoRollDemonEnabled = p59
end)

local u613 = t98

v424:AddToggle("Auto Roll Breath", function(p60)
	u613.AutoRollBreathEnabled = p60
end)

local u614 = t98

v424:AddToggle("Auto Store Demon & Breath", function(p61)
	u614.AutoStoreDemonBreathEnabled = p61
end)
v424:AddSeparator()
v424:AddLabel("COLLECT")

local u615 = t98
local u616 = Workspace
local u617 = LocalPlayer

v424:AddToggle("Auto Collect Chest", function(p62)
	if not p62 then
		u615.AutoCollectChestEnabled = false
		u615.autoCollectChestRunning = false

		return
	end

	u615.AutoCollectChestEnabled = true

	if not u615.autoCollectChestRunning then
		u615.autoCollectChestRunning = true
		u615.AutoCollectChestEnabled = true
		task.spawn(function()
			while u615.autoCollectChestRunning and u615.AutoCollectChestEnabled do
				local Folder_GameOutside = u616:FindFirstChild("Folder_GameOutside")
				local v1804 = Folder_GameOutside and Folder_GameOutside:FindFirstChild("MoneyBox")

				if v1804 then
					local t232 = {}

					for _, child in ipairs(v1804:GetChildren()) do
						if child:IsA("Model") then
							local _pcall = pcall
							local u1809 = child
							local v1810, v1811 = pcall(function()
								return u1809:GetAttribute("Enabled")
							end)

							if v1810 and v1811 == true then
								table.insert(t232, child)
							end
						end
					end

					if #t232 ~= 0 then
						for _, v in ipairs(t232) do
							if not u615.autoCollectChestRunning or not u615.AutoCollectChestEnabled then
								break
							end

							local _pcall = pcall
							local u1815 = v
							local v1816, v1817 = pcall(function()
								return u1815:GetAttribute("Enabled")
							end)

							if v1816 and v1817 == true then
								local Character = u617.Character
								local v1819 = Character and Character:FindFirstChild("HumanoidRootPart")
								local v1820 = Character and Character:FindFirstChild("Humanoid")

								if v1819 and v1820 and not (v1820.Health <= 0) then
									local u1822 = v
									local v1823, v1824 = pcall(function()
										return u1822:GetPivot()
									end)

									if v1823 then
										v1819.CFrame = CFrame.new(v1824.Position + Vector3.new(0, u615.DistanceBetweenNPC, 0))
										task.wait(0.1)

										while u615.autoCollectChestRunning and u615.AutoCollectChestEnabled do
											local u1826 = v
											local v1827, v1828 = pcall(function()
												return u1826:GetAttribute("Enabled")
											end)

											if not v1827 or v1828 ~= true then
												break
											end

											local Character7 = u617.Character
											local v1830 = Character7 and Character7:FindFirstChild("HumanoidRootPart")

											if not v1830 then
												break
											end
											local u1832 = v
											local u1833 = v1830

											pcall(function()
												local TouchPart = u1832:FindFirstChild("TouchPart", true)

												if TouchPart and TouchPart:FindFirstChild("TouchInterest") then
													firetouchinterest(u1833, TouchPart, 0)
													task.wait(0.05)
													firetouchinterest(u1833, TouchPart, 1)
												end
											end)
											task.wait(0.05)
										end

										task.wait(0.1)
									end
								else
									task.wait(0.1)
								end
							end
						end

						task.wait(0.2)
					else
						task.wait(0.5)
					end
				else
					task.wait(0.5)
				end
			end

			u615.autoCollectChestRunning = false

			local Character = u617.Character
			local v1835 = Character and Character:FindFirstChild("Humanoid")

			if v1835 then
				v1835.PlatformStand = false
			end
		end)

		return
	end
end)

local u618 = t98

v424:AddToggle("Auto Collect Playtime Rewards", function(p63)
	u618.AutoCollectPlaytimeEnabled = p63
end)
v425:AddLabel("ESP")

local u619 = t98

v425:AddToggle("ESP Players", function(p64)
	u619.PlayerESPEnabled = p64

	if not p64 then
		u365()
	end
end)

local u620 = t98
local u621 = v377

v425:AddToggle("ESP Lines", function(p65)
	u620.ESPLinesEnabled = p65

	if not p65 then
		u621()
	end
end)
v425:AddSeparator()
v425:AddLabel("COMBAT")

local u622 = false
local u623 = nil
local u624 = t98

u623 = v425:AddDropdown("Auto Equip Weapon", t3, function(p66)
	if not u622 then
		local t233 = {}

		for k in pairs(p66) do
			table.insert(t233, k)
		end

		if #t233 ~= 0 then
			local v1523 = nil
			local v1526

			if #t233 ~= 1 then
				for _, v in ipairs(t233) do
					if v ~= u624.PVPAutoEquipWeaponType then
						v1523 = v

						break
					end
				end

				v1526 = v1523 or t233[1]
				u622 = true
				pcall(function()
					u623:ClearSelection()
				end)
				u622 = false
			else
				v1526 = t233[1]
			end

			u624.PVPAutoEquipWeaponType = v1526

			return
		end

		u624.PVPAutoEquipWeaponType = nil

		return
	end
end)

local u625 = t98
local u626 = RunService
local u627 = Workspace
local u628 = LocalPlayer

v425:AddToggle("TP Behind While Orbit", function(p67)
	u625.TPBehindOrbitEnabled = p67

	if u625.OrbitEnabled and u625.OrbitTarget then
		local OrbitTarget = u625.OrbitTarget

		u625.OrbitEnabled = false

		if u625.OrbitConnection then
			u625.OrbitConnection:Disconnect()
			u625.OrbitConnection = nil
		end

		if not OrbitTarget then
			return
		end

		u625.OrbitTarget = OrbitTarget
		u625.OrbitEnabled = true
		u625.OrbitAngle = 0
		u625.OrbitConnection = u626.Heartbeat:Connect(function(dt)
			if u625.OrbitEnabled then
				local OrbitTargetName = u627:FindFirstChild(u625.OrbitTarget.Name)

				if OrbitTargetName then
					local HumanoidRootPart = OrbitTargetName:FindFirstChild("HumanoidRootPart")

					if HumanoidRootPart then
						local Character = u628.Character

						if Character then
							local HumanoidRootPart7 = Character:FindFirstChild("HumanoidRootPart")

							if HumanoidRootPart7 then
								if not u625.TPBehindOrbitEnabled then
									u625.OrbitAngle = u625.OrbitAngle + u625.OrbitSpeed * dt

									local PositionX = HumanoidRootPart.Position.X
									local OrbitAngle = u625.OrbitAngle
									local v1843 = PositionX + math.cos(OrbitAngle) * u625.OrbitDistance
									local PositionZ = HumanoidRootPart.Position.Z
									local OrbitAngle2 = u625.OrbitAngle
									local v1846 = PositionZ + math.sin(OrbitAngle2) * u625.OrbitDistance

									HumanoidRootPart7.CFrame = CFrame.new(Vector3.new(v1843, HumanoidRootPart.Position.Y, v1846), HumanoidRootPart.Position)

									return
								end

								local HumanoidRootPartCFrame = HumanoidRootPart.CFrame
								local v1848 = HumanoidRootPartCFrame.Position + -HumanoidRootPartCFrame.LookVector * u625.OrbitDistance
								local vector3 = Vector3.new(v1848.X, HumanoidRootPart.Position.Y, v1848.Z)

								HumanoidRootPart7.CFrame = CFrame.new(vector3, HumanoidRootPart.Position)

								return
							end

							return
						end

						return
					end

					return
				end

				return
			end
		end)
	end
end)

local v629 = v406()
local u630 = false
local u631 = t98
local u632 = Players
local u633 = RunService
local u634 = Workspace
local u635 = LocalPlayer

t98.OrbitDropdownRef = v425:AddDropdown("Orbit Player", v629, function(p68)
	if not u630 then
		local t234 = {}

		for k in pairs(p68) do
			table.insert(t234, k)
		end

		if #t234 ~= 0 then
			local v1532 = nil
			local v1535

			if #t234 ~= 1 then
				for _, v in ipairs(t234) do
					if v ~= (u631.OrbitTarget and u631.OrbitTarget.Name or nil) then
						v1532 = v

						break
					end
				end

				v1535 = v1532 or t234[1]
				u630 = true
				pcall(function()
					u631.OrbitDropdownRef:ClearSelection()
				end)
				u630 = false
			else
				v1535 = t234[1]
			end

			if v1535 ~= "(No players)" then
				local v1536 = u632:FindFirstChild(v1535)

				if not v1536 then
					u631.OrbitEnabled = false

					if u631.OrbitConnection then
						u631.OrbitConnection:Disconnect()
						u631.OrbitConnection = nil
					end

					u631.OrbitTarget = nil

					return
				end

				u631.OrbitEnabled = false

				if u631.OrbitConnection then
					u631.OrbitConnection:Disconnect()
					u631.OrbitConnection = nil
				end

				if v1536 then
					u631.OrbitTarget = v1536
					u631.OrbitEnabled = true
					u631.OrbitAngle = 0
					u631.OrbitConnection = u633.Heartbeat:Connect(function(dt)
						if u631.OrbitEnabled then
							local OrbitTargetName = u634:FindFirstChild(u631.OrbitTarget.Name)

							if OrbitTargetName then
								local HumanoidRootPart = OrbitTargetName:FindFirstChild("HumanoidRootPart")

								if HumanoidRootPart then
									local Character = u635.Character

									if Character then
										local HumanoidRootPart8 = Character:FindFirstChild("HumanoidRootPart")

										if HumanoidRootPart8 then
											if not u631.TPBehindOrbitEnabled then
												u631.OrbitAngle = u631.OrbitAngle + u631.OrbitSpeed * dt

												local PositionX = HumanoidRootPart.Position.X
												local OrbitAngle = u631.OrbitAngle
												local v1857 = PositionX + math.cos(OrbitAngle) * u631.OrbitDistance
												local PositionZ = HumanoidRootPart.Position.Z
												local OrbitAngle3 = u631.OrbitAngle
												local v1860 = PositionZ + math.sin(OrbitAngle3) * u631.OrbitDistance

												HumanoidRootPart8.CFrame =
													CFrame.new(Vector3.new(v1857, HumanoidRootPart.Position.Y, v1860), HumanoidRootPart.Position)

												return
											end

											local HumanoidRootPartCFrame = HumanoidRootPart.CFrame
											local v1862 = HumanoidRootPartCFrame.Position + -HumanoidRootPartCFrame.LookVector * u631.OrbitDistance
											local vector3 = Vector3.new(v1862.X, HumanoidRootPart.Position.Y, v1862.Z)

											HumanoidRootPart8.CFrame = CFrame.new(vector3, HumanoidRootPart.Position)

											return
										end

										return
									end

									return
								end

								return
							end

							return
						end
					end)

					return
				end

				return
			end

			u631.OrbitEnabled = false

			if u631.OrbitConnection then
				u631.OrbitConnection:Disconnect()
				u631.OrbitConnection = nil
			end

			u631.OrbitTarget = nil

			return
		end

		u631.OrbitEnabled = false

		if u631.OrbitConnection then
			u631.OrbitConnection:Disconnect()
			u631.OrbitConnection = nil
		end

		u631.OrbitTarget = nil

		return
	end
end)

local u636 = t98

v425:AddSlider("Orbit Speed", 1, 20, 1, function(p69)
	u636.OrbitSpeed = p69
end)

local u637 = t98

v425:AddSlider("Orbit Distance", 5, 50, 10, function(p70)
	u637.OrbitDistance = p70
end)

local u638 = t98

v425:AddToggle("Player Kill Aura", function(p71)
	u638.PlayerKillAuraEnabled = p71
end)
v425:AddSeparator()
v425:AddLabel("CAMERA")

local u639 = t98
local u640 = Workspace
local u641 = LocalPlayer

v425:AddToggle("Lock Camera On Closest Player", function(p72)
	u639.LockCameraEnabled = p72

	if not p72 then
		pcall(function()
			local CurrentCamera = u640.CurrentCamera
			local Character = u641.Character
			local v1866 = Character and Character:FindFirstChild("Humanoid")

			if v1866 then
				CurrentCamera.CameraSubject = v1866
			end

			CurrentCamera.CameraType = Enum.CameraType.Custom
		end)
	end
end)

local u642 = t98
local u643 = Workspace
local u644 = LocalPlayer

v425:AddToggle("Lock Camera On Selected Player", function(p73)
	u642.LockCameraOnSelectedEnabled = p73

	if not p73 then
		pcall(function()
			local CurrentCamera = u643.CurrentCamera
			local Character = u644.Character
			local v1869 = Character and Character:FindFirstChild("Humanoid")

			if v1869 then
				CurrentCamera.CameraSubject = v1869
			end

			CurrentCamera.CameraType = Enum.CameraType.Custom
		end)
	end
end)

local v645 = v406()

t98.lastLockCameraPlayerSet = {}

for _, v in ipairs(v645) do
	t98.lastLockCameraPlayerSet[v] = true
end

local u648 = false
local u649 = t98
local u650 = Players

t98.LockCameraSelectedDropdownRef = v425:AddDropdown("Select Player To Lock", v645, function(p74)
	if not u648 then
		local t235 = {}

		for k in pairs(p74) do
			table.insert(t235, k)
		end

		if #t235 ~= 0 then
			local v1545 = nil
			local v1548

			if #t235 ~= 1 then
				for _, v in ipairs(t235) do
					if v ~= (u649.LockCameraSelectedTarget and u649.LockCameraSelectedTarget.Name or nil) then
						v1545 = v

						break
					end
				end

				v1548 = v1545 or t235[1]
				u648 = true
				pcall(function()
					u649.LockCameraSelectedDropdownRef:ClearSelection()
				end)
				u648 = false
			else
				v1548 = t235[1]
			end

			if v1548 ~= "(No players)" then
				u649.LockCameraSelectedTarget = u650:FindFirstChild(v1548)

				return
			end

			u649.LockCameraSelectedTarget = nil

			return
		end

		u649.LockCameraSelectedTarget = nil

		return
	end
end)

local v651 = v406()
local u652 = false
local u653 = t98
local u654 = Workspace
local u655 = LocalPlayer
local u656 = Players

t98.SpectateDropdownRef = v425:AddDropdown("Spectate Player", v651, function(p75)
	if not u652 then
		local t236 = {}

		for k in pairs(p75) do
			table.insert(t236, k)
		end

		if #t236 ~= 0 then
			local v1552 = nil
			local v1555

			if #t236 ~= 1 then
				for _, v in ipairs(t236) do
					if v ~= (u653.SpectateTarget and u653.SpectateTarget.Name or nil) then
						v1552 = v

						break
					end
				end

				v1555 = v1552 or t236[1]
				u652 = true
				pcall(function()
					u653.SpectateDropdownRef:ClearSelection()
				end)
				u652 = false
			else
				v1555 = t236[1]
			end

			if v1555 ~= "(No players)" then
				local v1556 = u656:FindFirstChild(v1555)

				if not v1556 then
					u653.SpectateEnabled = false
					u653.SpectateTarget = nil

					return
				end

				u653.SpectateTarget = v1556
				u653.SpectateEnabled = true

				return
			end

			u653.SpectateEnabled = false
			u653.SpectateTarget = nil
			pcall(function()
				local CurrentCamera = u654.CurrentCamera
				local Character = u655.Character
				local v1875 = Character and Character:FindFirstChild("Humanoid")

				if v1875 then
					CurrentCamera.CameraSubject = v1875
				end

				CurrentCamera.CameraType = Enum.CameraType.Custom
			end)

			return
		end

		u653.SpectateEnabled = false
		u653.SpectateTarget = nil
		pcall(function()
			local CurrentCamera = u654.CurrentCamera
			local Character = u655.Character
			local v1872 = Character and Character:FindFirstChild("Humanoid")

			if v1872 then
				CurrentCamera.CameraSubject = v1872
			end

			CurrentCamera.CameraType = Enum.CameraType.Custom
		end)

		return
	end
end)
v426:AddLabel("SETTINGS")

local u657 = false
local u658 = nil
local u659 = t98

u658 = v426:AddDropdown("Auto Equip Weapon", t3, function(p76)
	if not u657 then
		local t237 = {}

		for k in pairs(p76) do
			table.insert(t237, k)
		end

		if #t237 ~= 0 then
			local v1560 = nil
			local v1563

			if #t237 ~= 1 then
				for _, v in ipairs(t237) do
					if v ~= u659.RaidAutoEquipWeaponType then
						v1560 = v

						break
					end
				end

				v1563 = v1560 or t237[1]
				u657 = true
				pcall(function()
					u658:ClearSelection()
				end)
				u657 = false
			else
				v1563 = t237[1]
			end

			u659.RaidAutoEquipWeaponType = v1563

			return
		end

		u659.RaidAutoEquipWeaponType = nil

		return
	end
end)

local u660 = t98

v426:AddSlider("Distance To NPC (studs)", 5, 50, 5, function(p77)
	u660.RaidDistanceBetweenNPC = p77
end)

local u661 = t98

v426:AddToggle("TP Below", function(p78)
	u661.RaidTPBelowEnabled = p78
end)
v426:AddSeparator()
v426:AddLabel("RAIDS")

local u662 = t98

v426:AddToggle("Auto Akaza Raid", function(p79)
	u662.AutoAkazaRaidEnabled = p79
end)

local u663 = t98

v426:AddToggle("Auto Hantengu Raid", function(p80)
	u663.AutoHantenguRaidEnabled = p80
end)

local u664 = t98

v426:AddToggle("Auto Thunder & Ice Raid", function(p81)
	u664.AutoThunderIceRaidEnabled = p81
end)
v426:AddSeparator()
v426:AddLabel("SERPENT RAID")

local u665 = t98

v426:AddToggle("Auto Serpent Raid", function(p82)
	u665.AutoSerpentRaidEnabled = p82
end)

local u666 = t98

v426:AddToggle("Auto Respawn", function(p83)
	u666.AutoSerpentRespawnEnabled = p83
end)
v426:AddSeparator()
v426:AddLabel("RACE RAID")

local u667 = t98

v426:AddToggle("Auto Race Raid", function(p84)
	u667.AutoRaceRaidEnabled = p84
end)

local u668 = t98

v426:AddToggle("Auto Start Race Raid", function(p85)
	u668.AutoStartRaceRaidEnabled = p85
end)
