--[[
	backtrack.tech v1.7c (project_delta) 

	deobfusacted and leaked with 💗 from the Faded.Yarts team
	apparently the v1.6a build we leaked was sooo outdated, we decided to leak the current version! happy cheating!
	btw the "dev" of this script is a retard, and his script is pasted asf (a lot of these functions come from existing leaked pd scripts)

	obfuscator: Luraph v15 (loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/111d11f76c987967c0424cb99230d289.lua"))())
	host: Luarmor
	deobfuscated on: 10/9/26 & 10/10/26

	also no i didnt have to pay for a key to deob, sorry ws 🤞
]]--

local r273, r95, r124, r275, r276, r277, r278, r27, r179, r281
local r282, r283, r284, r285, r286, r26, r287, r155, r25, r28
local r96, r289, r290, r97, r119, r23, r24, r292, r22, r293
local r294, r295, r116, r297, r299, r300, r301, r144, r302, r303
local r304, r305, r306, r307, r308, r309, r310, r311, r312, r313
local r314, r315, r316, r317, r320, r321, r323, r324, r325, r327
local r329, r330, r333, r335, r336, r337, r339, r340, r341, r342
local r343, r344, r1_2, r178, r345, r347, r348, r98, r100, r351
local r352, r353, r354, r355, r356, r357, r7
local r11_2, r359, r360, r361, r362
local r3_7, r2_9, r4_6, r5_1, r363, r370, r118, r120, r121, r122
local r371, r372, r123, r125, r376, r377, r378, r379, r380, r381
local r382, r383, r384, r1276, r60_2

do
	loadstring("        function LPH_NO_VIRTUALIZE(f) return f end;\r\n    ")()
	getgenv().debug_load = getgenv().debug_load or false
	if getgenv().backtrack_tech then
		warn("[backtrack.tech:project_delta] script is already loaded")
		return
	end
	getgenv().backtrack_tech = true
	local r269
	r269 = game
	local r270
	r270 = r269.PlaceId
	local r271
	r271 = r269.JobId
	local r274, r279, r280, r288

	do
		local r272 = r269.GetService

		local function r1_1(s4)
			return cloneref(r272(r269, s4))
		end

		r273 = r1_1("RunService")
		r95 = r1_1("Workspace")
		r124 = r1_1("Lighting")
		r274 = r1_1("Stats")
		r275 = r1_1("Players")
		r276 = r1_1("UserInputService")
		r1_1("ContextActionService")
		r277 = r1_1("TextChatService")
		local r4 = r1_1("GuiService")
		r278 = r1_1("CoreGui")
		r1_1("StarterGui")
		r27 = r1_1("ReplicatedStorage")
		r279 = r1_1("HttpService")
		r179 = r1_1("TweenService")
		r1_1("SoundService")
		r1_1("Debris")
		r280 = r1_1("TeleportService")
		r281 = r275.PlayerAdded
		r282 = r275.PlayerRemoving
		r283 = r275.GetPlayers
		r284 = r95.Raycast
		r285 = r276.IsKeyDown
		r286 = r269.IsDescendantOf
		r26 = r269.FindFirstChild
		r287 = r269.FindFirstChildOfClass
		r155 = r269.IsA
		r25 = r26(r27, "Players")
		r28 = r26(r95, "Terrain")
		r96 = r26(r27, "ItemsList")
		r288 = r4:GetGuiInset().Y
	end

	r289 = r95.CurrentCamera
	r290 = r289.WorldToViewportPoint
	r97 = r275.LocalPlayer
	r119 = r97.PlayerGui
	local r291
	r291 = r97:GetMouse()
	r23 = Vector2.new
	r24 = vector.create
	r292 = vector.magnitude
	r22 = UDim2.new
	r293 = UDim.new
	r294 = Rect.new
	r295 = UDim2.fromOffset
	local r296
	r296 = Color3.new
	r116 = Color3.fromRGB
	r297 = Color3.fromHex
	local r298
	r298 = Color3.fromHSV
	r299 = ColorSequence.new
	r300 = ColorSequenceKeypoint.new
	r301 = NumberSequence.new
	r144 = NumberSequenceKeypoint.new
	r302 = CFrame.Angles
	CFrame.new()
	r303 = CFrame.new
	r304 = math.max
	r305 = math.floor
	r306 = math.min
	r307 = math.abs
	r308 = math.random
	r309 = math.sin
	r310 = math.round
	r311 = math.clamp
	r312 = math.deg
	r313 = math.atan2
	r314 = math.rad
	r315 = math.huge
	r316 = 3.1415926535897931
	r317 = math.cos
	local r318
	r318 = string.find
	local r319
	r319 = string.rep
	r320 = string.lower
	r321 = string.upper
	local r322
	r322 = string.sub
	r323 = string.format
	r324 = tostring
	r325 = tonumber
	local r10
	r10 = string.split
	local r326
	r326 = string.gmatch
	r327 = table.insert
	r329 = table.sort
	r330 = table.find
	local r331
	r331 = table.remove
	local r332
	r332 = table.concat
	r333 = table.clone
	local r334
	r334 = table.clear
	r335 = table.create
	r336 = task.spawn
	r337 = task.wait
	local r338
	r338 = task.cancel
	r339 = task.delay
	r340 = task.defer
	r341 = r273.Heartbeat
	r342 = r273.RenderStepped
	r343 = r273.PreRender
	r344 = debug.traceback
	r1_2 = next
	r178 = TweenInfo.new
	r345 = os.clock
	local r346
	r346 = os.date
	r347 = {}
	local r349, r350, r358, r113_1

	do
		local r11 = { Micro = "micro.ttf", Minecraftia = "minecraftia.ttf", Monaco = "monaco.ttf", Nokia = "nokia.ttf", ["Smallest Pixel"] = "smallest_pixel-7.ttf", Tahoma = "fs-tahoma-8px.ttf", Verdana = "verdana.ttf" }

		r348 = {
			Micro = {
				layout = 8,
				top = 2,
				size = 7,
				label_padding = {
					name_label = -2,
					distance_label = 13,
					weapon_label = 21,
					health_flag = 8,
				},
			},
			Minecraftia = {
				layout = 10,
				top = 3,
				size = 10,
				label_padding = {
					name_label = -4,
					distance_label = 14,
					weapon_label = 24,
					health_flag = 9,
				},
			},
			Monaco = {
				layout = 10,
				top = 3,
				size = 9,
				label_padding = {
					name_label = -5,
					distance_label = 14,
					weapon_label = 24,
					health_flag = 9,
				},
			},
			Nokia = {
				layout = 10,
				top = 4,
				size = 9,
				label_padding = {
					name_label = -3,
					distance_label = 15,
					weapon_label = 25,
					health_flag = 10,
				},
			},
			["Smallest Pixel"] = {
				layout = 8,
				top = 1,
				size = 9,
				label_padding = {
					name_label = -3,
					distance_label = 12,
					weapon_label = 20,
					health_flag = 7,
				},
			},
			Tahoma = {
				layout = 12,
				top = 3,
				size = 12,
				label_padding = {
					name_label = -6,
					distance_label = 14,
					weapon_label = 26,
					health_flag = 9,
				},
			},
			Verdana = {
				layout = 12,
				top = 3,
				size = 12,
				label_padding = {
					name_label = -6,
					distance_label = 14,
					weapon_label = 26,
					health_flag = 9,
				},
			},
		}

		r98 = { "Micro", "Minecraftia", "Monaco", "Nokia", "Smallest Pixel", "Tahoma", "Verdana" }

		local r12 = {
			hitmarker_names = { "arrow", "outline_arrow", "box", "outline_box", "cross", "outline_cross", "diamond", "outline_diamond", "heart", "outline_heart", "plus", "outline_plus" },
			image_names = {
				"pointer",
				"configurations",
				"glow4",
				"logo",
				"main",
				"output",
				"playerlist",
				"scroll",
				"style",
				"transparency",
				"fov_glow",
				"uaz",
				"heli",
				"exit",
				"body",
				"item",
			},
			sound_names = { "default", "experience", "halloween", "pride", "wood", "notification", "warning" },
			hitsound_names = {
				"amongus",
				"ara",
				"cod",
				"coin",
				"csgo",
				"fatality",
				"gamesense",
				"landing",
				"neverlose",
				"noname",
				"parry",
				"rifk7",
				"rust",
				"snap",
				"uwu",
			},
		}

		local r107 = window_snap_left
		local r108 = window_snap_right
		local r109 = old_config
		local r110 = config_holder
		local r111 = intro
		local r112 = font
		local r113 = font2
		local r114 = keybind_list
		local r103 = player_indicator_frame
		local r104 = inventory_viewer_frame
		local r105 = session_data_frame
		local r106 = look_vector_frame
		local r102 = is_rainbow

		r100 = {
			script_version = "1.7c",
			loading = true,
			unloading = false,
			directory = "backtrack_tech",
			easing_style_index = { "Linear", "Sine", "Back", "Bounce", "Circular", "Cubic", "Elastic", "Exponential", "Quad", "Quart", "Quint" },
			easing_direction_index = { "In", "Out", "InOut" },
			module_names = { fonts = "backtrack_tech.fonts", configs = "backtrack_tech.configs", sounds = "backtrack_tech.sounds", images = "backtrack_tech.images", hitmarkers = "backtrack_tech.hitmarkers" },
			checks = {
				first_time = not isfolder("backtrack_tech"),
				modules = {
					fonts = isfolder("backtrack_tech/fonts"),
					configs = isfolder("backtrack_tech/configs"),
					sounds = isfolder("backtrack_tech/sounds"),
					images = isfolder("backtrack_tech/images"),
					hitmarkers = isfolder("backtrack_tech/hitmarkers"),
				},
			},
			flags = {},
			config_flags = {},
			visible_flags = {},
			guis = {},
			connections = {},
			notifications = {},
			playerlist_data = {},
			menu_opened,
			r102,
			r103,
			r104,
			r105,
			r106,
			r107,
			r108,
			r109,
			r110,
			r111,
			r112,
			r113,
			r114,
			binds = {},
			watermark_outline,
			r102,
			r103,
			r104,
			r105,
			r106,
			windows = { main_window, style, configurations_holder, playerlist_holder, output },
			copied_flag,
			r102,
			tweening_style = Enum.EasingStyle.Circular,
			tweening_direction = Enum.EasingDirection.InOut,
			tweening_speed = 0.15,
			animation_frequency = 60,
			last_update = 0,
			last_update_slider = 0,
			last_update_pointer = 0,
			animation_speed = 1,
			pointer_design = true,
			watermark_options = { watermark_text = "backtrack.tech", private = true, version = true, fps = true, ping = true, uid = true, current_game = true, current_date = true, current_time = true },
			user_stats = { fps = 0, ping = 0 },
			colors = {
				warning = r116(247, 215, 98),
				information = r116(154, 135, 254),
				fail = r116(255, 117, 129),
				success = r116(122, 255, 117),
			},
			aerosnap = true,
			sound_settings = { sound_type = "Default", sound_volume = 10 },
			click_sounds = {},
			images = {
				hitmarkers = {},
			},
			display_orders = 0,
			hitsounds = {},
			inv_configuration = {
				sections = { "Hotbar", "Armor", "Miscellaneous", "Containers" },
				colors = { section_title = "#FFFFFF", stack = "#FFFFFF", amount = "#FFFFFF", item_name = "#FFFFFF", attachment = "#FFFFFF" },
			},
		}

		r349 = r100.flags
		r350 = r100.config_flags
		r351 = {}

		r352 = {
			gradient_positions = {
				{ 0, 1 },
				{ 0, 1 },
				{ 0, 0.5, 1 },
			},
			glow_shading_map = {
				Default = Enum.AdornShading.XRay,
				Occluded = Enum.AdornShading.Default,
				Shaded = Enum.AdornShading.XRayShaded,
			},
		}

		r353 = {}
		r354 = {}
		r355 = {}

		r356 = {
			enabled = false,
			delay = 0.2,
			high = r116(124, 255, 139),
			low = r116(255, 72, 118),
			use_tween = true,
			style = "Circular",
			direction = "InOut",
			time = 0.15,
		}

		r357 = {
			preset = {
				outline = r297("#0A0A0A"),
				inline = r297("#222222"),
				accent = r297("#FF627F"),
				high_contrast = r297("#0D0D0D"),
				low_contrast = r297("#101010"),
				text = r297("#E0E0E0"),
				text_outline = r297("#000000"),
				glow = r297("#FF627F"),
			},
			utility = {
				outline = {
					BackgroundColor3 = {},
					Color = {},
				},
				inline = {
					BackgroundColor3 = {},
					ImageColor3 = {},
					Color = {},
				},
				accent = {
					BackgroundColor3 = {},
					TextColor3 = {},
					ImageColor3 = {},
					ScrollBarImageColor3 = {},
					Color = {},
				},
				contrast = {
					Color = {},
				},
				text = {
					TextColor3 = {},
				},
				text_outline = {
					Color = {},
				},
				glow = {
					ImageColor3 = {},
					ImageTransparency = {},
				},
				high_contrast = {
					BackgroundColor3 = {},
				},
				low_contrast = {
					BackgroundColor3 = {},
				},
			},
			find = { Frame = "BackgroundColor3", TextLabel = "TextColor3", UIGradient = "Color", UIStroke = "Color", ImageLabel = "ImageColor3", TextButton = "BackgroundColor3", ScrollingFrame = "ScrollBarImageColor3" },
		}

		r358 = {
			[Enum.KeyCode.LeftShift] = "LS",
			[Enum.KeyCode.RightShift] = "RS",
			[Enum.KeyCode.LeftControl] = "LC",
			[Enum.KeyCode.RightControl] = "RC",
			[Enum.KeyCode.LeftAlt] = "LALT",
			[Enum.KeyCode.RightAlt] = "RALT",
			[Enum.KeyCode.CapsLock] = "CAPS",
			[Enum.KeyCode.Insert] = "INS",
			[Enum.KeyCode.Backspace] = "BS",
			[Enum.KeyCode.Return] = "ENT",
			[Enum.KeyCode.Escape] = "ESC",
			[Enum.KeyCode.Space] = "SPC",
			[Enum.KeyCode.Zero] = "0",
			[Enum.KeyCode.One] = "1",
			[Enum.KeyCode.Two] = "2",
			[Enum.KeyCode.Three] = "3",
			[Enum.KeyCode.Four] = "4",
			[Enum.KeyCode.Five] = "5",
			[Enum.KeyCode.Six] = "6",
			[Enum.KeyCode.Seven] = "7",
			[Enum.KeyCode.Eight] = "8",
			[Enum.KeyCode.Nine] = "9",
			[Enum.KeyCode.KeypadZero] = "NUM0",
			[Enum.KeyCode.KeypadOne] = "NUM1",
			[Enum.KeyCode.KeypadTwo] = "NUM2",
			[Enum.KeyCode.KeypadThree] = "NUM3",
			[Enum.KeyCode.KeypadFour] = "NUM4",
			[Enum.KeyCode.KeypadFive] = "NUM5",
			[Enum.KeyCode.KeypadSix] = "NUM6",
			[Enum.KeyCode.KeypadSeven] = "NUM7",
			[Enum.KeyCode.KeypadEight] = "NUM8",
			[Enum.KeyCode.KeypadNine] = "NUM9",
			[Enum.KeyCode.Minus] = "-",
			[Enum.KeyCode.Equals] = "=",
			[Enum.KeyCode.Tilde] = "~",
			[Enum.KeyCode.Backquote] = "`",
			[Enum.KeyCode.LeftBracket] = "[",
			[Enum.KeyCode.RightBracket] = "]",
			[Enum.KeyCode.LeftParenthesis] = "(",
			[Enum.KeyCode.RightParenthesis] = ")",
			[Enum.KeyCode.Semicolon] = ",",
			[Enum.KeyCode.Quote] = "'",
			[Enum.KeyCode.BackSlash] = "\\",
			[Enum.KeyCode.Comma] = ",",
			[Enum.KeyCode.Period] = ".",
			[Enum.KeyCode.Slash] = "/",
			[Enum.KeyCode.Asterisk] = "*",
			[Enum.KeyCode.Plus] = "+",
			[Enum.UserInputType.MouseButton1] = "LMB",
			[Enum.UserInputType.MouseButton2] = "RMB",
			[Enum.UserInputType.MouseButton3] = "MMB",
		}

		r100.active = {
			resize = nil,
			drag = nil,
			slider = nil,
			color = nil,
			pending_bind = nil,
			keybind_handlers = {},
			keybind_hold_handlers = {},
			slider_handlers = {},
			tween_left = nil,
			tween_right = nil,
		}

		r100.hierarchy = {
			backtrack_tech = { "fonts", "configs", "sounds", "hitsounds", "images" },
		}

		r100.loading_data = { delay = 0.15, retries = 3, retry_delay = 1, needs_download = false }
		r100.flash_data = {}
		r100.color_animations = {}
		r100.__index = r100

		for r5, r6 in r1_2, r100.hierarchy, nil do
			if not isfolder(r5) then
				makefolder(r5)
			end

			for _, r9 in r1_2, r6, nil do
				local r2 = r5 .. "/" .. r9

				if not isfolder(r2) then
					makefolder(r2)
				end
			end
		end

		if LRM_UserNote then
			r113_1 = r10(LRM_UserNote, ",")
		else
			r113_1 = { "user", "unknown" }
		end

		r351.try_download = function(s10)
			for s2 = 1, r100.loading_data.retries do
				local s11, s12 = pcall(function()
					return r269:HttpGet(s10)
				end)

				if s11 and s12 and #s12 > 0 then
					return s12
				end

				if s2 < r100.loading_data.retries then
					task.wait(r100.loading_data.retry_delay * s2)
				end
			end

			return nil
		end

		r351.download_assets = function(s26, s27, s28)
			local s2 = {
				sounds = r100.click_sounds,
				hitsounds = r100.hitsounds,
				images = r100.images,
				hitmarkers = r100.images.hitmarkers,
			}

			local s9 = "https://raw.githubusercontent.com/backtrack-tech/backtrack.tech/main/" .. (({ sounds = "storage", images = "storage", hitsounds = "hitsounds", hitmarkers = "hitmarkers" })[s27] or "storage") .. "/"
			local s1_1 = r100.directory .. "/" .. s27
			local s11 = s2[s27]
			if not s11 then
				return
			end

			if not isfolder(s1_1) then
				makefolder(s1_1)
			end

			for _, s4 in r1_2, s26, nil do
				local s24 = ("%s/%s%s"):format(s1_1, s4, s28)

				if not isfile(s24) then
					local s25 = r351.try_download(s9 .. s4 .. s28, s4)
					if not s25 then
						continue
					end
					local s22, s23 = pcall(writefile, s24, s25)
					if not s22 then
						warn("write failed: " .. s4 .. " | " .. r324(s23))
						continue
					end
					task.wait(r100.loading_data.delay)
				end

				local s13 = nil

				local s26_1, s27_1 = pcall(function()
					s13 = getcustomasset(s24)
				end)

				if not s26_1 then
					warn("asset load failed: " .. s4 .. " | " .. r324(s27_1))
				else
					s11[s4:gsub("_", " "):gsub("(%a)([%w_']*)", function(t6, t7)
						return t6:upper() .. t7:lower()
					end)] = s13
				end
			end
		end

		for _, r4_1 in r1_2, r12.sound_names, nil do
			if not isfile(r100.directory .. "/sounds/" .. r4_1 .. ".mp3") then
				r100.loading_data.needs_download = true
				break
			end
		end

		if not r100.loading_data.needs_download then
			for _, r4_2 in r1_2, r12.hitsound_names, nil do
				if not isfile(r100.directory .. "/hitsounds/" .. r4_2 .. ".mp3") then
					r100.loading_data.needs_download = true
					break
				end
			end
		end

		if not r100.loading_data.needs_download then
			for _, r4_3 in r1_2, r12.image_names, nil do
				if not isfile(r100.directory .. "/images/" .. r4_3 .. ".png") then
					r100.loading_data.needs_download = true
					break
				end
			end
		end

		if not r100.loading_data.needs_download then
			for _, r4_4 in r1_2, r12.hitmarker_names, nil do
				if not isfile(r100.directory .. "/hitmarkers/" .. r4_4 .. ".png") then
					r100.loading_data.needs_download = true
					break
				end
			end
		end

		if r100.loading_data.needs_download then
			warn("[backtrack.tech:project_delta] downloading assets")
		end

		r351.download_assets(r12.sound_names, "sounds", ".mp3")
		r351.download_assets(r12.hitsound_names, "hitsounds", ".mp3")
		r351.download_assets(r12.image_names, "images", ".png")
		r351.download_assets(r12.hitmarker_names, "hitmarkers", ".png")

		r351.register_font = function(s33, s34, s35, s36)
			local s1 = r100.directory .. "/fonts/"

			if not isfolder(s1) then
				makefolder(s1)
			end

			local s2 = s1 .. s36.id
			local s3 = s1 .. s33 .. ".font"

			if not isfile(s2) then
				if not s36.font then
					return
				end
				writefile(s2, s36.font)
			end

			if isfile(s3) then
				delfile(s3)
			end

			local s4 = nil

			local s36_1, s37 = pcall(function()
				s4 = getcustomasset(s2)
			end)

			if not s36_1 then
				warn("asset load failed: " .. s33 .. " | " .. r324(s37))
				return
			end

			writefile(s3, r279:JSONEncode({
				name = s33,
				faces = {
					{ name = "Normal", weight = s34, style = s35, assetId = s4 },
				},
			}))

			return getcustomasset(s3)
		end

		for r11_1, r12_1 in r1_2, r11, nil do
			local r53 = { id = r12_1, font = nil }

			if not isfile(r12_1) then
				local r2_1, r3_5 = pcall(function()
					return r269:HttpGet("https://github.com/backtrack-tech/backtrack.tech/raw/main/fonts/" .. r12_1)
				end)

				if not r2_1 or not r3_5 then
					warn("request failed: " .. r11_1)
					continue
				end
				task.wait(r100.loading_data.delay)
				r53.font = r3_5
			else
				local r2_3, r3_6 = pcall(readfile, r12_1)
				if not r2_3 then
					warn("read failed: " .. r11_1)
					continue
				end
				r53.font = r3_6
			end

			local r49 = r351.register_font(r11_1, 400, "Normal", r53)

			if r49 then
				r347[r11_1] = Font.new(r49, Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			end
		end
	end

	r100.font = r347.Tahoma

	r7 = function(s6, s7)
		local s2 = Instance.new(s6)

		for s10, s11 in r1_2, s7, nil do
			s2[s10] = s11
		end

		if not s7.Name then
			s2.Name = "\0"
		end

		return s2
	end

	r351.is_debug = function()
		return getgenv().debug_load
	end

	if r351.is_debug() then
		print("[backtrack.tech:project_delta] running debug on " .. r324(identifyexecutor() or "unknown executor"))
		print("[backtrack.tech:project_delta] downloaded assets")
		print("[backtrack.tech:project_delta] loading library functions")
		r337(0.15)
	end

	r100.connection = function(arg1, arg2, s13)
		local s11 = arg2:Connect(s13)
		r327(r100.connections, s11)
		return s11
	end

	r100.disconnect = function(s21, s22)
		if s22 then
			s22:Disconnect()

			for s2, s3 in ipairs(s21.connections) do
				if s3 == s22 then
					r331(s21.connections, s2)
					break
				end
			end
		end
	end

	r100.tween = function(arg1, s21, s22, arg4)
		local s1_1 = r179:Create(s21, r178(arg4 or r100.tweening_speed, r100.tweening_style, r100.tweening_direction, 0, false, 0), s22)
		s1_1:Play()
		return s1_1
	end

	r100.hoverify = function(arg1, s25, arg3)
		local s1 = r100:create("Frame", {
			Parent = arg3,
			BackgroundTransparency = 1,
			BorderColor3 = r116(0, 0, 0),
			Size = r22(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = r357.preset.accent,
			ZIndex = 1,
		})

		r100:apply_theme(s1, "accent", "BackgroundColor3")

		local function s2()
			r100:connection(s25.MouseEnter, function()
				r100:tween(s1, { BackgroundTransparency = 0 })
			end)

			r100:connection(s25.MouseLeave, function()
				r100:tween(s1, { BackgroundTransparency = 1 })
			end)
		end

		s2()
		return s1
	end

	r100.hovering = function(arg1, s14)
		if type(s14) == "table" then
			for _, s16 in s14, nil, nil do
				if r100:hovering(s16) then
					return true
				end
			end

			return
		end

		return s14.AbsolutePosition.Y <= r291.Y and r291.Y <= s14.AbsolutePosition.Y + s14.AbsoluteSize.Y and s14.AbsolutePosition.X <= r291.X and r291.X <= s14.AbsolutePosition.X + s14.AbsoluteSize.X
	end

	r100.convert_enum = function(arg1)
		local s4 = {}

		for s2 in r326(arg1, "[%w_]+") do
			r327(s4, s2)
		end

		local s1 = Enum

		for s2_1 = 2, #s4 do
			s1 = s1[s4[s2_1]]
		end

		return s1
	end

	r100.config_list_update = function()
		if not r100.config_holder then
			return
		end
		local s15 = {}
		local s3, s4 = listfiles(r100.directory .. "/configs")

		for _, s4_1 in r1_2, s3, s4 do
			s15[#s15 + 1] = r322(s4_1:gsub(r100.directory .. "/configs\\", ""):gsub(r100.directory .. "\\configs\\", ""), 1, -5)
		end

		r100.config_holder.refresh_options(s15)
	end

	r100.snap = function(s6, s7)
		return r307(s6 - s7) <= 16 and s7 or s6
	end

	r100.animate_snapline = function(s25)
		if r100.active.tween_left then
			r100.active.tween_left:Cancel()
		end

		if r100.active.tween_right then
			r100.active.tween_right:Cancel()
		end

		if s25 then
			r100.window_snap_left.Size = r22(0, 1, 0, 0)
			r100.window_snap_right.Size = r22(0, 0, 0, 1)
			r100.window_snap_left.Visible = true
			r100.window_snap_right.Visible = true
			r100.window_snap_left.BackgroundTransparency = 1
			r100.window_snap_right.BackgroundTransparency = 1
			r100.active.tween_left = r179:Create(r100.window_snap_left, r178(0.1, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 0 })
			r100.active.tween_right = r179:Create(r100.window_snap_right, r178(0.1, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 0 })
			r100.active.tween_left:Play()
			r100.active.tween_right:Play()

			r339(0.1, function()
				r100.active.tween_left = r179:Create(r100.window_snap_left, r178(0.2, r100.tweening_style, r100.tweening_direction), {
					Size = r22(0, 1, 1, 0),
				})

				r100.active.tween_right = r179:Create(r100.window_snap_right, r178(0.2, r100.tweening_style, r100.tweening_direction), {
					Size = r22(1, 0, 0, 1),
				})

				r100.active.tween_left:Play()
				r100.active.tween_right:Play()
			end)
		else
			r100.active.tween_left = r179:Create(r100.window_snap_left, r178(0.2, r100.tweening_style, r100.tweening_direction), {
				Size = r22(0, 1, 0, 0),
			})

			r100.active.tween_right = r179:Create(r100.window_snap_right, r178(0.2, r100.tweening_style, r100.tweening_direction), {
				Size = r22(0, 0, 0, 1),
			})

			r100.active.tween_left:Play()
			r100.active.tween_right:Play()

			r339(0.2, function()
				local t6 = { BackgroundTransparency = 1 }
				r100.active.tween_left = r179:Create(r100.window_snap_left, r178(0.1, r100.tweening_style, r100.tweening_direction), t6)
				local t7 = { BackgroundTransparency = 1 }
				r100.active.tween_right = r179:Create(r100.window_snap_right, r178(0.1, r100.tweening_style, r100.tweening_direction), t7)
				r100.active.tween_left:Play()
				r100.active.tween_right:Play()
			end)

			r339(0.3, function()
				if not r100.active.drag then
					r100.window_snap_left.Visible = false
					r100.window_snap_right.Visible = false
				end
			end)
		end
	end

	r100.ghost_frame = function(s37)
		if not r100.snap_ghost then
			local s4 = {}
			r100.snap_ghost = r7("Frame", { BackgroundTransparency = 1, ZIndex = 999999 })

			s4.inline = r7("UIStroke", {
				Thickness = 1,
				BorderOffset = r293(0, -1),
				Color = r357.preset.outline,
				Parent = r100.snap_ghost,
			})

			r100:apply_theme(s4.inline, "outline", "Color")

			s4.outline = r7("UIStroke", {
				Thickness = 1,
				BorderOffset = r293(0, -3),
				Color = r357.preset.outline,
				Parent = r100.snap_ghost,
			})

			r100:apply_theme(s4.outline, "outline", "Color")

			s4.accent = r7("UIStroke", {
				Thickness = 1,
				BorderOffset = r293(0, -2),
				Color = r357.preset.accent,
				Parent = r100.snap_ghost,
			})

			r100:apply_theme(s4.accent, "accent", "Color")
		end

		local s1 = r100.snap_ghost

		r351.set_property_group(s1, {
			Size = r22(0, s37.AbsoluteSize.X, 0, s37.AbsoluteSize.Y),
			Position = s37.Position,
			Parent = s37.Parent,
			Visible = true,
		})

		return s1
	end

	local function r2_5()
		r100.make_resizable = function(arg1, t29)
			local t8 = t29.Size

			local t30 = r100:create("TextButton", {
				Position = r22(1, -10, 1, -10),
				Size = r22(0, 10, 0, 10),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Text = "",
				Parent = t29,
			})

			local function t1()
				r100:connection(t30.InputBegan, function(R)
					if R.UserInputType ~= Enum.UserInputType.MouseButton1 or not r100.drag_enabled then
						return
					end

					r100.active.resize = {
						frame = t29,
						start = R.Position,
						start_size = t29.Size,
						og_size = t8,
						ghost_frame = r100.aerosnap and (r100.ghost_frame(t29)) or nil,
					}
				end)

				r100:connection(t30.InputEnded, function(R)
					if R.UserInputType ~= Enum.UserInputType.MouseButton1 or not r100.active.resize then
						return
					end
					R = r100.active.resize
					r100.active.resize = nil

					if r100.aerosnap and R.ghost_frame then
						R.frame.Size = R.ghost_frame.Size
						R.ghost_frame.Visible = false
					end
				end)
			end

			t1()
		end

		r100.draggify = function(arg1, t33)
			local function t1()
				r100:connection(t33.InputBegan, function(R)
					if R.UserInputType ~= Enum.UserInputType.MouseButton1 or not r100.drag_enabled then
						return
					end

					r100.active.drag = {
						frame = t33,
						start = R.Position,
						start_pos = t33.Position,
						snap_timer = tick(),
						snap_ready = false,
						ghost_frame = r100.aerosnap and (r100.ghost_frame(t33)) or nil,
					}

					if r100.current_element_open then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
						r100.current_element_open = nil
					end

					if r155(t33.Parent, "ScreenGui") and t33.Parent.DisplayOrder ~= 9999999 then
						r100.display_orders = r100.display_orders + 1
						t33.Parent.DisplayOrder = r100.display_orders
					end
				end)

				r100:connection(t33.InputEnded, function(R)
					if R.UserInputType ~= Enum.UserInputType.MouseButton1 or not r100.active.drag then
						return
					end
					R = r100.active.drag
					r100.active.drag = nil
					r100.animate_snapline(false)

					if r100.aerosnap and R.ghost_frame then
						R.frame.Position = R.ghost_frame.Position
						R.ghost_frame.Visible = false
					end
				end)
			end

			t1()
		end

		r100.load_config = function(arg1, t17)
			local t5 = r279:JSONDecode(t17)

			for t3, t4 in r1_2, t5, nil do
				local t6 = r100.config_flags[t3]

				if t6 then
					if type(t4) == "table" and t4.Transparency and t4.Color then
						local t8 = t4.Transparency
						t6(r297(t4.Color), t8)
					else
						t6(t4)
					end
				end
			end

			if t5.ui_positions then
				r100.set_ui_transform(t5, "main", r100.windows.main_window.items.main_holder, true)
				r100.set_ui_transform(t5, "style", r100.windows.style.get_main_holder(), true)
				r100.set_ui_transform(t5, "config", r100.windows.configurations_holder.get_main_holder(), true)
				local t8_1 = true
				r100.set_ui_transform(t5, "player", r100.windows.playerlist_holder.get_main_holder(), t8_1)
				r100.set_ui_transform(t5, "output", r100.windows.output.get_main_holder(), true)
				r100.set_ui_transform(t5, "watermark", r100.watermark_outline, false)
				r100.set_ui_transform(t5, "keybind", r100.keybind_list_frame, true)
				r100.set_ui_transform(t5, "session_data", r100.session_data_frame, false)
				r100.set_ui_transform(t5, "look_list", r100.look_vector_frame, false)
				r100.set_ui_transform(t5, "player_indicator", r100.player_indicator_frame, false)
				r100.set_ui_transform(t5, "inventory_viewer", r100.inventory_viewer_frame, true)
			end
		end

		r100.get_config = function()
			local t5 = {}

			for t10, t11 in r1_2, r349, nil do
				if type(t11) == "table" and t11.key then
					t5[t10] = {
						active = t11.active,
						mode = t11.mode,
						key = r324(t11.key),
					}
				elseif type(t11) == "table" and t11.Transparency and t11.Color then
					t5[t10] = {
						Transparency = t11.Transparency,
						Color = t11.Color:ToHex(),
					}
				else
					t5[t10] = t11
				end
			end

			local t2_2 = {}

			for t10_1, t11_1 in r1_2, {
				main = r100.windows.main_window.items.main_holder,
				style = r100.windows.style.get_main_holder(),
				config = r100.windows.configurations_holder.get_main_holder(),
				player = r100.windows.playerlist_holder.get_main_holder(),
				output = r100.windows.output.get_main_holder(),
				watermark = r100.watermark_outline,
				keybind = r100.keybind_list_frame,
				session_data = r100.session_data_frame,
				look_list = r100.look_vector_frame,
				player_indicator = r100.player_indicator_frame,
				inventory_viewer = r100.inventory_viewer_frame,
			}, nil do
				t2_2[t10_1 .. "_position"] = r100.serialize_udim2(t11_1.Position)

				if t10_1 ~= "watermark" and t10_1 ~= "hotbar" and t10_1 ~= "indicator" then
					t2_2[t10_1 .. "_size"] = r100.serialize_udim2(t11_1.Size)
				end
			end

			t5.ui_positions = t2_2
			return r279:JSONEncode(t5)
		end

		r100.round = function(arg1, t6, t7)
			local t2_1 = 1 / (t7 or 1)
			return r305(t6 * t2_1 + 0.5) / t2_1
		end
	end

	r2_5()

	r100:connection(r276.InputChanged, function(R)
		if R.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		if r100.active.resize then
			local L = r100.active.resize
			local k = r22(L.start_size.X.Scale, r311(L.start_size.X.Offset + (R.Position.X - L.start.X), L.og_size.X.Offset, r289.ViewportSize.X), L.start_size.Y.Scale, r311(L.start_size.Y.Offset + (R.Position.Y - L.start.Y), L.og_size.Y.Offset, r289.ViewportSize.Y))

			if r100.aerosnap and L.ghost_frame then
				L.ghost_frame.Size = k
			else
				L.frame.Size = k
			end
		end

		if r100.active.drag then
			local L, k = r100.active.drag, tick()

			if not L.snap_ready and k - L.snap_timer >= 0.75 then
				L.snap_ready = true
				r100.animate_snapline(true)
			end

			local k, J, r, g, x = r289.ViewportSize, L.frame.Size.X.Offset, L.frame.Size.Y.Offset, L.start_pos.X.Offset + (R.Position.X - L.start.X), L.start_pos.Y.Offset + (R.Position.Y - L.start.Y)

			if L.snap_ready then
				local a, N = r305(k.X / 2 - J / 2 + 0.5), r305(k.Y / 2 - r / 2 - 59 + 0.5)
				g, x = (r100.snap(r100.snap(r100.snap(g, 0), a), k.X - J)), (r100.snap(r100.snap(r100.snap(x, 0), N), k.Y - r))
			end

			g, x = r311(g, 0, r304(0, k.X - J)), r311(x, 0, r304(0, k.Y - r))

			if r100.aerosnap and L.ghost_frame then
				L.ghost_frame.Position = r22(0, g, 0, x)
			else
				L.frame.Position = r22(0, g, 0, x)
			end
		end

		if r100.active.slider then
			local L = r100.active.slider
			if not r100.menu_opened or L.cfg.input_mode then
				return
			end
			local k = (R.Position.X - L.slider.AbsolutePosition.X) / L.slider.AbsoluteSize.X
			local R = r311((L.cfg.max - L.cfg.min) * k + L.cfg.min, L.cfg.min, L.cfg.max)
			L.cfg.set(R)
		end

		if r100.active.color then
			r100.active.color()
		end
	end)

	r100:connection(r276.InputBegan, function(R, L)
		if r100.active.pending_bind then
			local k = R.UserInputType == Enum.UserInputType.Keyboard and R.KeyCode or R.UserInputType
			r100.active.pending_bind(k)
			r100.active.pending_bind = nil
			return
		end

		if L then
			return
		end
		local L = R.UserInputType == Enum.UserInputType.Keyboard and R.KeyCode or R.UserInputType

		for k, k in r1_2, r100.active.keybind_handlers, nil do
			k(L)
		end

		if R.UserInputType == Enum.UserInputType.MouseButton1 then
			for L, L in r1_2, r100.active.slider_handlers, nil do
				L(R)
			end
		end
	end)

	r100:connection(r276.InputEnded, function(R, L)
		if R.UserInputType == Enum.UserInputType.MouseButton1 then
			r100.active.slider = nil

			for k, k in r1_2, r100.active.slider_handlers, nil do
				k(nil)
			end
		end

		if L then
			return
		end
		L = R.UserInputType == Enum.UserInputType.Keyboard and R.KeyCode or R.UserInputType

		for R, R in r1_2, r100.active.keybind_hold_handlers, nil do
			R(L)
		end
	end)

	r100.apply_theme = function(arg1, s21, s22, arg4)
		r327(r357.utility[s22][arg4], s21)

		if s22 == "glow" then
			r327(r357.utility[s22].ImageTransparency, s21)
		end
	end

	r100.update_theme = function(arg1, s32, s33, s34)
		for s36, s37 in r1_2, r357.utility[s32], nil do
			for _, s41 in r1_2, s37, nil do
				if s41[s36] == r357.preset[s32] or s41.ClassName == "UIGradient" then
					s41[s36] = s33
				end

				if s32 == "glow" and s34 then
					s41.ImageTransparency = 1 - s34
				end
			end
		end

		r357.preset[s32] = s33
	end

	r100.apply_stroke = function(arg1, arg2)
		r100:apply_theme(r100:create("UIStroke", {
			Parent = arg2,
			Color = r357.preset.text_outline,
			LineJoinMode = Enum.LineJoinMode.Miter,
		}), "text_outline", "Color")
	end

	r100.create = function(arg1, s29, s30)
		local s35 = Instance.new(s29)

		for s31, s32 in r1_2, s30, nil do
			s35[s31] = s32
		end

		if s29 == "TextLabel" or s29 == "TextButton" or s29 == "TextBox" then
			r100:apply_theme(s35, "text", "TextColor3")
			r100:apply_stroke(s35)
		elseif s29 == "ScreenGui" then
			r327(r100.guis, s35)
		end

		return s35
	end

	r351.set_property = function(s22, s23, s24)
		if s22[s23] ~= s24 then
			s22[s23] = s24
		end
	end

	r351.set_property_group = function(s35, arg2)
		for s37, s38 in r1_2, arg2, nil do
			if s35[s37] ~= s38 then
				s35[s37] = s38
			end
		end
	end

	r351.set_enabled = function(s20, s21)
		if s20.Enabled ~= s21 then
			s20.Enabled = s21
		end
	end

	r351.set_visible = function(s14, s15)
		if s14.Visible ~= s15 then
			s14.Visible = s15
		end
	end

	r100.log_result = function(s13, s14, s15, s16, s17)
		s14 = s14 or "<unknown>"
		s15 = s15 or "<unknown>"
		s16 = s16 or "<unknown>"
		local s1 = not s13 and (s17 and r324(s17):gsub("\n", " "):gsub("%s+", " "):match("[^:]+: (.+)") or "Unknown error") or nil

		if s13 then
			r100:notification({
				text = s14 .. " Configuration: " .. s16,
				time = 3,
				flashing = s14 == "Saved" or s14 == "Deleted",
			})

			r100.output.create_output({
				text = "Successfully " .. s14:lower() .. " configuration: " .. s16,
				prefix = "SUCCESS",
				color = r100.colors.success,
			})
		else
			r100:notification({
				text = "Failed to " .. s15 .. " configuration: " .. s16,
				time = 3,
			})

			r100.output.create_output({
				text = "Failed to " .. s15 .. " configuration: " .. s16 .. " (" .. s1 .. ")",
				prefix = "FAIL",
				color = r100.colors.fail,
			})
		end
	end

	r100.serialize_udim2 = function(s34)
		return {
			ScaleX = s34.X.Scale,
			OffsetX = s34.X.Offset,
			ScaleY = s34.Y.Scale,
			OffsetY = s34.Y.Offset,
		}
	end

	r100.deserialize_udim2 = function(s36)
		return r22(s36.ScaleX, s36.OffsetX, s36.ScaleY, s36.OffsetY)
	end

	r100.set_ui_transform = function(s14, s15, s16, s17)
		if not s16 then
			return
		end
		local s6 = r289.ViewportSize
		local s2 = s16.Size

		if s17 then
			local s3 = s14.ui_positions[s15 .. "_size"]

			if s3 then
				local s3_1 = r100.deserialize_udim2(s3)

				if s3_1 then
					s16.Size = s3_1
					s2 = s3_1
				end
			end
		end

		local s3_2 = s14.ui_positions[s15 .. "_position"]

		if s3_2 then
			local s8 = r100.deserialize_udim2(s3_2)

			if s8 then
				local s10 = s2.Y.Offset
				local s2_1 = r311(s8.X.Offset, 0, s6.X - s2.X.Offset)
				local s6_1 = r311(s8.Y.Offset, 0, s6.Y - s10)
				s16.Position = r22(0, s2_1, 0, s6_1)
			end
		end
	end

	r100.to_hex = function(s29)
		local s26 = r305(s29.R * 255)
		local s27 = r305(s29.G * 255)
		local s28 = r305(s29.B * 255)
		return r323("#%02X%02X%02X", s26, s27, s28)
	end

	r100.sound = function(arg1, arg2)
		local s1 = r7("Sound", {
			SoundId = r100.click_sounds[arg1],
			Volume = arg2,
			Parent = gethui(),
		})

		s1:Play()

		r100:connection(s1.Ended, function()
			s1:Destroy()
			return
		end)
	end

	if r351.is_debug() then
		print("[backtrack.tech:project_delta] loading ui")
		r337(0.15)
	end

	r100.create_snapline = function()
		local s8 = r7("ScreenGui", {
			Parent = gethui(),
			IgnoreGuiInset = true,
			DisplayOrder = 9999999,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		})

		r100.window_snap_left = r100:create("Frame", {
			Parent = s8,
			Position = r22(0.5, -1, 0, 0),
			Size = r22(0, 1, 0, 0),
			BorderSizePixel = 1,
			BorderColor3 = r116(0, 0, 0),
			BackgroundTransparency = 1,
			BackgroundColor3 = r357.preset.accent,
			Visible = false,
		})

		r100:apply_theme(r100.window_snap_left, "accent", "BackgroundColor3")

		r100.window_snap_right = r100:create("Frame", {
			Parent = s8,
			Position = r22(0, 0, 0.5, -1),
			Size = r22(0, 0, 0, 1),
			BorderSizePixel = 1,
			BorderColor3 = r116(0, 0, 0),
			BackgroundTransparency = 1,
			BackgroundColor3 = r357.preset.accent,
			Visible = false,
		})

		r100:apply_theme(r100.window_snap_right, "accent", "BackgroundColor3")
	end

	r100.create_snapline()

	do
		local r8_1 = r100:create("ScreenGui", {
			Enabled = true,
			Parent = gethui(),
			DisplayOrder = 9999999,
		})

		r100.tool_tip = function(arg1, s23)
			local s11 = {
				name = s23.name or "n/a",
				path = s23.path,
			}

			if not s11.path then
				return s11
			end

			local s20 = r100:create("Frame", {
				Parent = r8_1,
				Size = r22(0, 0, 0, 22),
				Position = r22(0, 500, 0, 300),
				BorderSizePixel = 0,
				Visible = false,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = r357.preset.outline,
				ZIndex = 999999995,
			})

			local s22 = r100:create("Frame", {
				Parent = r100:create("Frame", {
					Parent = s20,
					Position = r22(0, 1, 0, 1),
					BorderSizePixel = 0,
					Size = r22(1, -2, 1, -2),
					BackgroundColor3 = r357.preset.inline,
					ZIndex = 999999996,
				}),
				Position = r22(0, 1, 0, 1),
				BorderSizePixel = 0,
				Size = r22(1, -2, 1, -2),
				BackgroundColor3 = r116(255, 255, 255),
				ZIndex = 999999997,
			})

			local s8 = 1
			local s28 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s22,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(s8, r116(35, 35, 47)),
				}),
			}), "contrast", s28)

			local s26 = r100:create("TextLabel", {
				Parent = s22,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				Text = " " .. s11.name .. " ",
				Size = r22(0, 0, 1, 0),
				Position = r22(0, 0, 0, -1),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				TextSize = 12,
				ZIndex = 999999997,
			})

			r100:create("UIPadding", {
				Parent = s22,
				PaddingRight = r293(0, 3),
			})

			r100:create("UIStroke", {
				Parent = s26,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			local function s2()
				r100:connection(s11.path.MouseEnter, function()
					s20.Visible = true
				end)

				r100:connection(s11.path.MouseLeave, function()
					s20.Visible = false
				end)

				r100:connection(r276.InputChanged, function(R)
					if s20.Visible and R.UserInputType == Enum.UserInputType.MouseMovement then
						s20.Position = r295(R.Position.X + 10, R.Position.Y + 10)
					end
				end)
			end

			s2()
			return s11
		end

		r100.panel = function(arg1, s9)
			local s20 = {
				name = s9.text or s9.name or "Window",
			}

			s20.size = s9.size or r22(0, 530, 0, 590)
			s20.position = s9.position or r22(0, 500, 0, 500)
			s20.anchor_point = s9.anchor_point or r23(0, 0)
			s20.default_position = nil
			s20.image = s9.image or "rbxassetid://0"
			s20.open = s9.open or true
			s20.items = {}
			local s22 = s20.items

			s22.sgui = r100:create("ScreenGui", {
				Enabled = true,
				Parent = gethui(),
			})

			s22.main_holder = r100:create("Frame", {
				Parent = s22.sgui,
				AnchorPoint = s20.anchor_point,
				Position = s20.position,
				Active = true,
				Size = s20.size,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s22.main_holder, "outline", "BackgroundColor3")
			r100:draggify(s22.main_holder)
			r100:make_resizable(s22.main_holder)

			local s6 = r100:create("TextButton", {
				Parent = s22.main_holder,
				FontFace = r100.font,
				AnchorPoint = r23(1, 0),
				Text = "X",
				Size = r22(0, 0, 0, 0),
				Position = r22(1, -7, 0, 5),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Right,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextColor3 = r357.preset.text,
				TextSize = 12,
				ZIndex = 100,
			})

			r100:create("UIStroke", { Parent = s6 })

			r100:connection(s6.MouseButton1Click, function()
				s22.sgui.Enabled = false
			end)

			s22.window_inline = r100:create("Frame", {
				Parent = s22.main_holder,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s22.window_inline, "accent", "BackgroundColor3")

			s22.window_holder = r100:create("Frame", {
				Parent = s22.window_inline,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s15 = 35
			local s9_1 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s22.window_holder,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, s15, 47)),
				}),
			}), "contrast", s9_1)

			s22.text = r100:create("TextLabel", {
				Parent = s22.window_holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.accent,
				Text = s20.name,
				BackgroundTransparency = 1,
				Position = r22(0, 2, 0, 4),
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 12,
			})

			r100:apply_theme(s22.text, "accent", "TextColor3")

			r100:create("UIStroke", {
				Parent = s22.text,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			r100:create("UIPadding", {
				Parent = s22.window_holder,
				PaddingBottom = r293(0, 4),
				PaddingRight = r293(0, 4),
				PaddingLeft = r293(0, 4),
			})

			s22.outline = r100:create("Frame", {
				Parent = s22.window_holder,
				Position = r22(0, 0, 0, 18),
				Size = r22(1, 0, 1, -18),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s22.outline, "inline", "BackgroundColor3")

			s22.inline = r100:create("Frame", {
				Parent = s22.outline,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s22.inline, "outline", "BackgroundColor3")

			s22.holder = r100:create("Frame", {
				Parent = s22.inline,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s22.holder,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, 47)),
				}),
			}), "contrast", "Color")

			r100:create("UIPadding", {
				Parent = s22.holder,
				PaddingTop = r293(0, 5),
				PaddingBottom = r293(0, 5),
				PaddingRight = r293(0, 5),
				PaddingLeft = r293(0, 5),
			})

			s22.glow = r100:create("ImageLabel", {
				Parent = s22.main_holder,
				ImageColor3 = r357.preset.glow,
				Image = r100.images.Glow4,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = r294(r23(21, 21), r23(79, 79)),
				BackgroundTransparency = 1,
				ImageTransparency = 0.8,
				Position = r22(0, -20, 0, -20),
				Size = r22(1, 40, 1, 40),
				ZIndex = 0,
			})

			r100:apply_theme(s22.glow, "glow", "ImageColor3")

			s22.button = r100:create("TextButton", {
				Parent = r100.dock_holder,
				Text = "",
				Size = r22(0, 25, 0, 25),
				BorderSizePixel = 0,
				TextColor3 = r116(0, 0, 0),
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s22.button, "inline", "BackgroundColor3")

			local s7 = r100:create("Frame", {
				Parent = s22.button,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s7, "outline", "BackgroundColor3")

			local s8 = r100:create("Frame", {
				Parent = s7,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s8, "inline", "BackgroundColor3")
			local s5 = 41

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s8,
				Rotation = 90,
				Color = r299({
					r300(0, r116(35, 35, 47)),
					r300(1, r116(s5, 41, 55)),
				}),
			}), "contrast", "Color")

			s22.Icon = r100:create("ImageLabel", {
				Parent = s8,
				ImageColor3 = r357.preset.accent,
				Image = s20.image,
				ResampleMode = Enum.ResamplerMode.Pixelated,
				BackgroundTransparency = 1,
				Size = r22(1, 0, 1, 0),
			})

			r100:apply_theme(s22.Icon, "accent", "ImageColor3")

			r100:create("UIPadding", {
				Parent = s8,
				PaddingTop = r293(0, 3),
				PaddingBottom = r293(0, 3),
				PaddingRight = r293(0, 3),
				PaddingLeft = r293(0, 3),
			})

			r100:tool_tip({
				name = s20.name,
				path = s22.button,
			})

			s20.default_position = s22.main_holder.Position

			s20.get_main_holder = function()
				return s22.main_holder
			end

			s20.get_default_position = function()
				return s20.default_position
			end

			r100:connection(s22.sgui:GetPropertyChangedSignal("Enabled"), function()
				r351.set_property(s22.Icon, "ImageColor3", s22.sgui.Enabled and r357.preset.accent or r357.preset.inline)
			end)

			r100:connection(s22.button.MouseButton1Click, function()
				s22.sgui.Enabled = not s22.sgui.Enabled
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
			end)

			return setmetatable(s20, r100)
		end

		local r9_1 = r100:create("ScreenGui", {
			Enabled = false,
			Parent = gethui(),
			DisplayOrder = 9999999,
		})

		local r10_1 = r100:create("ScreenGui", {
			Parent = gethui(),
			IgnoreGuiInset = true,
			DisplayOrder = 9999999,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		})

		local function r2_6()
			r100.window = function(arg1, t20)
				local t19 = { opened = true }
				local t64 = {}
				local t3 = nil
				local t21 = r100:create("BlurEffect", { Parent = r124, Enabled = true, Size = 0 })

				r100.cache = r100:create("ScreenGui", {
					Enabled = false,
					Parent = gethui(),
				})

				local t6 = r7("ScreenGui", {
					Enabled = true,
					DisplayOrder = 99999999,
					IgnoreGuiInset = true,
					ZIndexBehavior = Enum.ZIndexBehavior.Global,
					ResetOnSpawn = false,
					Parent = gethui(),
				})

				local t8 = r7("TextButton", {
					BackgroundTransparency = 1,
					Size = r22(0, 0, 0, 0),
					Text = "",
					Modal = true,
					Visible = false,
					Parent = t6,
				})

				r100.pointer = r100:create("ImageLabel", {
					Image = r100.images.Pointer,
					ZIndex = 999999999,
					ResampleMode = Enum.ResamplerMode.Pixelated,
					Position = r22(0, 0, 0, 0),
					BorderColor3 = r116(0, 0, 0),
					ImageColor3 = r357.preset.accent,
					Size = r22(0, 14, 0, 14),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Parent = t6,
				})

				r100:apply_theme(r100.pointer, "accent", "ImageColor3")

				r100:connection(r291.Move, function()
					local u13 = r276:GetMouseLocation()

					if r100.menu_opened then
						if r100.pointer_design then
							r351.set_property(r276, "MouseIconEnabled", false)
							r351.set_visible(r100.pointer, true)
							r351.set_property(r100.pointer, "Position", r22(0, u13.X, 0, u13.Y))
						else
							r351.set_property(r276, "MouseIconEnabled", true)
							r351.set_visible(r100.pointer, false)
						end
					else
						r351.set_visible(r100.pointer, false)
					end
				end)

				t19.set_menu_visibility = function(u11)
					t19.opened = u11
					r100.menu_opened = u11

					if u11 then
						r351.set_property(r100.look_vector_frame, "BackgroundTransparency", 0.7)
					else
						r351.set_property(r100.look_vector_frame, "BackgroundTransparency", 1)
					end

					r351.set_visible(t8, u11)

					if u11 then
						for _, u15 in t64, nil, nil do
							u15.Enabled = true
							t64 = {}
						end
					else
						for _, u15_1 in r100.guis, nil, nil do
							if u15_1.Enabled then
								u15_1.Enabled = false
								r327(t64, u15_1)
							end
						end
					end

					r100:tween(t21, {
						Size = u11 and (r349.menu_blur_size or 15) or 0,
					})

					t3.Visible = u11
					r9_1.Enabled = true
					r10_1.Enabled = true
					r8_1.Enabled = true
					r100.cache.Enabled = false

					for _, u4 in r8_1:GetChildren() do
						u4.Visible = false
					end

					if r100.current_element_open then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
						r100.current_element_open = nil
					end
				end

				t3 = r100:create("Frame", {
					Parent = r9_1,
					Visible = true,
					BorderColor3 = r116(0, 0, 0),
					AnchorPoint = r23(0.5, 0),
					Position = r22(0.5, 0, 1, -120),
					Size = r22(0, 157, 0, 39),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				})

				dock_glow = r100:create("ImageLabel", {
					Parent = t3,
					ImageColor3 = r357.preset.glow,
					ScaleType = Enum.ScaleType.Slice,
					BorderColor3 = r116(0, 0, 0),
					BackgroundColor3 = r116(255, 255, 255),
					Visible = true,
					Image = r100.images.Glow4,
					BackgroundTransparency = 1,
					ImageTransparency = 0.8,
					Position = r22(0, -20, 0, -20),
					Size = r22(1, 40, 1, 40),
					ZIndex = 0,
					BorderSizePixel = 0,
					SliceCenter = r294(r23(21, 21), r23(79, 79)),
				})

				r100:apply_theme(dock_glow, "glow", "ImageColor3")
				r100:apply_theme(t3, "outline", "BackgroundColor3")
				t3.Position = r22(0, t3.AbsolutePosition.X, 0, t3.AbsolutePosition.Y)
				t3.AnchorPoint = r23(0, 0)
				r100:draggify(t3)

				local t27 = r100:create("Frame", {
					Parent = t3,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.inline,
				})

				r100:apply_theme(t27, "inline", "BackgroundColor3")

				local t28 = r100:create("Frame", {
					Parent = t27,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r357.preset.outline,
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				local t32 = r100:create("Frame", {
					Parent = t28,
					Size = r22(1, 0, 0, 2),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.accent,
				})

				r100:apply_theme(t32, "accent", "BackgroundColor3")

				r100:create("UIGradient", {
					Parent = t32,
					Rotation = 90,
					Color = r299({
						r300(0, r116(255, 255, 255)),
						r300(1, r116(167, 167, 167)),
					}),
				})

				local t33 = r100:create("Frame", {
					Parent = t28,
					BackgroundTransparency = 1,
					Size = r22(1, 0, 1, 0),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100.dock_holder = t33

				r100:create("UIListLayout", {
					Parent = t33,
					Padding = r293(0, 5),
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				r100:create("UIPadding", {
					Parent = t33,
					PaddingTop = r293(0, 6),
					PaddingBottom = r293(0, 4),
					PaddingRight = r293(0, 4),
					PaddingLeft = r293(0, 4),
				})

				r100:apply_theme(r100:create("UIGradient", {
					Parent = t28,
					Rotation = 90,
					Color = r299({
						r300(0, r116(41, 41, 55)),
						r300(1, r116(35, 35, 47)),
					}),
				}), "contrast", "Color")

				local t34 = r100:create("Frame", {
					Parent = r9_1,
					Visible = false,
					Active = true,
					Position = r22(0, 50, 0, 269),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(0, 200, 0, 25),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				})

				r100:apply_theme(t34, "outline", "BackgroundColor3")
				r100:draggify(t34)
				r100:make_resizable(t34)
				r100.keybind_list_frame = t34

				keybind_glow = r100:create("ImageLabel", {
					Parent = t34,
					ImageColor3 = r357.preset.glow,
					ScaleType = Enum.ScaleType.Slice,
					BorderColor3 = r116(0, 0, 0),
					BackgroundColor3 = r116(255, 255, 255),
					Visible = true,
					Image = r100.images.Glow4,
					BackgroundTransparency = 1,
					ImageTransparency = 0.8,
					Position = r22(0, -20, 0, -20),
					Size = r22(1, 40, 1, 40),
					ZIndex = 0,
					BorderSizePixel = 0,
					SliceCenter = r294(r23(21, 21), r23(79, 79)),
				})

				r100:apply_theme(keybind_glow, "glow", "ImageColor3")

				local t36 = r100:create("Frame", {
					Parent = t34,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.inline,
				})

				r100:apply_theme(t36, "inline", "BackgroundColor3")

				local t37 = r100:create("Frame", {
					Parent = t36,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				local t59 = r357.preset.low_contrast

				r100:apply_theme(r100:create("UIGradient", {
					Parent = t37,
					Rotation = 90,
					Color = r299({
						r300(0, r357.preset.high_contrast),
						r300(1, t59),
					}),
				}), "contrast", "Color")

				local t41 = r100:create("Frame", {
					Parent = t37,
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, 0, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.accent,
				})

				r100:apply_theme(t41, "accent", "BackgroundColor3")
				local t56 = 167

				r100:create("UIGradient", {
					Parent = t41,
					Enabled = true,
					Rotation = 90,
					Color = r299({
						r300(0, r116(255, 255, 255)),
						r300(1, r116(t56, 167, 167)),
					}),
				})

				r100:create("UIStroke", {
					Parent = r100:create("TextLabel", {
						Parent = t37,
						FontFace = r100.font,
						TextColor3 = r357.preset.text,
						BorderColor3 = r116(0, 0, 0),
						Text = "Keybinds",
						BackgroundTransparency = 1,
						TextTruncate = Enum.TextTruncate.AtEnd,
						Size = r22(1, 0, 1, 0),
						BorderSizePixel = 0,
						TextSize = 12,
						BackgroundColor3 = r357.preset.text,
					}, "text"),
					LineJoinMode = Enum.LineJoinMode.Miter,
				})

				local t42 = r100:create("Frame", {
					Parent = t37,
					Position = r22(0, -2, 1, 1),
					Size = r22(1, 4, 0, 0),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = r357.preset.outline,
				})

				r100:apply_theme(t42, "outline", "BackgroundColor3")

				local t43 = r100:create("Frame", {
					Parent = t42,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.inline,
				})

				r100:apply_theme(t43, "inline", "BackgroundColor3")

				local t44 = r100:create("Frame", {
					Parent = t43,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100.keybind_list = t44
				local t59_1 = r357.preset.low_contrast

				r100:apply_theme(r100:create("UIGradient", {
					Parent = t44,
					Rotation = 90,
					Color = r299({
						r300(0, r357.preset.high_contrast),
						r300(1, t59_1),
					}),
				}), "contrast", "Color")

				r100:create("UIListLayout", {
					Parent = t44,
					Padding = r293(0, -1),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				r100:create("UIPadding", {
					Parent = t44,
					PaddingBottom = r293(0, 4),
					PaddingLeft = r293(0, 5),
				})

				r100.windows.main_window = r100:panel({
					name = t20 and t20.name or "n/a",
					size = r22(0, 604, 0, 631),
					position = r22(0, r289.ViewportSize.X / 2 - 302 - 96, 0, r289.ViewportSize.Y / 2 - 421 - 12),
					image = r100.images.Main,
				})

				local t4_1 = r100.windows.main_window.items

				t19.tab_holder = r100:create("Frame", {
					Parent = t4_1.holder,
					BackgroundTransparency = 1,
					Size = r22(1, 0, 0, 22),
					BorderColor3 = r116(0, 0, 0),
					ZIndex = 5,
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100:create("UIListLayout", {
					Parent = t19.tab_holder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					Padding = r293(0, 2),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				local t48 = r100:create("Frame", {
					Parent = t4_1.holder,
					BackgroundTransparency = 1,
					Position = r22(0, -1, 0, 19),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, 0, 1, -22),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				t19.section_holder = t48

				local t49 = r100:create("Frame", {
					Parent = t48,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, 0, 1, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				})

				r100:apply_theme(t49, "outline", "BackgroundColor3")

				local t50_1 = r100:create("Frame", {
					Parent = t49,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.inline,
				})

				r100:apply_theme(t50_1, "inline", "BackgroundColor3")

				local t51_1 = r100:create("Frame", {
					Parent = t50_1,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100.section_holder = t51_1

				r100:create("UIPadding", {
					Parent = t51_1,
					PaddingTop = r293(0, 4),
					PaddingBottom = r293(0, 4),
					PaddingRight = r293(0, 4),
					PaddingLeft = r293(0, 4),
				})

				r100:apply_theme(r100:create("UIGradient", {
					Parent = t51_1,
					Rotation = 90,
					Color = r299({
						r300(0, r116(41, 41, 55)),
						r300(1, r116(35, 35, 47)),
					}),
				}), "contrast", "Color")

				r100.windows.style = r100:panel({
					name = "Style",
					anchor_point = r23(0, 0),
					size = r22(0, 394, 0, 631),
					position = r22(0, r100.windows.main_window.items.main_holder.AbsolutePosition.X + r100.windows.main_window.items.main_holder.AbsoluteSize.X + 2, 0, r100.windows.main_window.items.main_holder.AbsolutePosition.Y),
					image = r100.images.Style,
				})

				r100:connection(r342, function(R)
					if not r100.watermark_outline.Visible then
						return
					end
					r100.user_stats.fps += 1
					r100.user_stats.ping = r274.Network.ServerStatsItem["Data Ping"]:GetValue()
				end)

				local t53 = r100:watermark({ default = "backtrack.tech - uid: 0 - 01/01/0001 - 00:00:00" })

				r336(function()
					while r337(1) do
						if r100.watermark_outline.Visible then
							local u6 = {}
							r327(u6, r100.watermark_options.watermark_text)

							if r113_1[1] == "dev" and r100.watermark_options.private then
								r327(u6, "developer")
							elseif r113_1[1] == "private" and r100.watermark_options.private then
								r327(u6, "private")
							end

							if r100.watermark_options.version and r100.script_version then
								r327(u6, "v" .. r100.script_version)
							end

							if r100.watermark_options.fps and r100.user_stats.fps then
								r327(u6, r324(r100.user_stats.fps) .. " fps")
								r100.user_stats.fps = 0
							end

							if r100.watermark_options.ping and r100.user_stats.ping then
								r327(u6, r324(r305(r100.user_stats.ping)) .. "ms")
							end

							if r100.watermark_options.uid and r113_1[2] then
								r327(u6, "uid " .. r324(r113_1[2]))
							end

							if r100.watermark_options.current_game then
								r327(u6, "project delta")
							end

							if r100.watermark_options.current_date then
								r327(u6, r346("%b %d %Y"))
							end

							if r100.watermark_options.current_time then
								r327(u6, r346("%H:%M:%S"))
							end

							t53.change_text(r332(u6, " - "))
						end
					end
				end)

				local t56_1 = r100.windows.style.items
				local t1_1 = setmetatable(t56_1, r100):column()
				local t58 = t1_1:section({ name = "Theme" })

				t58:label({ name = "Menu Accent" }):colorpicker({
					name = "Menu Accent",
					color = r357.preset.accent,
					flag = "accent",
					callback = function(u18)
						r100:update_theme("accent", u18)
					end,
					flag = "accent",
				})

				t58:label({ name = "Contrast" }):colorpicker({
					name = "Low",
					color = r357.preset.low_contrast,
					flag = "low_contrast",
					callback = function()
						if r349.high_contrast and r349.low_contrast then
							local u13 = r349.high_contrast.Color

							r100:update_theme("contrast", r299({
								r300(0, r349.low_contrast.Color),
								r300(1, u13),
							}))
						end

						r100:update_theme("low_contrast", r349.low_contrast.Color)
					end,
				}):colorpicker({
					name = "High",
					color = r357.preset.high_contrast,
					flag = "high_contrast",
					callback = function()
						local u14 = r349.high_contrast.Color

						r100:update_theme("contrast", r299({
							r300(0, r349.low_contrast.Color),
							r300(1, u14),
						}))

						r100:update_theme("high_contrast", r349.high_contrast.Color)
					end,
				})

				t58:label({ name = "Inline" }):colorpicker({
					name = "Inline",
					color = r357.preset.inline,
					callback = function(u16)
						r100:update_theme("inline", u16)
					end,
					flag = "inline",
				})

				t58:label({ name = "Outline" }):colorpicker({
					name = "Outline",
					color = r357.preset.outline,
					callback = function(u37)
						r100:update_theme("outline", u37)
					end,
					flag = "outline",
				})

				t58:label({ name = "Text Color" }):colorpicker({
					name = "Text Color",
					color = r357.preset.text,
					callback = function(u33)
						r100:update_theme("text", u33)
					end,
					flag = "text_color",
				}):colorpicker({
					name = "Text Outline Color",
					color = r357.preset.text_outline,
					callback = function(u26)
						r100:update_theme("text_outline", u26)
					end,
					flag = "text_outline",
				})

				t58:label({ name = "Glow" }):colorpicker({
					name = "Glow",
					color = r357.preset.glow,
					alpha = 0.2,
					callback = function(arg1, u26)
						r100:update_theme("glow", arg1, u26)
					end,
					flag = "glow",
				})

				t58:dropdown({
					name = "Tweening Style",
					scrolling = true,
					flag = "tweening_style",
					items = r100.easing_style_index,
					default = "Circular",
					callback = function(arg1)
						r100.tweening_style = Enum.EasingStyle[arg1]
					end,
				})

				t58:dropdown({
					name = "Tweening Direction",
					flag = "tweening_direction",
					items = r100.easing_direction_index,
					default = "InOut",
					callback = function(arg1)
						r100.tweening_direction = Enum.EasingDirection[arg1]
					end,
				})

				t58:slider({
					name = "Tweening Time",
					suffix = "s",
					flag = "tweening_time",
					min = 0.05,
					max = 1,
					default = 0.15,
					interval = 0.01,
					callback = function(arg1)
						r100.tweening_speed = arg1
					end,
				})

				t58:toggle({
					name = "Pointer Design",
					default = true,
					enabled = true,
					flag = "pointer_design",
					callback = function(u37)
						r100.pointer_design = u37

						if r100.menu_opened then
							r351.set_visible(r100.pointer, u37)
						end
					end,
				})

				local t57, t58_1 = t1_1:multi_section({
					names = { "Accessibility", "Other" },
				})

				t57:label({ name = "UI Bind" }):keybind({
					callback = t19.set_menu_visibility,
					size = 28,
					key = Enum.KeyCode.End,
				})

				t57:toggle({
					name = "Keybind List",
					flag = "keybind_list",
					callback = function(arg1)
						r100.keybind_list_frame.Visible = arg1
					end,
				})

				local t16 = (r113_1[1] == "dev" or r113_1[1] == "private") and { "User", "Version", "FPS", "Ping", "UID", "Game", "Date", "Time" } or { "Version", "FPS", "Ping", "UID", "Game", "Date", "Time" }

				t57:toggle({
					name = "Watermark",
					enabled = true,
					default = true,
					flag = "watermark",
					callback = function(u18)
						t53.set_visible(u18)
					end,
				}):configuration({ name = "Watermark Options" }, function(u26)
					u26:dropdown({
						name = "Watermark Elements",
						multi = true,
						flag = "watermark_elements",
						items = t16,
						default = t16,
						callback = function(v29)
							local v2 = { User = "private", Version = "version", FPS = "fps", Ping = "ping", UID = "uid", Game = "current_game", Date = "current_date", Time = "current_time" }

							for _, v32 in r1_2, v2, nil do
								r100.watermark_options[v32] = false
							end

							for _, v30 in r1_2, v29, nil do
								local v3 = v2[v30]

								if v3 then
									r100.watermark_options[v3] = true
								end
							end
						end,
					})

					u26:label({ name = "Custom Watermark Text" })

					u26:textbox({
						name = "Custom Watermark",
						flag = "custom_watermark",
						max = 20,
						placeholder = "backtrack.tech",
						callback = function(v25)
							if v25 == "" then
								r100.watermark_options.watermark_text = "backtrack.tech"
							elseif v25:match("^%s+$") then
								r100:notification({ text = "The watermark cannot be empty. Please enter a valid string.", flashing = true, time = 5 })

								r100.output.create_output({
									text = "The watermark cannot be empty. Please enter a valid string.",
									prefix = "WARN",
									color = r100.colors.warning,
								})

								r100.watermark_options.watermark_text = "backtrack.tech"
							elseif v25:lower():find("uid") then
								r100:notification({ text = "The keyword 'uid' is not allowed in the watermark.", flashing = true, time = 5 })

								r100.output.create_output({
									text = "The term 'uid' is not allowed in the watermark.",
									prefix = "WARN",
									color = r100.colors.warning,
								})

								r100.watermark_options.watermark_text = "backtrack.tech"
							else
								r100.watermark_options.watermark_text = v25
							end
						end,
					})
				end)

				t57:splitter()

				t57:toggle({
					name = "UI Management",
					default = true,
					enabled = true,
					tooltip = "Allows you to drag and resize UI elements",
					flag = "ui_mangement",
					callback = function(arg1)
						r100.drag_enabled = arg1
					end,
				})

				t57:toggle({
					name = "Aero Snap",
					default = true,
					enabled = true,
					flag = "aero_snap",
					callback = function(arg1)
						r100.aerosnap = arg1
					end,
				})

				t57:splitter()

				t57:dropdown({
					name = "Click Sound Style",
					flag = "click_style",
					items = { "Default", "Pride", "Halloween", "Wood", "Experience" },
					default = "Default",
					callback = function(arg1)
						r100.sound_settings.sound_type = arg1
					end,
				})

				t57:slider({
					name = "Click Sound Volume",
					flag = "click_volume",
					min = 0,
					max = 10,
					default = 1,
					interval = 0.1,
					callback = function(arg1)
						r100.sound_settings.sound_volume = arg1
					end,
				})

				t58_1:slider({
					name = "Animation Frequency",
					tooltip = "Lowering this value will result in a boost of performance",
					suffix = "hz",
					flag = "animation_frequency",
					min = 15,
					max = 240,
					default = 240,
					interval = 1,
					callback = function(arg1)
						r100.animation_frequency = arg1
					end,
				})

				t58_1:slider({
					name = "Animation Speed",
					tooltip = "Changes the speed of Rainbow & Breathing animations",
					flag = "animation_speed",
					min = 0.5,
					max = 3,
					default = 1,
					interval = 0.1,
					callback = function(arg1)
						r100.animation_speed = arg1
					end,
				})

				t58_1:slider({
					name = "Blur Size",
					flag = "menu_blur_size",
					min = 0,
					max = 56,
					default = 20,
					interval = 1,
					callback = function(u19)
						if t19.opened then
							t21.Size = u19
						end
					end,
				})

				t58_1:slider({
					name = "FPS Cap",
					suffix = "hz",
					flag = "fps_cap",
					min = 30,
					max = 1000,
					default = 240,
					interval = 1,
					callback = function(u21)
						setfpscap(u21)
					end,
				})

				t58_1:button_holder({})

				t58_1:button({
					name = "Copy JobId",
					callback = function()
						setclipboard(r271)
					end,
				})

				t58_1:button({
					name = "Copy PlaceId",
					callback = function()
						setclipboard(r324(r270))
					end,
				})

				t58_1:button({
					name = "Copy Join Script",
					callback = function()
						setclipboard("cloneref(game:GetService(\"TeleportService\")):TeleportToPlaceInstance(" .. r270 .. ", \"" .. r271 .. "\", game.Players.LocalPlayer)")
					end,
				})

				t58_1:button_holder({})

				t58_1:button({
					name = "Test Notification",
					callback = function()
						r100.output.create_output({
							text = "Triggered normal notification",
							prefix = "INFO",
							color = r100.colors.information,
						})

						r100:notification({ text = "The quick brown fox jumps over the lazy dog", time = 5 })
					end,
				})

				t58_1:button({
					name = "Test Flashing Notification",
					callback = function()
						r100.output.create_output({
							text = "Triggered flashing notification",
							prefix = "INFO",
							color = r100.colors.information,
						})

						r100:notification({ text = "The quick brown fox jumps over the lazy dog", flashing = true, time = 5 })
					end,
				})

				t58_1:button_holder({})

				t58_1:button({
					name = "Rejoin Server",
					confirm = true,
					callback = function()
						r280:TeleportToPlaceInstance(r270, r271, r97)
					end,
				})

				r100.windows.configurations_holder = r100:panel({
					name = "Configurations",
					size = r22(0, 324, 0, 438),
					position = r22(0, t56_1.main_holder.AbsolutePosition.X + t56_1.main_holder.AbsoluteSize.X + 2, 0, t56_1.main_holder.AbsolutePosition.Y),
					image = r100.images.Configurations,
				})

				local t58_2 = r100.windows.configurations_holder.items

				getgenv().load_config = function(arg1)
					r100:load_config(readfile(r100.directory .. "/configs/" .. arg1 .. ".cfg"))
				end

				local t60 = setmetatable(t58_2, r100):column():section({ name = "Options" })
				r100.config_holder = t60:list({ flag = "config_name_list" })
				t60:textbox({ flag = "config_name_text_box", max = 30, placeholder = "Type here..." })
				t60:button_holder({})

				t60:button({
					name = "Create",
					confirm = true,
					callback = function()
						local u12 = r349.config_name_text_box
						local u14 = r100.directory .. "/configs/" .. u12 .. ".cfg"

						r100.output.create_output({
							text = "Creating configuration: " .. u12,
							prefix = "INFO",
							color = r100.colors.information,
						})

						local u6, u7 = pcall(function()
							writefile(u14, r100:get_config())
						end)

						r100.log_result(u6, "Created", "create", u12, u7)
						r100.config_list_update()
					end,
				})

				t60:button({
					name = "Delete",
					confirm = true,
					callback = function()
						local u8 = r349.config_name_list
						local u13 = r100.directory .. "/configs/" .. u8 .. ".cfg"

						r100.output.create_output({
							text = "Deleting configuration: " .. u8,
							prefix = "INFO",
							color = r100.colors.information,
						})

						local u5, u6 = pcall(function()
							delfile(u13)
						end)

						r100.log_result(u5, "Deleted", "delete", u8, u6)
						r100.config_list_update()
					end,
				})

				t60:button_holder({})

				t60:button({
					name = "Load",
					confirm = true,
					callback = function()
						local u6 = r349.config_name_list
						local u13 = r100.directory .. "/configs/" .. u6 .. ".cfg"

						r100.output.create_output({
							text = "Loading configuration: " .. u6,
							prefix = "INFO",
							color = r100.colors.information,
						})

						local u3, u4 = pcall(function()
							r100:notification({
								text = "Loading Configuration: " .. u6,
								flashing = true,
								time = 1.5,
							})

							r100:load_config(readfile(u13))
						end)

						r100.log_result(u3, "Loaded", "load", u6, u4)
					end,
				})

				t60:button({
					name = "Save",
					confirm = true,
					callback = function()
						local u6 = r349.config_name_list
						local u13 = r100.directory .. "/configs/" .. u6 .. ".cfg"

						r100.output.create_output({
							text = "Saving configuration: " .. u6,
							prefix = "INFO",
							color = r100.colors.information,
						})

						local u3, u4 = pcall(function()
							writefile(u13, r100:get_config())
						end)

						r100.log_result(u3, "Saved", "save", u6, u4)
						r100.config_list_update()
					end,
				})

				t60:button_holder({})

				t60:button({
					name = "Refresh Configurations",
					callback = function()
						r100.output.create_output({
							text = "Refreshing configuration list",
							prefix = "INFO",
							color = r100.colors.information,
						})

						r100.config_list_update()
						r100:notification({ text = "Refreshed Configurations", time = 3 })

						r100.output.create_output({
							text = "Configuration list refreshed",
							prefix = "SUCCESS",
							color = r100.colors.success,
						})
					end,
				})

				t60:button_holder({})

				t60:button({
					name = "Unload Configuration",
					confirm = true,
					confirm_timer = 5,
					callback = function()
						r100.output.create_output({
							text = "Unloading configuration: current",
							prefix = "INFO",
							color = r100.colors.information,
						})

						local u3, u4 = pcall(function()
							r100:load_config(r100.old_config)
						end)

						r100.log_result(u3, "Unloaded", "unload", "current", u4)
					end,
				})

				t60:button_holder({})

				t60:button({
					name = "Unload",
					confirm = true,
					confirm_timer = 5,
					callback = function()
						r100.unloading = true
						r100:load_config(r100.old_config)

						for _, u4 in r100.guis, nil, nil do
							u4:Destroy()
						end

						t6:Destroy()

						for _, u6 in r100.connections, nil, nil do
							u6:Disconnect()
						end

						r273:UnbindFromRenderStep("update_esp")
						t21:Destroy()
						r100.unloading = false
						getgenv().backtrack_tech = false
						return
					end,
				})

				r100.windows.playerlist_holder = r100:panel({
					name = "Playerlist",
					anchor_point = r23(0, 0),
					size = r22(0, 529, 0, 445),
					position = r22(0, r100.windows.main_window.items.main_holder.AbsolutePosition.X - 531, 0, r100.windows.main_window.items.main_holder.AbsolutePosition.Y),
					image = r100.images.Playerlist,
				})

				local t1_2 = setmetatable(r100.windows.playerlist_holder.items, r100):column():section({ name = "Playerlist" })
				t1_2:playerlist({})

				r100.priority_dropdown = t1_2:dropdown({
					name = "Priority",
					items = { "Enemy", "Neutral", "Friendly" },
					default = "Neutral",
					flag = "PLAYERLIST_DROPDOWN",
					callback = function(u26)
						r100.prioritize(u26)
					end,
				})

				if r100.priority_dropdown then
					r100.priority_dropdown.set_element_visible(false)
				end

				r100.windows.output = r100:panel({
					name = "Output",
					anchor_point = r23(0, 0),
					size = r22(0, 529, 0, 267),
					position = r22(0, r100.windows.main_window.items.main_holder.AbsolutePosition.X - 531, 0, r100.windows.main_window.items.main_holder.AbsolutePosition.Y + 447),
					image = r100.images.Output,
				})

				local t1_3 = setmetatable(r100.windows.output.items, r100):column():section({ name = "Output" })
				r100.output = t1_3:output({})
				t1_3:button_holder({})

				t1_3:button({
					name = "Clear Output",
					confirm = true,
					callback = function()
						r100.output.clear_output()
					end,
				})

				return setmetatable(t19, r100)
			end

			r100.watermark = function(arg1, t3)
				local t16 = {
					default = t3.text or t3.default or r346("n/a"),
				}

				local t18 = {}

				r100.watermark_outline = r100:create("Frame", {
					BorderSizePixel = 0,
					Position = r22(0, 31, 0, 0),
					Size = r22(0, 50, 0, 29),
					BackgroundColor3 = r357.preset.outline,
					AutomaticSize = Enum.AutomaticSize.X,
					Parent = r9_1,
				})

				r100:apply_theme(r100.watermark_outline, "outline", "BackgroundColor3")
				r100:draggify(r100.watermark_outline)

				t18.inline = r100:create("Frame", {
					Position = r22(0, 1, 0, 1),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.inline,
					Parent = r100.watermark_outline,
				})

				r100:apply_theme(t18.inline, "inline", "BackgroundColor3")

				t18.background_outer = r100:create("Frame", {
					Position = r22(0, 1, 0, 1),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(200, 200, 200),
					Parent = t18.inline,
				})

				local t5 = 1
				local t10 = 35

				t18.gradient_outer = r100:create("UIGradient", {
					Rotation = 90,
					Color = r299({
						r300(0, r116(41, 41, 55)),
						r300(t5, r116(t10, 35, 47)),
					}),
					Parent = t18.background_outer,
				})

				r100:apply_theme(t18.gradient_outer, "contrast", "Color")

				t18.inner_inline = r100:create("Frame", {
					Position = r22(0, 3, 0, 3),
					Size = r22(1, -6, 1, -6),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.inline,
					Parent = t18.background_outer,
				})

				r100:apply_theme(t18.inner_inline, "inline", "BackgroundColor3")

				t18.background_inner = r100:create("Frame", {
					Position = r22(0, 1, 0, 1),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
					Parent = t18.inner_inline,
				})

				t18.gradient_inner = r100:create("UIGradient", {
					Rotation = 90,
					Color = r299({
						r300(0, r116(41, 41, 55)),
						r300(1, r116(35, 35, 47)),
					}),
					Parent = t18.background_inner,
				})

				r100:apply_theme(t18.gradient_inner, "contrast", "Color")

				t18.accent_line = r100:create("Frame", {
					Size = r22(1, 0, 0, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.accent,
					Parent = t18.background_inner,
				})

				r100:apply_theme(t18.accent_line, "accent", "BackgroundColor3")
				local t10_1 = 167

				t18.gradient_accent = r100:create("UIGradient", {
					Rotation = 90,
					Color = r299({
						r300(0, r116(255, 255, 255)),
						r300(1, r116(t10_1, 167, 167)),
					}),
					Parent = t18.accent_line,
				})

				t18.padding = r100:create("UIPadding", {
					PaddingLeft = r293(0, 4),
					PaddingRight = r293(0, 9),
					Parent = t18.accent_line,
				})

				t18.text = r100:create("TextLabel", {
					BackgroundTransparency = 1,
					FontFace = r100.font,
					BorderSizePixel = 0,
					Text = "n/a",
					TextColor3 = r357.preset.text,
					TextSize = 12,
					Position = r22(0, 0, 0, 9),
					AutomaticSize = Enum.AutomaticSize.X,
					Parent = t18.accent_line,
				})

				t18.text_stroke = r100:create("UIStroke", {
					LineJoinMode = Enum.LineJoinMode.Miter,
					Parent = t18.text,
				})

				t16.change_text = function(arg1)
					t18.text.Text = arg1
				end

				t16.set_visible = function(arg1)
					r100.watermark_outline.Visible = arg1
				end

				t16.change_text(t16.default)
				return t16
			end

			r100.refresh_notifications = function()
				for t3, t4 in r1_2, r100.notifications, nil do
					r179:Create(t4, r178(0.3, r100.tweening_style, r100.tweening_direction), {
						Position = r22(0, 31, 0, 89 + (t3 - 1) * 27),
					}):Play()
				end
			end

			r100.notification = function(arg1, t28)
				local t3 = {
					time = t28.time or 5,
					text = t28.text or t28.name or "Notification",
					flashing = t28.flashing or false,
					flashing_speed = t28.flashing_speed or 0.5,
					sound = t28.sound or false,
					sound_type = t28.sound_type or 1,
					volume = t28.volume or 1,
					accent_elements = {},
				}

				local t24 = r100:create("Frame", {
					Parent = r10_1,
					Size = r22(0, 0, 0, 25),
					Position = r22(0, 31, 0, 72 + #r100.notifications * 28),
					BackgroundColor3 = r357.preset.outline,
					AnchorPoint = r23(1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					BorderSizePixel = 0,
				})

				r100:apply_theme(t24, "outline", "BackgroundColor3")

				local t27 = r100:create("Frame", {
					Parent = t24,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BackgroundColor3 = r357.preset.inline,
					BorderSizePixel = 0,
				})

				r100:apply_theme(t27, "inline", "BackgroundColor3")

				local t28_1 = r100:create("Frame", {
					Parent = t27,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BackgroundColor3 = r116(255, 255, 255),
					BorderSizePixel = 0,
				})

				local t38 = r357.preset.low_contrast

				r100:create("UIGradient", {
					Parent = t28_1,
					Color = r299({
						r300(0, r357.preset.high_contrast),
						r300(1, t38),
					}),
				})

				r100:create("TextLabel", {
					Parent = t28_1,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					Text = "  " .. t3.text .. "  ",
					Size = r22(0, 0, 1, 0),
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 12,
					BackgroundTransparency = 1,
					Position = r22(0, 0, 0, -2),
					BorderSizePixel = 0,
				})

				t3.create_accent = function(arg1, arg2, u20)
					local u1 = r100:create("Frame", {
						Parent = t24,
						Position = arg1,
						Size = arg2,
						BackgroundColor3 = r357.preset.accent,
						BorderSizePixel = 0,
					})

					r100:apply_theme(u1, "accent", "BackgroundColor3")
					local u4 = 1

					r100:create("UIGradient", {
						Parent = u1,
						Rotation = u20,
						Color = r299({
							r300(0, r116(255, 255, 255)),
							r300(u4, r116(187, 187, 187)),
						}),
					})

					r327(t3.accent_elements, u1)
					return u1
				end

				local t29 = 90
				t3.create_accent(r22(0, 2, 0, 2), r22(0, 1, 1, -4), t29)
				local t35 = -180
				local t32 = t3.create_accent(r22(0, 2, 1, -3), r22(0, -1, 0, 1), t35)
				r327(r100.notifications, t24)
				r100:refresh_notifications()

				if t3.sound then
					if t3.sound_type == 2 then
						r100.sound("Warning", t3.volume)
					else
						r100.sound("Notification", t3.volume)
					end
				end

				if t3.flashing then
					local t7 = t3.time

					r100.flash_data[t24] = {
						objects = t3.accent_elements,
						speed = t3.flashing_speed,
						end_time = os.clock() + t7,
						last = os.clock(),
						state = 0,
					}
				end

				r179:Create(t24, r178(0.8, r100.tweening_style, r100.tweening_direction), {
					AnchorPoint = r23(0, 0),
				}):Play()

				r179:Create(t32, r178(t3.time, r100.tweening_style, r100.tweening_direction), {
					Size = r22(1, -4, 0, 1),
				}):Play()

				r336(function()
					r337(t3.time)
					local u9 = {}

					for _, u8 in r1_2, r100.notifications, nil do
						if u8 ~= t24 then
							r327(u9, u8)
						end
					end

					r100.notifications = u9
					r100:refresh_notifications()
					local u12 = r178(0.8, r100.tweening_style, r100.tweening_direction)

					r179:Create(t24, u12, {
						AnchorPoint = r23(1, 0),
						BackgroundTransparency = 1,
					}):Play()

					local u8_1 = {
						TextLabel = { TextTransparency = 1 },
						Frame = { BackgroundTransparency = 1 },
						ImageLabel = { ImageTransparency = 1 },
						UIStroke = { Transparency = 1 },
					}

					local u10, u11 = t24:GetDescendants()

					for _, u11_1 in r1_2, u10, u11 do
						local u17 = u8_1[u11_1.ClassName]

						if u17 then
							r179:Create(u11_1, u12, u17):Play()
						end
					end

					r337(1)
					r100.flash_data[t24] = nil
					t24:Destroy()
				end)
			end
		end

		r2_6()

		r100.tab = function(s17, arg2)
			local s30 = {
				name = arg2.name or "tab",
				enabled = false,
			}

			local s15 = r100:create("TextButton", {
				Parent = s17.tab_holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				BorderSizePixel = 0,
				Size = r22(0, 0, 1, -2),
				ZIndex = 5,
				TextSize = 12,
				BackgroundColor3 = r357.preset.outline,
				AutoButtonColor = false,
			})

			r100:apply_theme(s15, "outline", "BackgroundColor3")

			local s19 = r100:create("Frame", {
				Parent = s15,
				Size = r22(1, -2, 1, 0),
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 5,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s19, "inline", "BackgroundColor3")

			local s20 = r100:create("Frame", {
				Parent = s19,
				Size = r22(1, -2, 1, -1),
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 5,
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s9 = 1
			local s6 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s20,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(s9, r116(35, s6, 47)),
				}),
			}), "contrast", "Color")

			r100:apply_theme(r100:create("TextLabel", {
				Parent = s20,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = s30.name,
				BackgroundTransparency = 1,
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 12,
				ZIndex = 5,
				BackgroundColor3 = r116(255, 255, 255),
			}), "accent", "TextColor3")

			local s24 = r100:create("Frame", {
				Parent = r100.section_holder,
				BackgroundTransparency = 1,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				Visible = false,
				BackgroundColor3 = r116(255, 255, 255),
			})

			s30.holder = s24

			r100:create("UIListLayout", {
				Parent = s24,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local function s2(t24, t25, t26, t27, t28, t29)
				local t1 = r178(0.15, r100.tweening_style, r100.tweening_direction)
				r179:Create(t24, t1, { Size = t27 }):Play()
				r179:Create(t25, t1, { Rotation = t28 }):Play()
				r179:Create(t26, t1, { TextColor3 = t29 }):Play()
				return
			end

			s30.open_tab = function()
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)

				if r100.current_tab and r100.current_tab[1] ~= s20 then
					local t16 = r100.current_tab[1]
					local t12 = r357.preset.text
					s2(t16, r287(t16, "UIGradient"), r287(t16, "TextLabel"), r22(1, -2, 1, -1), 90, t12)
					r100.current_tab[2].Visible = false
					r100.current_tab = nil
				end

				r100.current_tab = { s20, s24 }
				local t15 = r357.preset.accent
				s2(s20, r287(s20, "UIGradient"), r287(s20, "TextLabel"), r22(1, -2, 1, 0), -90, t15)
				s24.Visible = true

				if r100.current_element_open and r100.current_element_open ~= s30 then
					r100.current_element_open.set_visible(false)
					r100.current_element_open.open = false
					r100.current_element_open = nil
				end
			end

			r100:connection(s15.MouseButton1Click, s30.open_tab)
			return setmetatable(s30, r100)
		end

		r100.column = function(s9, s10)
			local s16 = {}

			local s7 = r100:create("Frame", {
				Parent = s10 or s9.holder,
				BackgroundTransparency = 1,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s7, "inline", "BackgroundColor3")

			r100:create("UIListLayout", {
				Parent = s7,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalFlex = Enum.UIFlexAlignment.Fill,
			})

			s16.holder = s7
			return setmetatable(s16, r100)
		end

		r100.multi_section = function(s20, arg2)
			local s7 = {
				names = arg2.names or { "a", "b", "c" },
				sections = {},
			}

			local s22 = r100:create("Frame", {
				Parent = s20.holder,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s22, "inline", "BackgroundColor3")

			local s23 = r100:create("Frame", {
				Parent = s22,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s23, "outline", "BackgroundColor3")

			local s24 = r100:create("Frame", {
				Parent = s23,
				ClipsDescendants = true,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				ZIndex = 1,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s28 = r100:create("Frame", {
				Parent = s24,
				Size = r22(1, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 3,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s28, "accent", "BackgroundColor3")
			local s1 = 1
			local s48 = 167

			r100:create("UIGradient", {
				Parent = s28,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(s1, r116(s48, 167, 167)),
				}),
			})

			local s31 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s24,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, 47)),
				}),
			}), "contrast", s31)

			local s29 = r100:create("Frame", {
				Parent = s24,
				ClipsDescendants = true,
				BackgroundTransparency = 1,
				Position = r22(0, -1, 0, 0),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 2, 0, 21),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIListLayout", {
				Parent = s29,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				Padding = r293(0, -3),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			for _, s21 in r1_2, s7.names, nil do
				local s6 = { open = false }

				local s32 = r100:create("TextButton", {
					Parent = s29,
					AutoButtonColor = false,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = "",
					BorderSizePixel = 0,
					Size = r22(0, 0, 1, 0),
					ZIndex = 1,
					TextSize = 12,
					BackgroundColor3 = r357.preset.outline,
				})

				r100:apply_theme(s32, "outline", "BackgroundColor3")

				local s33 = r100:create("Frame", {
					Parent = s32,
					Size = r22(1, 0, 1, -2),
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					ZIndex = 1,
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				local s37 = r100:create("UIGradient", {
					Parent = s33,
					Rotation = 90,
					Color = r299({
						r300(0, r116(41, 41, 55)),
						r300(1, r116(35, 35, 47)),
					}),
				})

				r100:apply_theme(s37, "contrast", "Color")

				local s41 = r100:create("TextLabel", {
					Parent = s33,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = s21,
					BackgroundTransparency = 1,
					Size = r22(1, 0, 1, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100:apply_theme(s41, "accent", "TextColor3")

				r100:create("UIStroke", {
					Parent = s41,
					LineJoinMode = Enum.LineJoinMode.Miter,
				})

				local s44 = r100:create("ScrollingFrame", {
					Parent = s24,
					ScrollBarImageColor3 = r357.preset.accent,
					Active = true,
					MidImage = r100.images.Scroll,
					TopImage = r100.images.Scroll,
					BottomImage = r100.images.Scroll,
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					ScrollBarThickness = 2,
					Size = r22(1, 0, 1, -20),
					Visible = false,
					BackgroundTransparency = 1,
					Position = r22(0, 0, 0, 24),
					BackgroundColor3 = r116(255, 255, 255),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					CanvasSize = r22(0, 0, 0, 0),
				})

				r100:apply_theme(s44, "accent", "ScrollBarImageColor3")
				local s48_1 = r100
				local s47_1 = s48_1.create
				local s53 = 10
				local s55 = 10

				local s50 = {
					Parent = r100:create("Frame", {
						Parent = s24,
						BorderSizePixel = 0,
						BackgroundColor3 = r116(255, 255, 255),
						BackgroundTransparency = 0,
						Size = r22(1, 0, 0, 60),
						Position = r22(0, 0, 1, -60),
						ZIndex = 10,
					}),
					Rotation = 90,
					Color = r299({
						r300(0, r116(10, 10, 10)),
						r300(1, r116(s53, 10, s55)),
					}),
				}

				local s51 = {}
				local s52 = r144(0, 1)
				local s53_1 = r144(0.5, 1)
				s51[1] = s52
				s51[2] = s53_1

				do
					local values = table.pack(r144(1, 0))
					table.move(values, 1, values.n, 3, s51)
				end

				s50.Transparency = r301(s51)
				r100:apply_theme(s47_1(s48_1, "UIGradient", s50), "contrast", "Color")

				local s47_2 = r100:create("Frame", {
					Parent = s44,
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, 0, 0, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				s6.holder = s47_2

				r100:create("UIListLayout", {
					Parent = s47_2,
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = r293(0, 4),
				})

				r100:create("UIPadding", {
					Parent = s44,
					PaddingBottom = r293(0, 60),
				})

				s6.open_tab = function(arg1, t28)
					local t24 = r178(0.15, r100.tweening_style, r100.tweening_direction)

					r179:Create(s37, t24, {
						Rotation = t28 and -90 or 90,
					}):Play()

					r179:Create(s32, t24, {
						Size = r22(0, 0, 1, t28 and 1 or 0),
					}):Play()

					r179:Create(s41, t24, {
						TextColor3 = t28 and r357.preset.accent or r357.preset.text,
					}):Play()

					s44.Visible = t28
				end

				r100:connection(s32.MouseButton1Click, function()
					r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)

					for _, t4 in r1_2, s7.sections, nil do
						t4:open_tab(false)
					end

					if r100.current_element_open then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
						r100.current_element_open = nil
					end

					s6:open_tab(true)
				end)

				s7.sections[#s7.sections + 1] = setmetatable(s6, r100)
			end

			s7.sections[1]:open_tab(true)
			return unpack(s7.sections)
		end

		r100.section = function(s8, arg2)
			local s29 = {
				name = arg2.name or "Section",
			}

			local s10 = r100:create("Frame", {
				Parent = s8.holder,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s10, "inline", "BackgroundColor3")

			local s11 = r100:create("Frame", {
				Parent = s10,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s11, "outline", "BackgroundColor3")

			local s12 = r100:create("Frame", {
				Parent = s11,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", {
				Parent = r100:create("TextLabel", {
					Parent = s12,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = s29.name,
					BackgroundTransparency = 1,
					Position = r22(0, 6, 0, 4),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			local s15 = r100:create("Frame", {
				Parent = s12,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 0, 2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s15, "accent", "BackgroundColor3")
			local s4_1 = 1
			local s22 = 167

			r100:create("UIGradient", {
				Parent = s15,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(s4_1, r116(s22, 167, 167)),
				}),
			})

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s12,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, 47)),
				}),
			}), "contrast", "Color")

			local s2 = r100:create("ScrollingFrame", {
				Parent = s12,
				ScrollBarImageColor3 = r357.preset.accent,
				Active = true,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarThickness = 2,
				MidImage = r100.images.Scroll,
				TopImage = r100.images.Scroll,
				BottomImage = r100.images.Scroll,
				Size = r22(1, 0, 1, -20),
				BackgroundTransparency = 1,
				Position = r22(0, 0, 0, 20),
				BackgroundColor3 = r116(255, 255, 255),
				BorderColor3 = r116(0, 0, 0),
				BorderSizePixel = 0,
				CanvasSize = r22(0, 0, 0, 0),
			})

			r100:apply_theme(s2, "accent", "ScrollBarImageColor3")

			r100:connection(s2:GetPropertyChangedSignal("CanvasPosition"), function()
				if r100.current_element_open then
					r100.current_element_open.set_visible(false)
					r100.current_element_open.open = false
					r100.current_element_open = nil
				end
			end)

			local s18 = r100
			local s17 = s18.create

			local s20 = {
				Parent = r100:create("Frame", {
					Parent = s12,
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
					BackgroundTransparency = 0,
					Size = r22(1, 0, 0, 60),
					Position = r22(0, 0, 1, -60),
					ZIndex = 10,
				}),
				Rotation = 90,
				Color = r299({
					r300(0, r116(10, 10, 10)),
					r300(1, r116(10, 10, 10)),
				}),
			}

			local s22_1 = {}
			local s23 = r144(0, 1)
			local s24 = r144(0.5, 1)
			local s27 = 0
			s22_1[1] = s23
			s22_1[2] = s24

			do
				local values = table.pack(r144(1, s27))
				table.move(values, 1, values.n, 3, s22_1)
			end

			s20.Transparency = r301(s22_1)
			r100:apply_theme(s17(s18, "UIGradient", s20), "contrast", "Color")

			local s17_1 = r100:create("Frame", {
				Parent = s2,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			s29.holder = s17_1

			r100:create("UIListLayout", {
				Parent = s17_1,
				Padding = r293(0, 4),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			r100:create("UIPadding", {
				Parent = s2,
				PaddingBottom = r293(0, 10),
			})

			return setmetatable(s29, r100)
		end

		r100.slider = function(s4, s5)
			local s51 = {
				name = s5.name,
				suffix = s5.suffix or "",
				flag = s5.flag or "nil",
				callback = s5.callback or function()
				end,
				visible = s5.visible or true,
				tooltip = s5.tooltip,
				min = s5.min or s5.minimum or 0,
				max = s5.max or s5.maximum or 100,
				intervals = s5.interval or s5.decimal or 1,
				default = s5.default or 10,
				dragging = false,
				value = s5.default or 10,
				input_mode = false,
				items = {},
				slider_type = s5.slider_type or "keybind",
			}

			local s1 = r100:create("TextLabel", {
				Parent = s4.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 1,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s18 = nil

			local s7 = r100:create("Frame", {
				Parent = s1,
				BackgroundTransparency = 1,
				Position = r22(0, 1, 0, -1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 0, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			if s51.name then
				s18 = r100:create("TextLabel", {
					Parent = s7,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = s51.name,
					BackgroundTransparency = 1,
					Size = r22(0, 0, 1, -1),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				}, "text")
			end

			r100:create("UIListLayout", {
				Parent = s7,
				Padding = r293(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
			})

			local s20 = r100:create("Frame", {
				Parent = s1,
				Position = r22(0, 0, 0, s51.name and 15 or 0),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s7_1 = r100:create("TextButton", {
				Parent = s20,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -1, 1, 12),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Text = "",
				AutoButtonColor = false,
			})

			r100:apply_theme(s7_1, "outline", "BackgroundColor3")
			r100:hoverify(s1, s7_1)

			local s24 = r100:create("Frame", {
				Parent = s7_1,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				ZIndex = 1,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s24, "inline", "BackgroundColor3")

			local s25 = r100:create("Frame", {
				Parent = s24,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
			})

			local s29 = r100:create("Frame", {
				Parent = s25,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s31 = r100:create("TextLabel", {
				Parent = s29,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "12.50/100.00",
				BackgroundTransparency = 1,
				Position = r22(0, 0, 0, -1),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				TextSize = 12,
				ZIndex = 2,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s3_11 = r100:create("TextBox", {
				Parent = s29,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				BackgroundTransparency = 1,
				Position = r22(0, 0, 0, -1),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				TextSize = 12,
				ZIndex = 3,
				Visible = false,
				ClearTextOnFocus = false,
				PlaceholderText = "Enter number...",
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s37 = r100:create("Frame", {
				Parent = s29,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s37, "accent", "BackgroundColor3")
			local s5_2 = 1
			local s44 = 117

			r100:create("UIGradient", {
				Parent = s37,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(s5_2, r116(s44, 117, 117)),
				}),
			})

			local s47 = 47

			r100:create("UIGradient", {
				Parent = s29,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, s47)),
				}),
			})

			local s30 = "Color"
			r100:apply_theme(r287(s29, "UIGradient"), "contrast", s30)
			local s44_1 = 167
			local s46 = 167

			r100:create("UIGradient", {
				Parent = s25,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(s44_1, 167, s46)),
				}),
			})

			r100:create("UIListLayout", {
				Parent = s20,
				Padding = r293(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local s5_3 = nil

			if s51.slider_type == "keybind" then
				s5_3 = s51.items

				s5_3.outline = r100:create("Frame", {
					Parent = r9_1,
					Size = r22(0, 182, 0, 82),
					Visible = false,
					Position = r22(0.58041960000991821, 0, 0.24161073565483093, 0),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.None,
					BackgroundColor3 = r357.preset.outline,
				})

				r100:apply_theme(s5_3.outline, "outline", "BackgroundColor3")

				s5_3.glow = r100:create("ImageLabel", {
					Parent = s5_3.outline,
					ImageColor3 = r357.preset.glow,
					ScaleType = Enum.ScaleType.Slice,
					BorderColor3 = r116(0, 0, 0),
					BackgroundColor3 = r116(255, 255, 255),
					Visible = true,
					Image = r100.images.Glow4,
					BackgroundTransparency = 1,
					ImageTransparency = 0.8,
					Position = r22(0, -21, 0, -21),
					Size = r22(1, 41, 1, 43),
					ZIndex = 0,
					BorderSizePixel = 0,
					SliceCenter = r294(r23(21, 21), r23(79, 79)),
				})

				r100:apply_theme(s5_3.glow, "glow", "ImageColor3")

				s5_3.accent = r100:create("Frame", {
					Parent = s5_3.outline,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = r357.preset.accent,
				})

				r100:apply_theme(s5_3.accent, "accent", "BackgroundColor3")

				s5_3.background = r100:create("Frame", {
					Parent = s5_3.accent,
					Size = r22(1, -2, 1, -2),
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = r357.preset.high_contrast,
				})

				r100:apply_theme(s5_3.background, "high_contrast", "BackgroundColor3")

				s5_3.holder = r100:create("Frame", {
					Parent = s5_3.background,
					Size = r22(1, 1, 0, 0),
					Position = r22(0, 0, 0, 20),
					BorderColor3 = r116(0, 0, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
				})

				r100:create("UIListLayout", {
					Parent = s5_3.holder,
					Padding = r293(0, 4),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				})

				r100:create("UIPadding", {
					Parent = s5_3.holder,
					PaddingBottom = r293(0, 10),
				})

				local s4_1 = setmetatable(s5_3, r100)
				local s8 = r349[s51.flag]

				s4_1:label({ name = "Override Keybind" }):keybind({
					name = s51.name .. " Override",
					callback = function(t10)
						if s51.set and r349[s51.flag .. "_override"] and r349[s51.flag] then
							if t10 then
								s8 = r349[s51.flag]
								s51.set(r349[s51.flag .. "_override"])
							else
								s51.set(s8)
							end
						end
					end,
					flag = s51.flag .. "_override_keybind",
				})

				s4_1:slider({
					name = "Override Value",
					slider_type = "normal",
					flag = s51.flag .. "_override",
					suffix = s51.suffix,
					min = s51.min,
					max = s51.max,
					interval = s51.intervals,
					default = s51.default,
				})

				r100:create("UIPadding", {
					PaddingBottom = r293(0, 2),
					Parent = s5_3.accent,
				})

				s5_3.info_title = r100:create("TextLabel", {
					FontFace = r100.font,
					TextColor3 = r116(136, 136, 136),
					BorderColor3 = r116(0, 0, 0),
					Text = s51.name .. " Value Override",
					Parent = s5_3.outline,
					Size = r22(1, 0, 0, 0),
					Position = r22(0, 7, 0, 5),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
				})

				r100:create("UIStroke", {
					Parent = s5_3.info_title,
				})

				r100:create("UIPadding", {
					PaddingBottom = r293(0, 2),
					Parent = s5_3.outline,
				})
			end

			s51.set = function(t31)
				local t1 = not t31

				if not t1 then
					local t4 = "userdata"
					t1 = type(t31) == t4
				end

				if t1 then
					return
				end
				s51.value = r311(r100:round(t31, s51.intervals), s51.min, s51.max)
				s37.Size = r22((s51.value - s51.min) / (s51.max - s51.min), 0, 1, 0)
				local t5 = s51.suffix
				local t9 = s51.suffix
				s31.Text = r324(s51.value) .. t5 .. "/" .. r324(s51.max) .. t9
				r349[s51.flag] = s51.value
				s51.callback(r349[s51.flag])
			end

			s51.set_element_visible = function(t35)
				s1.Visible = t35

				if s18 then
					s18.Visible = t35
				end
			end

			s51.is_slider_active = function()
				local t9 = s1

				for t2 = 1, 8 do
					if not t9 or not t9.Parent then
						return false
					end
					t9 = t9.Parent
					if r155(t9, "GuiObject") and t9.Visible == false then
						return false
					end
				end

				return true
			end

			s51.enter_input_mode = function()
				s51.input_mode = true
				s31.Visible = false
				s3_11.Visible = true
				s3_11.Text = r324(s51.value)
				s3_11:CaptureFocus()
			end

			s51.exit_input_mode = function(t13)
				s51.input_mode = false
				s3_11.Visible = false
				s31.Visible = true

				if t13 then
					local t1 = tonumber(s3_11.Text)

					if t1 and t1 == t1 and t1 ~= r315 and t1 ~= -r315 then
						s51.set(t1)
					end
				end

				s3_11:ReleaseFocus()
			end

			r100:connection(s3_11.FocusLost, function(t32)
				if s51.input_mode then
					s51.exit_input_mode(t32)
				end
			end)

			r100:connection(s3_11:GetPropertyChangedSignal("Text"), function()
				local t8 = s3_11.Text
				local t9 = t8:gsub("[^0-9%.%-]", "")
				local t11 = 0
				local t13 = ""
				local t15 = 0

				for t4 = 1, #t9 do
					local t2 = t9:sub(t4, t4)

					if t2 == "-" then
						if t4 == 1 and t11 == 0 then
							t13 ..= t2
							t11 += 1
						end
					elseif t2 == "." then
						if t15 == 0 then
							t13 ..= t2
							t15 += 1
						end
					else
						t13 ..= t2
					end
				end

				if t13 ~= t8 then
					s3_11.Text = t13
				elseif #t13 > 0 and t13 ~= "-" and t13 ~= "." and t13 ~= "-." then
					local t3_1 = tonumber(t13)

					if t3_1 and t3_1 == t3_1 and t3_1 ~= r315 and t3_1 ~= -r315 then
						r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
					end
				end
			end)

			r100.active.slider_handlers[s51.flag] = function(arg1)
				if not arg1 then
					s51.dragging = false
					return
				end

				if not s51.is_slider_active() then
					return
				end

				if s51.slider_type == "keybind" and s5_3.outline.Visible and not r100:hovering({
					s5_3.outline,
				}) then
					s5_3.outline.Visible = false
				end

				if r100:hovering({ s7_1 }) then
					if r100.menu_opened and (r285(r276, Enum.KeyCode.LeftShift) or r285(r276, Enum.KeyCode.RightShift)) then
						s51.enter_input_mode()
					else
						s51.dragging = true
						r100.active.slider = { cfg = s51, slider = s7_1 }
					end
				end
			end

			r100:connection(s7_1.MouseButton1Down, function()
				if r100.menu_opened and s51.is_slider_active() and not s51.input_mode then
					if r285(r276, Enum.KeyCode.LeftShift) or r285(r276, Enum.KeyCode.RightShift) then
						s51.enter_input_mode()
					else
						s51.dragging = true
						r100.active.slider = { cfg = s51, slider = s7_1 }
						r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
					end
				end
			end)

			r100:connection(s7_1.MouseButton1Up, function()
				s51.dragging = false
				r100.active.slider = nil
			end)

			if s51.slider_type == "keybind" then
				r100:connection(s7_1.MouseButton2Down, function()
					if not s51.is_slider_active() then
						return
					end
					local t2 = r276:GetMouseLocation()
					r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
					s5_3.outline.Visible = not s5_3.outline.Visible
					s5_3.outline.Position = r22(0, t2.X, 0, t2.Y - 65)
				end)
			end

			if s51.tooltip then
				r100:tool_tip({
					name = s51.tooltip,
					path = s1,
				})
			end

			s51.set(s51.default)
			s51.set_element_visible(s51.visible)
			r350[s51.flag] = s51.set
			r100.config_flags[s51.flag] = s51.set
			r100.visible_flags[s51.flag] = s51.set_element_visible
			return setmetatable(s51, r100)
		end

		r100.toggle = function(s33, s34)
			local s9 = {
				enabled = s34.enabled or nil,
				name = s34.name or "Toggle",
			}

			s9.flag = s34.flag or r324(r308(1, 9999999))

			s9.callback = s34.callback or function()
			end

			s9.default = s34.default or false
			s9.colorpicker = s34.color or nil
			s9.visible = s34.visible or true
			s9.tooltip = s34.tooltip or nil

			local s1 = r100:create("TextButton", {
				Parent = s33.holder,
				FontFace = r100.font,
				TextColor3 = r116(151, 151, 151),
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 1,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s32 = r100:create("Frame", {
				Parent = s1,
				Position = r22(1, -1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 0, 0, 12),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			s9.right_holder = s32

			r100:create("UIListLayout", {
				Parent = s32,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			r100:create("UIPadding", { Parent = s1 })

			local s34_1 = r100:create("Frame", {
				Parent = s1,
				BackgroundTransparency = 1,
				Position = r22(0, 0, 0, 0),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 0, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", {
				Parent = r100:create("TextLabel", {
					Parent = s34_1,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = s9.name,
					BackgroundTransparency = 1,
					Size = r22(0, 0, 1, -1),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			r100:create("UIListLayout", {
				Parent = s34_1,
				Padding = r293(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
			})

			local s32_1 = r100:create("TextButton", {
				Parent = s34_1,
				Text = "",
				AutoButtonColor = false,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 14, 0, 14),
				BorderSizePixel = 0,
				ZIndex = 1,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s32_1, "outline", "BackgroundColor3")
			r100:apply_theme(s32_1, "accent", "BackgroundColor3")

			local s36 = r100:create("Frame", {
				Parent = s32_1,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				ZIndex = 2,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s36, "inline", "BackgroundColor3")

			local s40 = r100:create("Frame", {
				Parent = s36,
				BackgroundTransparency = 1,
				ZIndex = 3,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s40, "accent", "BackgroundColor3")
			local s3_2 = 1
			local s49 = 117

			r100:create("UIGradient", {
				Parent = s40,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(s3_2, r116(117, 117, s49)),
				}),
			})

			local s49_1 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = r100:create("Frame", {
					Parent = s36,
					ZIndex = 2,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(s49_1, 35, 47)),
				}),
			}), "contrast", "Color")

			r100:hoverify(s1, s32_1)

			s9.set_element_visible = function(arg1)
				s1.Visible = arg1
			end

			s9.set = function(t37)
				s9.enabled = t37

				r100:tween(s40, {
					BackgroundTransparency = t37 and 0 or 1,
				})

				r349[s9.flag] = t37
				s9.callback(t37)
			end

			s9.toggle_function = function()
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
				s9.set(not s9.enabled)
			end

			r100:connection(s1.MouseButton1Click, s9.toggle_function)
			r100:connection(s32_1.MouseButton1Click, s9.toggle_function)

			if s9.tooltip then
				r100:tool_tip({
					name = s9.tooltip,
					path = s1,
				})
			end

			s9.set(s9.default)
			s9.set_element_visible(s9.visible)
			r100.config_flags[s9.flag] = s9.set
			r100.visible_flags[s9.flag] = s9.set_element_visible
			return setmetatable(s9, r100)
		end

		r100.colorpicker = function(s11, s12)
			local s6 = s11.right_holder

			local s4 = {
				name = s12.name or "Color",
				flag = s12.flag or "nil",
			}

			s4.color = s12.color or r296(1, 1, 1)
			s4.alpha = s12.alpha or 1

			s4.callback = s12.callback or function()
			end

			s4.right_holder = s11.right_holder
			local s77 = nil
			local s10, s11_1, s12_1 = s4.color:ToHSV()
			local s79 = s4.alpha

			local s6_1 = r100:create("TextButton", {
				Parent = s6,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 24, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Text = "",
				AutoButtonColor = false,
			})

			r100:apply_theme(s6_1, "outline", "BackgroundColor3")

			local s65 = r100:create("Frame", {
				Parent = s6_1,
				ZIndex = 2,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s65, "inline", "BackgroundColor3")

			local s13 = r100:create("ImageLabel", {
				Parent = s65,
				Image = r100.images.Transparency,
				ZIndex = 2,
				ResampleMode = Enum.ResamplerMode.Pixelated,
				ImageTransparency = 1,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(250, 165, 27),
				ScaleType = Enum.ScaleType.Tile,
				TileSize = r22(0, 4, 0, 4),
			})

			r100:hoverify(s6_1, s6_1)

			r100:create("UIGradient", {
				Parent = s13,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(117, 117, 117)),
				}),
			})

			local s16 = r100:create("Frame", {
				Parent = r9_1,
				Position = r22(0, s6_1.AbsolutePosition.X + 1, 0, s6_1.AbsolutePosition.Y + 17),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 190, 0, 225),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Visible = false,
				ZIndex = 1,
			})

			r100:apply_theme(s16, "outline", "BackgroundColor3")
			r100:make_resizable(s16)
			local s70 = 79

			r100:apply_theme(r100:create("ImageLabel", {
				Parent = s16,
				ImageColor3 = r357.preset.glow,
				ScaleType = Enum.ScaleType.Slice,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r116(255, 255, 255),
				Visible = true,
				Image = r100.images.Glow4,
				BackgroundTransparency = 1,
				ImageTransparency = 0.8,
				Position = r22(0, -21, 0, -21),
				Size = r22(1, 41, 1, 41),
				ZIndex = 0,
				BorderSizePixel = 0,
				SliceCenter = r294(r23(21, 21), r23(s70, 79)),
			}), "glow", "ImageColor3")

			local s20 = r100:create("Frame", {
				Parent = s16,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s20, "accent", "BackgroundColor3")

			local s21 = r100:create("Frame", {
				Parent = s20,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r357.preset.outline,
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s21,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, 47)),
				}),
			}), "contrast", "Color")

			r100:create("UIStroke", {
				Parent = r100:create("TextLabel", {
					Parent = s21,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = s4.name,
					BackgroundTransparency = 1,
					Position = r22(0, 2, 0, 4),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			r100:create("UIPadding", {
				Parent = s21,
				PaddingBottom = r293(0, 4),
				PaddingRight = r293(0, 4),
				PaddingLeft = r293(0, 4),
			})

			local s26 = r100:create("Frame", {
				Parent = s21,
				Position = r22(0, 0, 0, 20),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, -67),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s26, "inline", "BackgroundColor3")

			s4.holder = r100:create("Frame", {
				Parent = s16,
				Position = r22(0, 6, 1, -48),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -3, 0, 0),
				BorderSizePixel = 0,
			})

			local s1 = setmetatable(s4, r100):dropdown({
				flag = s4.flag .. "_effects",
				items = { "Rainbow", "Breathing" },
				multi = true,
				ignore = s4,
				default = {},
			})

			s4.holder = r100:create("Frame", {
				Parent = s16,
				Position = r22(1, 2, 1, -25),
				BorderColor3 = r116(0, 0, 0),
				AnchorPoint = r23(1, 0),
				Size = r22(1, -4, 0, 0),
				BorderSizePixel = 0,
			})

			local s2_4 = setmetatable(s4, r100)
			s2_4:button_holder({})

			s2_4:button({
				name = "Copy",
				callback = function()
					setclipboard(r324(s4.color))
					r100.copied_flag = r349[s4.flag]
					r100.is_rainbow = r349[s4.flag .. "_effects"]
				end,
			})

			s2_4:button({
				name = "Paste",
				callback = function()
					local t9 = {}

					if r330(r100.is_rainbow, "Rainbow") then
						r327(t9, "Rainbow")
					end

					if r330(r100.is_rainbow, "Breathing") then
						r327(t9, "Breathing")
					end

					s1.set(t9)
					s4.set(r100.copied_flag.Color, r100.copied_flag.Transparency)
				end,
			})

			local s29 = r100:create("Frame", {
				Parent = s26,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s29, "outline", "BackgroundColor3")

			local s30 = r100:create("Frame", {
				Parent = s29,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s69 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s30,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, s69, 47)),
				}),
			}), "contrast", "Color")

			r100:create("UIPadding", {
				Parent = s30,
				PaddingTop = r293(0, 4),
				PaddingBottom = r293(0, 4),
				PaddingRight = r293(0, 4),
				PaddingLeft = r293(0, 4),
			})

			local s34 = r100:create("TextButton", {
				Parent = s30,
				AnchorPoint = r23(0, 0.5),
				Position = r22(0, 0, 1, -8),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -20, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Text = "",
				AutoButtonColor = false,
			})

			r100:apply_theme(s34, "inline", "BackgroundColor3")

			local s38 = r100:create("Frame", {
				Parent = s34,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s38, "outline", "BackgroundColor3")

			local s39 = r100:create("Frame", {
				Parent = s38,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(0, 221, 255),
			})

			local s71 = 1

			r100:create("UIGradient", {
				Parent = r100:create("ImageLabel", {
					Parent = s39,
					ScaleType = Enum.ScaleType.Tile,
					BorderColor3 = r116(0, 0, 0),
					Image = r100.images.Transparency,
					BackgroundTransparency = 1,
					Size = r22(1, 0, 1, 0),
					TileSize = r22(0, 6, 0, 6),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				Transparency = r301({
					r144(0, 0),
					r144(1, s71),
				}),
			})

			local s41 = r100:create("Frame", {
				Parent = s39,
				BorderMode = Enum.BorderMode.Inset,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 3, 1, 0),
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s42 = r100:create("TextButton", {
				Parent = s30,
				AnchorPoint = r23(1, 0),
				Position = r22(1, -1, 0, 0),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 14, 1, -20),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Text = "",
				AutoButtonColor = false,
			})

			local s44 = r100:create("Frame", {
				Parent = r100:create("Frame", {
					Parent = s42,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				}),
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s46 = r100
			local s45 = s46.create
			local s48 = { Parent = s44, Rotation = 270 }
			local s9 = {}
			local s65_1 = r300(0, r116(255, 0, 0))
			local s66 = r300(0.17, r116(255, 255, 0))
			local s68 = r300(0.33, r116(0, 255, 0))
			local s69_1 = r300(0.5, r116(0, 255, 255))
			local s70_1 = r300(0.67, r116(0, 0, 255))
			local s71_1 = r300(0.83, r116(255, 0, 255))
			local s73 = 255
			s9[1] = s65_1
			s9[2] = s66
			s9[3] = s68
			s9[4] = s69_1
			s9[5] = s70_1
			s9[6] = s71_1

			do
				local values = table.pack(r300(1, r116(s73, 0, 0)))
				table.move(values, 1, values.n, 7, s9)
			end

			s48.Color = r299(s9)
			s45(s46, "UIGradient", s48)

			local s45_1 = r100:create("Frame", {
				Parent = s44,
				BorderMode = Enum.BorderMode.Inset,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 0, 3),
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s49 = r100:create("Frame", {
				Parent = s30,
				AnchorPoint = r23(1, 1),
				Position = r22(1, -1, 1, -1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 14, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s49, "inline", "BackgroundColor3")

			local s50 = r100:create("Frame", {
				Parent = s49,
				Size = r22(1, -2, 1, -2),
				Active = true,
				BorderColor3 = r116(0, 0, 0),
				Position = r22(0, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s50, "outline", "BackgroundColor3")

			local s51 = r100:create("ImageLabel", {
				Parent = s50,
				Size = r22(1, -2, 1, -2),
				ScaleType = Enum.ScaleType.Tile,
				ResampleMode = Enum.ResamplerMode.Pixelated,
				TileSize = r22(0, 4, 0, 4),
				ImageTransparency = 1,
				Image = r100.images.Transparency,
				Active = true,
				BorderColor3 = r116(0, 0, 0),
				Position = r22(0, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(0, 221, 255),
			})

			local s55 = r100:create("Frame", {
				Parent = s30,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -20, 1, -20),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s55, "inline", "BackgroundColor3")

			local s56 = r100:create("Frame", {
				Parent = s55,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s56, "outline", "BackgroundColor3")

			local s57 = r100:create("Frame", {
				Parent = s56,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(0, 221, 255),
			})

			local s58 = r100:create("TextButton", {
				Parent = s57,
				Size = r22(1, 0, 1, 0),
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 2,
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
				Text = "",
				AutoButtonColor = false,
			})

			r100:create("UIGradient", {
				Parent = s58,
				Rotation = 270,
				Transparency = r301({
					r144(0, 0),
					r144(1, 1),
				}),
				Color = r299({
					r300(0, r116(0, 0, 0)),
					r300(1, r116(0, 0, 0)),
				}),
			})

			local s59 = r100:create("TextButton", {
				Parent = s57,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
				Text = "",
				AutoButtonColor = false,
			})

			r100:create("UIGradient", {
				Parent = s59,
				Transparency = r301({
					r144(0, 0),
					r144(1, 1),
				}),
			})

			local s60_1 = r100:create("Frame", {
				Parent = s57,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 2, 0, 2),
				BorderSizePixel = 1,
				BackgroundColor3 = r116(255, 255, 255),
				ZIndex = 3,
			})

			s4.set_visible = function(t17)
				s16.Visible = t17

				if t17 then
					if r100.current_element_open and r100.current_element_open ~= s4 then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
					end

					r100.current_element_open = s4
					s16.Position = r22(0, s6_1.AbsolutePosition.X + 1, 0, s6_1.AbsolutePosition.Y + 17)
				else
					s1.set_visible(false)
					s1.open = false
				end
			end

			r100:connection(s6_1.MouseButton1Click, function()
				s4.open = not s4.open
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
				s4.set_visible(s4.open)
			end)

			s4.set = function(t15, t16)
				if t15 then
					local t13, t14, t15_1 = t15:ToHSV()
					s10 = t13
					s11_1 = t14
					s12_1 = t15_1
				end

				if t16 then
					s79 = t16
				end

				local t13_1 = r298(s10, s11_1, s12_1)
				local t20 = 1 - s10
				r351.set_property(s45_1, "Position", r22(0, 0, t20, t20 < 1 and 0 or -3))
				r351.set_property(s41, "Position", r22(s79, s79 < 1 and 0 or -3, 0, 0))
				r351.set_property(s39, "BackgroundColor3", t13_1)
				r351.set_property(s51, "BackgroundColor3", t13_1)
				r351.set_property(s51, "ImageTransparency", s79)
				r351.set_property(s13, "BackgroundColor3", t13_1)
				r351.set_property(s13, "ImageTransparency", s79)
				r351.set_property(s57, "BackgroundColor3", r298(s10, 1, 1))
				s4.color = t13_1
				s4.alpha = s79
				r351.set_property(s60_1, "Position", r22(s11_1, s11_1 < 1 and 0 or -3, 1 - s12_1, 1 - s12_1 < 1 and 0 or -3))
				r349[s4.flag] = { Color = t13_1, Transparency = s79 }
				s4.callback(t13_1, s79)
			end

			s4.update_color = function()
				local t8 = r276:GetMouseLocation()

				if s77 == "sat" then
					local t4 = s59.AbsolutePosition
					s11_1 = r311((r23(t8.X, t8.Y - r288) - t4).X / s59.AbsoluteSize.X, 0, 1)
					local t4_1 = s58.AbsolutePosition
					s12_1 = 1 - r311((r23(t8.X, t8.Y - r288) - t4_1).Y / s58.AbsoluteSize.Y, 0, 1)
				elseif s77 == "hue" then
					local t4_2 = s42.AbsolutePosition
					s10 = r311(1 - (r23(t8.X, t8.Y - r288) - t4_2).Y / s42.AbsoluteSize.Y, 0, 1)
				elseif s77 == "alpha" then
					local t4_3 = s34.AbsolutePosition
					s79 = r311((r23(t8.X, t8.Y - r288) - t4_3).X / s34.AbsoluteSize.X, 0, 1)
				end

				s4.set()
			end

			r100:connection(s34.MouseButton1Down, function()
				s77 = "alpha"
				r100.active.color = s4.update_color
			end)

			r100:connection(s42.MouseButton1Down, function()
				s77 = "hue"
				r100.active.color = s4.update_color
			end)

			r100:connection(s58.MouseButton1Down, function()
				s77 = "sat"
				r100.active.color = s4.update_color
			end)

			r100:connection(r276.InputEnded, function(arg1)
				if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					s77 = nil
					r100.active.color = nil
				end
			end)

			local function s2_5()
				r336(function()
					while true do
						r337(1 / r100.animation_frequency)
						local R = r349[s4.flag .. "_effects"]
						if not R then
							continue
						end

						if r330(R, "Rainbow") or (r330(R, "Breathing")) then
							local L = r307(r309(tick() * r100.animation_speed))
							local k = r330(R, "Rainbow") and L or s10
							local J = r330(R, "Breathing") and L or s79
							L = r298(k, s11_1, s12_1)
							s4.set(L, J)
						end
					end
				end)
			end

			s2_5()
			s4.set(s4.color, s4.alpha)
			r100.config_flags[s4.flag] = s4.set
			return setmetatable(s4, r100)
		end

		r100.keybind = function(arg1, s38)
			local s2 = arg1.right_holder

			local s9 = {
				flag = s38.flag or "n/a",
				callback = s38.callback or function()
				end,
				open = false,
				binding = nil,
				name = s38.name or nil,
				key = s38.key or nil,
				mode = s38.mode or "toggle",
				active = s38.default or false,
			}

			local function s10()
				r349[s9.flag] = {
					mode = s9.mode,
					key = s9.key,
					active = s9.active,
				}
			end

			s10()

			local function s11(t22)
				return (r324(r358[t22] or r324(t22):gsub("Enum.", "")):gsub("KeyCode.", ""):gsub("UserInputType.", ""))
			end

			local s12 = {}

			local function s13()
				if not s9.name then
					return
				end
				local t2 = r324(s9.key) ~= "Enums" and s11(s9.key) or "None"
				s12.name.Text = r324(s9.name)
				s12.bind.Text = t2
				s12.holder.Visible = s9.active

				for _, t4 in pairs({
					s12.name,
					s12.bind,
				}) do
					r100:tween(t4, {
						TextTransparency = s9.active and 0 or 1,
					})

					local t9_1 = r287(t4, "UIStroke")

					if t9_1 then
						r100:tween(t9_1, {
							Transparency = s9.active and 0 or 1,
						})
					end
				end

				return
			end

			if s9.name then
				s12.holder = r100:create("Frame", {
					Parent = r100.keybind_list,
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -5, 0, 18),
					Visible = false,
					Position = r22(0, 5, 0, -1),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.Y,
				})

				s12.name = r100:create("TextLabel", {
					Parent = s12.holder,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = "",
					Size = r22(0.8, 0, 1, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = r357.preset.text,
				})

				s12.bind = r100:create("TextLabel", {
					Parent = s12.holder,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = "",
					Size = r22(0.2, 0, 1, 0),
					Position = r22(0.8, 0, 0, 0),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Right,
					TextTruncate = Enum.TextTruncate.AtEnd,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = r357.preset.text,
				})
			end

			local s35 = r100:create("TextButton", {
				Parent = s2,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				Size = r22(0, 24, 0, 14),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s35, "outline", "BackgroundColor3")

			r100:create("UIPadding", {
				Parent = s35,
				PaddingRight = r293(0, 2),
			})

			r100:hoverify(s35, s35).Size = r22(1, 2, 1, 0)

			local s38_1 = r100:create("Frame", {
				Parent = s35,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.X,
				Size = r22(1, -2, 1, -2),
				ZIndex = 2,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s38_1, "inline", "BackgroundColor3")

			r100:create("UIPadding", {
				Parent = s38_1,
				PaddingRight = r293(0, 2),
			})

			local s39 = r100:create("Frame", {
				Parent = s38_1,
				ZIndex = 2,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s50 = 35
			local s45 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s39,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, s50, 47)),
				}),
			}), "contrast", s45)

			local s43 = r100:create("TextLabel", {
				Parent = s39,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 2,
				Text = "",
				Size = r22(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Position = r22(0, 0, 0, -2),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIPadding", {
				Parent = s43,
				PaddingLeft = r293(0, 3),
				PaddingRight = r293(0, 2),
			})

			local s44 = r100:create("Frame", {
				Parent = r9_1,
				Position = r22(0, s35.AbsolutePosition.X + 1, 0, s35.AbsolutePosition.Y + 17),
				Visible = false,
				BorderColor3 = r116(255, 255, 255),
				BorderSizePixel = 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIListLayout", {
				Parent = s44,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				Padding = r293(0, 2),
			})

			local function s1(t27)
				local t25 = r100:create("TextButton", {
					Parent = s44,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = t27,
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.XY,
					BorderSizePixel = 0,
					ZIndex = 2,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100:create("UIStroke", {
					Parent = t25,
					LineJoinMode = Enum.LineJoinMode.Miter,
				})

				return t25
			end

			r100:create("UIPadding", {
				Parent = s44,
				PaddingTop = r293(0, 3),
				PaddingBottom = r293(0, 5),
				PaddingRight = r293(0, 5),
				PaddingLeft = r293(0, 5),
			})

			local s4_2 = {
				hold = s1("hold"),
				toggle = s1("toggle"),
				always = s1("always"),
			}

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s44,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, 47)),
				}),
			}), "contrast", "Color")

			local s48 = "inline"

			r100:apply_theme(r100:create("UIStroke", {
				Parent = s44,
				Color = r357.preset.inline,
				LineJoinMode = Enum.LineJoinMode.Miter,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}), s48, "Color")

			local function s5()
				for t3, t4 in r1_2, s4_2, nil do
					t4.TextColor3 = s9.mode == t3 and r349.accent.Color or r349.text_color.Color
				end
			end

			s9.set_visible = function(t36)
				s44.Visible = t36
				s44.Position = r22(0, s35.AbsolutePosition.X + 1, 0, s35.AbsolutePosition.Y + 17)

				if t36 then
					s5()

					if r100.current_element_open and r100.current_element_open ~= s9 then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
					end

					r100.current_element_open = s9
				end
			end

			local function s6(arg1)
				s9.active = s9.mode == "always" and true or arg1
				s9.callback(s9.active)
				s10()
				s13()
			end

			local function s7(t19)
				local t1 = t19.Name == "Escape" and "none" or t19
				s9.key = t1
				s9.key_name = s11(t1)
				s43.Text = r320(s9.key_name)
				s10()
			end

			s9.set_mode = function(t17)
				s9.mode = t17
				s5()

				if t17 == "always" then
					s6(true)
				elseif t17 == "hold" then
					s6(false)
				end

				return
			end

			s9.set = function(t15)
				if type(t15) == "boolean" then
					s6(t15)
				elseif type(t15) == "table" then
					local t1 = t15.key

					if type(t1) == "string" and t1 ~= "none" then
						t1 = r100.convert_enum(t1)
					end

					if t1 == Enum.KeyCode.Escape then
						t1 = "none"
					end

					s9.key = t1 or "none"
					s9.mode = t15.mode or "toggle"

					if t15.active ~= nil then
						s9.active = t15.active
					end

					s9.key_name = s11(s9.key)
					s43.Text = r320(s9.key_name) or "none"
					s10()
					s13()
				elseif r324(t15):find("Enum") then
					s7(t15)
					s9.callback(s9.active or false)
					s13()
				elseif r330({ "toggle", "hold", "always" }, t15) then
					s9.set_mode(t15)
				end
			end

			for s2_1, s3_6 in r1_2, s4_2, nil do
				r100:connection(s3_6.MouseButton1Click, function()
					r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
					s9.set_mode(s2_1)
					s9.set_visible(false)
					s9.open = false
				end)

				r100:apply_theme(s3_6, "text", "TextColor3")
			end

			r100:connection(s35.MouseButton2Click, function()
				s9.open = not s9.open
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
				s9.set_visible(s9.open)
			end)

			r100:connection(s35.MouseButton1Down, function()
				r337()
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
				s43.Text = "none"
				if r100.active.pending_bind then
					return
				end

				r100.active.pending_bind = function(u21)
					s9.set(u21)
					return
				end
			end)

			r100.active.keybind_handlers[s9.flag] = function(arg1)
				if arg1 ~= s9.key then
					return
				end

				if s9.mode == "toggle" then
					s9.active = not s9.active
					s6(s9.active)
				elseif s9.mode == "hold" then
					s6(true)
				end
			end

			r100.active.keybind_hold_handlers[s9.flag] = function(arg1)
				if arg1 == s9.key and s9.mode == "hold" then
					s6(false)
				end
			end

			s9.set({
				mode = s9.mode,
				active = s9.active,
				key = s9.key,
			})

			r100.config_flags[s9.flag] = s9.set
			return setmetatable(s9, r100)
		end

		r100.dropdown = function(arg1, s35)
			local s2 = arg1.holder

			local s11 = {
				name = s35.name or nil,
				flag = s35.flag,
				items = s35.items or { "1", "2", "3" },
				callback = s35.callback or function()
				end,
				multi = s35.multi or false,
				visible = s35.visible or true,
				open = false,
				option_instances = {},
				multi_items = {},
				scrolling = s35.scrolling or false,
				ignore = s35.ignore or nil,
			}

			s11.default = s35.default or s11.multi and {
				s11.items[1],
			} or s11.items[1] or nil

			local s1 = r100:create("TextLabel", {
				Parent = s2,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s3_8 = nil

			if s11.name then
				local s32 = r100:create("Frame", {
					Parent = s1,
					BackgroundTransparency = 1,
					Position = r22(0, 2, 0, -1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(0, 0, 0, 14),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				s3_8 = r100:create("TextLabel", {
					Parent = s32,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = s11.name,
					BackgroundTransparency = 1,
					Size = r22(0, 0, 1, -1),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.X,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100:create("UIStroke", {
					Parent = s3_8,
					LineJoinMode = Enum.LineJoinMode.Miter,
				})

				r100:create("UIListLayout", {
					Parent = s32,
					Padding = r293(0, 5),
					FillDirection = Enum.FillDirection.Horizontal,
				})

				local s36 = r100:create("Frame", {
					Parent = s1,
					Position = r22(1, -1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(0, 0, 0, 12),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				})

				s11.right_holder = s36

				r100:create("UIListLayout", {
					Parent = s36,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					Padding = r293(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			end

			local s37 = r100:create("Frame", {
				Parent = s1,
				Position = r22(0, 0, 0, s11.name and 15 or 0),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 26, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s32_1 = r100:create("TextButton", {
				Parent = s37,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -27, 1, 18),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Text = "",
				AutoButtonColor = false,
			})

			r100:apply_theme(s32_1, "outline", "BackgroundColor3")
			r100:hoverify(s1, s32_1)

			local s41 = r100:create("Frame", {
				Parent = s32_1,
				ZIndex = 2,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s41, "inline", "BackgroundColor3")

			local s42 = r100:create("Frame", {
				Parent = s41,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				ZIndex = 2,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s42, "accent", "BackgroundColor3")

			local s43 = r100:create("Frame", {
				Parent = s42,
				ZIndex = 2,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s44 = r100:create("TextLabel", {
				Parent = s43,
				TextWrapped = true,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 2,
				Text = "+",
				Size = r22(1, -4, 1, 0),
				Position = r22(0, 0, 0, -1),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Right,
				FontFace = r100.font,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", {
				Parent = s44,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			local s45 = r100:create("TextLabel", {
				Parent = s43,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				ZIndex = 2,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				Size = r22(1, -4, 1, 0),
				Position = r22(0, 4, 0, -1),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", {
				Parent = s45,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s43,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, 47)),
				}),
			}), "contrast", "Color")

			local s60 = 167

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s42,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(s60, 167, 167)),
				}),
			}), "contrast", "Color")

			r100:create("UIListLayout", {
				Parent = s37,
				Padding = r293(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local s48 = r100:create("Frame", {
				Parent = r9_1,
				BorderColor3 = r116(0, 0, 0),
				BackgroundTransparency = 1,
				Position = r22(0, s32_1.AbsolutePosition.X + 1, 0, s32_1.AbsolutePosition.Y + 22),
				Size = r22(0, s32_1.AbsoluteSize.X, 0, s11.scrolling and 80 or 0),
				BorderSizePixel = 0,
				AutomaticSize = s11.scrolling and Enum.AutomaticSize.None or Enum.AutomaticSize.Y,
				BackgroundColor3 = r357.preset.outline,
				Visible = false,
			})

			r100:apply_theme(r100:create("ImageLabel", {
				Parent = s48,
				ImageColor3 = r357.preset.glow,
				ScaleType = Enum.ScaleType.Slice,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r116(255, 255, 255),
				Visible = true,
				Image = r100.images.Glow4,
				BackgroundTransparency = 1,
				ImageTransparency = 0.8,
				Position = r22(0, -22, 0, -21),
				Size = r22(1, 41, 1, 45),
				ZIndex = 0,
				BorderSizePixel = 0,
				SliceCenter = r294(r23(21, 21), r23(79, 79)),
			}), "glow", "ImageColor3")

			local s52 = r100:create("Frame", {
				Parent = s48,
				Size = r22(1, -2, 1, 2),
				Position = r22(0, 0, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 3,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s52, "inline", "BackgroundColor3")
			local s2_3

			if not s11.scrolling then
				s2_3 = r100:create("Frame", {
					Parent = s52,
					BorderColor3 = r116(0, 0, 0),
					BackgroundTransparency = 1,
					Position = r22(0, 1, 0, 1),
					Size = r22(1, -2, 1, 1),
					ZIndex = 3,
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.accent,
				})

				r100:apply_theme(s2_3, "accent", "BackgroundColor3")
			else
				s2_3 = r100:create("ScrollingFrame", {
					Parent = s52,
					BorderColor3 = r116(0, 0, 0),
					BackgroundTransparency = 1,
					MidImage = r100.images.Scroll,
					TopImage = r100.images.Scroll,
					BottomImage = r100.images.Scroll,
					Position = r22(0, 1, 0, 1),
					Size = r22(1, -2, 1, 1),
					ZIndex = 3,
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.accent,
					CanvasSize = r22(0, 0, 0, 0),
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					ScrollBarThickness = 2,
					ScrollBarImageColor3 = r357.preset.accent,
				})

				r100:apply_theme(s2_3, "accent", "BackgroundColor3")
				r100:apply_theme(s2_3, "accent", "ScrollBarImageColor3")
			end

			local s56 = r100:create("Frame", {
				Parent = s2_3,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, -3),
				BorderSizePixel = 0,
				ZIndex = 3,
				BackgroundColor3 = r116(255, 255, 255),
				AutomaticSize = s11.scrolling and Enum.AutomaticSize.Y or Enum.AutomaticSize.None,
			})

			r100:create("UIPadding", {
				Parent = s56,
				PaddingTop = r293(0, 2),
				PaddingBottom = r293(0, 2),
				PaddingRight = r293(0, 0),
				PaddingLeft = r293(0, 4),
			})

			local s65 = 1

			local s59_1 = r100:create("UIGradient", {
				Parent = s56,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(s65, r116(35, 35, 47)),
				}),
			})

			r100:apply_theme(s59_1, "contrast", "Color")

			r100:create("UIListLayout", {
				Parent = s56,
				Padding = r293(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			r100:apply_theme(s59_1, "contrast", "Color")
			local s67 = 167
			local s62_2 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s2_3,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(167, s67, 167)),
				}),
			}), "contrast", s62_2)

			local s61_2 = "outline"

			r100:apply_theme(r100:create("UIStroke", {
				Parent = s52,
				Color = r357.preset.outline,
				LineJoinMode = Enum.LineJoinMode.Miter,
			}), s61_2, "Color")

			s11.set_element_visible = function(t11)
				s1.Visible = t11

				if s3_8 then
					s3_8.Visible = t11
				end
			end

			s11.set_visible = function(t13)
				r100.current_element_open = s11.ignore or s11
				s48.Visible = t13
				s44.Text = t13 and "-" or "+"
				s44.TextSize = t13 and 12 or 8

				if t13 then
					if r100.current_element_open and r100.current_element_open ~= s11 and not s11.ignore then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
					end

					s48.Size = r22(0, s32_1.AbsoluteSize.X, 0, s48.Size.Y.Offset)
					s48.Position = r22(0, s32_1.AbsolutePosition.X + 1, 0, s32_1.AbsolutePosition.Y + 22)
				end
			end

			s11.set = function(t13)
				local t6 = {}
				local t8 = type(t13) == "table"

				for _, t16 in r1_2, s11.option_instances, nil do
					if t16.Text == t13 or t8 and r330(t13, t16.Text) then
						r327(t6, t16.Text)
						s11.multi_items = t6
						t16.TextColor3 = r357.preset.accent
					else
						t16.TextColor3 = r357.preset.text
					end
				end

				s45.Text = t8 and r332(t6, ", ") or t6[1] or "nun"
				r349[s11.flag] = t8 and t6 or t6[1]
				s11.callback(r349[s11.flag])
			end

			s11.refresh_options = function(arg1, t8)
				for _, t11 in r1_2, s11.option_instances, nil do
					t11:Destroy()
				end

				s11.option_instances = {}

				for _, t9 in r1_2, t8, nil do
					local t12 = r100:create("TextButton", {
						Parent = s56,
						FontFace = r100.font,
						TextColor3 = r357.preset.text,
						BorderColor3 = r116(0, 0, 0),
						Size = r22(1, 0, 0, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextWrapped = true,
						AutomaticSize = Enum.AutomaticSize.Y,
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment.Left,
						ZIndex = 3,
						Text = t9,
						BackgroundColor3 = r116(255, 255, 255),
					})

					r100:apply_theme(t12, "accent", "TextColor3")

					r100:create("UIStroke", {
						Parent = t12,
						LineJoinMode = Enum.LineJoinMode.Miter,
					})

					r327(s11.option_instances, t12)

					r100:connection(t12.MouseButton1Down, function()
						if s11.multi then
							local u4 = r330(s11.multi_items, t12.Text)

							if u4 then
								r331(s11.multi_items, u4)
							else
								r327(s11.multi_items, t12.Text)
							end

							r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
							s11.set(s11.multi_items)
						else
							s11.set_visible(false)
							s11.open = false
							r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
							s11.set(t12.Text)
						end
					end)
				end
			end

			r100:connection(s32_1.MouseButton1Click, function()
				s11.open = not s11.open
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
				s11.set_visible(s11.open)
			end)

			s11:refresh_options(s11.items)
			s11.set(s11.default)
			r100.config_flags[s11.flag] = s11.set
			r100.visible_flags[s11.flag] = s11.set_element_visible
			s11.set_element_visible(s11.visible)
			return setmetatable(s11, r100)
		end

		r100.list = function(s19, s20)
			local s5 = {
				callback = s20 and s20.callback or function()
				end,
				scale = s20.size or 232,
				items = s20.items or { "l1", "l2", "l3" },
				placeholdertext = s20.placeholder or s20.placeholdertext or "Search here...",
				visible = s20.visible or true,
				option_instances = {},
				current_instance = nil,
				flag = s20.flag or "n/a",
			}

			local s17 = r100:create("TextLabel", {
				Parent = s19.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIPadding", {
				Parent = s17,
				PaddingLeft = r293(0, 1),
			})

			r100:create("UIStroke", { Parent = s17 })

			local s18 = r100:create("Frame", {
				Parent = s17,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 26, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIListLayout", {
				Parent = s18,
				Padding = r293(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local s19_1 = r100:create("Frame", {
				Parent = s18,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -27, 1, s5.scale),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(main_holder, "outline", "BackgroundColor3")

			local s21 = r100:create("Frame", {
				Parent = s19_1,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s21, "inline", "BackgroundColor3")

			local s22 = r100:create("Frame", {
				Parent = s21,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s22, "accent", "BackgroundColor3")
			local s2_5 = 1

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s22,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(s2_5, r116(167, 167, 167)),
				}),
			}), "contrast", "Color")

			local s26 = r100:create("Frame", {
				Parent = s22,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s36 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s26,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(s36, 35, 47)),
				}),
			}), "contrast", "Color")

			local s30 = r100:create("ScrollingFrame", {
				Parent = s26,
				ScrollBarImageColor3 = r357.preset.accent,
				Active = true,
				MidImage = r100.images.Scroll,
				TopImage = r100.images.Scroll,
				BottomImage = r100.images.Scroll,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarThickness = 2,
				BackgroundTransparency = 1,
				Size = r22(1, 0, 1, 0),
				BackgroundColor3 = r116(255, 255, 255),
				BorderColor3 = r116(0, 0, 0),
				BorderSizePixel = 0,
				CanvasSize = r22(0, 0, 0, 0),
			})

			r100:apply_theme(s30, "accent", "ScrollBarImageColor3")
			local s34 = r100
			local s33 = s34.create
			local s41 = 10

			local s36_1 = {
				Parent = r100:create("Frame", {
					Parent = s26,
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
					BackgroundTransparency = 0,
					Size = r22(1, 0, 0, 60),
					Position = r22(0, 0, 1, -60),
					ZIndex = 10,
				}),
				Rotation = 90,
				Color = r299({
					r300(0, r116(10, 10, 10)),
					r300(1, r116(10, 10, s41)),
				}),
			}

			local s37 = {}
			local s38 = r144(0, 1)
			local s39 = r144(0.5, 1)
			local s42 = 0
			s37[1] = s38
			s37[2] = s39

			do
				local values = table.pack(r144(1, s42))
				table.move(values, 1, values.n, 3, s37)
			end

			s36_1.Transparency = r301(s37)
			r100:apply_theme(s33(s34, "UIGradient", s36_1), "contrast", "Color")

			r100:create("UIPadding", {
				Parent = s30,
				PaddingBottom = r293(0, 4),
				PaddingTop = r293(0, 4),
			})

			r100:create("UIListLayout", {
				Parent = s30,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			s5.render_option = function(t36)
				local t34 = r100:create("TextButton", {
					Parent = s30,
					Text = r324(t36),
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					BackgroundTransparency = 1,
					Size = r22(1, 0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100:apply_theme(t34, "accent", "TextColor3")
				r100:create("UIStroke", { Parent = t34 })
				return t34
			end

			s5.set_element_visible = function(arg1)
				s17.Visible = arg1
			end

			s5.refresh_options = function(t31)
				if type(t31) == "function" then
					return
				end

				for _, t3 in r1_2, s5.option_instances, nil do
					t3:Destroy()
				end

				for _, t32 in r1_2, t31, nil do
					local t1 = s5.render_option(t32)
					r327(s5.option_instances, t1)

					r100:connection(t1.MouseButton1Click, function()
						r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)

						if s5.current_instance and s5.current_instance ~= t1 then
							s5.current_instance.TextColor3 = r357.preset.text
						end

						s5.current_instance = t1
						t1.TextColor3 = r357.preset.accent
						r349[s5.flag] = t1.Text
						s5.callback(t1.Text)
					end)
				end
			end

			s5.filter_options = function(t22)
				for _, t25 in r1_2, s5.option_instances, nil do
					if r318(t25.Text, t22) then
						t25.Visible = true
					else
						t25.Visible = false
					end
				end
			end

			s5.set = function(t35)
				for _, t38 in r1_2, s5.option_instances, nil do
					if t38.Text == t35 then
						t38.TextColor3 = r357.preset.accent
					else
						t38.TextColor3 = r357.preset.text
					end
				end

				r349[s5.flag] = t35
				s5.callback(t35)
			end

			s5.refresh_options(s5.items)
			s5.set_element_visible(s5.visible)
			r100.visible_flags[s5.flag] = s5.set_element_visible
			r100.config_flags[s5.flag] = s5.set
			return setmetatable(s5, r100)
		end

		r100.textbox = function(s27, s28)
			local s9 = {
				placeholder = s28.placeholder or s28.placeholdertext or s28.holder or s28.holdertext or "type here...",
				default = s28.default,
				flag = s28.flag or "",
				callback = s28.callback or function()
				end,
				visible = s28.visible or true,
				max = s28.max or 9999,
				removing = false,
			}

			local s1 = r100:create("TextLabel", {
				Parent = s27.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIPadding", {
				Parent = s1,
				PaddingLeft = r293(0, 1),
			})

			r100:create("UIStroke", { Parent = s1 })

			local s30 = r100:create("Frame", {
				Parent = s1,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -27, 0, 18),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:hoverify(s1, s30)
			r100:apply_theme(s30, "outline", "BackgroundColor3")

			local s31 = r100:create("Frame", {
				Parent = s30,
				Position = r22(0, 1, 0, 1),
				ZIndex = 2,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s31, "inline", "BackgroundColor3")

			local s32 = r100:create("Frame", {
				Parent = s31,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				ZIndex = 2,
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s32, "accent", "BackgroundColor3")

			local s2_5 = r100:create("TextBox", {
				Parent = s32,
				CursorPosition = -1,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				TextWrapped = true,
				BackgroundTransparency = 1,
				TextTruncate = Enum.TextTruncate.SplitWord,
				PlaceholderText = s9.placeholder,
				ClearTextOnFocus = false,
				ZIndex = 3,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", { Parent = s2_5 })
			local s6 = 1
			local s41 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = r100:create("TextButton", {
					Parent = s32,
					FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
					TextColor3 = r116(0, 0, 0),
					BorderColor3 = r116(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					Size = r22(1, 0, 1, 0),
					BorderSizePixel = 0,
					TextSize = 14,
					ZIndex = 2,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(s6, r116(35, s41, 47)),
				}),
			}), "contrast", "Color")

			r100:create("UIListLayout", {
				Parent = s1,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			r100:connection(s2_5:GetPropertyChangedSignal("Text"), function()
				if s9.removing then
					s9.removing = false
					return
				end
				local t9 = s2_5.Text

				if s9.max < #t9 then
					s9.removing = true
					s2_5.Text = t9:sub(1, s9.max)
					return
				end

				r349[s9.flag] = t9
				s9.callback(t9)
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
			end)

			s9.set_element_visible = function(arg1)
				s1.Visible = arg1
			end

			s9.set = function(t29)
				if s9.max and #t29 > s9.max then
					t29 = t29:sub(1, s9.max)
				end

				r349[s9.flag] = t29
				s2_5.Text = t29
				s9.callback(t29)
			end

			if s9.default then
				s9.set(s9.default)
			end

			s9.set_element_visible(s9.visible)
			r100.config_flags[s9.flag] = s9.set
			r100.visible_flags[s9.flag] = s9.set_element_visible
			return setmetatable(s9, r100)
		end

		r100.button_holder = function(s24, s25)
			local s8 = {
				flag = s25.flag or "n/a",
				visible = s25.visible or true,
			}

			local s26 = r100:create("TextLabel", {
				Parent = s24.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			s24.current_holder = s26
			r100:create("UIStroke", { Parent = s26 })

			r100:create("UIListLayout", {
				Parent = s26,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				Padding = r293(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			s8.set_element_visible = function(arg1)
				s26.Visible = arg1
			end

			s8.set_element_visible(s8.visible)
			r100.visible_flags[s8.flag] = s8.set_element_visible
			return setmetatable(s8, r100)
		end

		r100.button = function(s15, s16)
			local s4 = {
				callback = s16.callback or function()
				end,
				name = s16.text or s16.name or "Button",
				confirm = s16.confirm or false,
				confirm_timer = s16.confirm_timer or 3,
				tooltip = s16.tooltip or nil,
				confirm_active = false,
				confirm_countdown = 0,
				mouse_down = false,
				confirm_timer_id,
			}

			local s17 = r100:create("TextButton", {
				Parent = s15.current_holder,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -27, 0, 18),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Text = "",
			})

			r100:hoverify(s17, s17)
			r100:apply_theme(s17, "outline", "BackgroundColor3")

			local s21 = r100:create("Frame", {
				Parent = s17,
				ZIndex = 2,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s21, "inline", "BackgroundColor3")

			local s22 = r100:create("Frame", {
				Parent = s21,
				ZIndex = 2,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s22, "accent", "BackgroundColor3")
			local s34 = 167
			local s36 = 167
			local s28 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s22,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(s34, 167, s36)),
				}),
			}), "contrast", s28)

			local s26 = r100:create("Frame", {
				Parent = s22,
				ZIndex = 2,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s38 = 47

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s26,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, 35, s38)),
				}),
			}), "contrast", "Color")

			local s30 = r100:create("TextLabel", {
				Parent = s26,
				TextWrapped = true,
				ZIndex = 3,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = s4.name,
				Size = r22(1, -4, 1, 0),
				Position = r22(0, 4, 0, -1),
				BackgroundTransparency = 1,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BorderSizePixel = 0,
				FontFace = r100.font,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", {
				Parent = s30,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			local s33 = r100:create("Frame", {
				Parent = s22,
				Name = "fill",
				ZIndex = 2,
				Size = r22(1, 0, 1, 0),
				Position = r22(0, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s33, "accent", "BackgroundColor3")
			local s10 = 117

			r100:create("UIGradient", {
				Parent = s33,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(117, 117, s10)),
				}),
			})

			local function s2()
				s4.confirm_active = false
				s4.confirm_countdown = 0
				s30.Text = s4.name
			end

			local function s6_5()
				s4.confirm_active = true
				s4.confirm_countdown = s4.confirm_timer
				s30.Text = "Confirm " .. s4.name .. "? (" .. s4.confirm_countdown .. "s)"

				if s4.confirm_timer_id then
					r338(s4.confirm_timer_id)
				end

				s4.confirm_timer_id = r336(function()
					while s4.confirm_countdown > 0 do
						r337(1)
						s4.confirm_countdown = s4.confirm_countdown - 1
						s30.Text = "Confirm " .. s4.name .. "? (" .. s4.confirm_countdown .. "s)"
					end

					s2()
				end)
			end

			r100:connection(s17.MouseButton1Down, function()
				s4.mouse_down = true
				r179:Create(s33, r178(r100.tweening_speed / 2, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 0 }):Play()
			end)

			r100:connection(s17.MouseButton1Up, function()
				s4.mouse_down = false
				r179:Create(s33, r178(r100.tweening_speed / 2, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 1 }):Play()
			end)

			r100:connection(s17.MouseLeave, function()
				if s4.mouse_down then
					r179:Create(s33, r178(r100.tweening_speed / 2, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 1 }):Play()
				end

				return
			end)

			r100:connection(s17.MouseButton1Click, function()
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)

				if s4.confirm then
					if s4.confirm_active then
						s2()
						s4.callback()
					else
						s6_5()
					end
				else
					s4.callback()
				end
			end)

			if s4.tooltip then
				r100:tool_tip({
					name = s4.tooltip,
					path = s17,
				})
			end

			return setmetatable(s4, r100)
		end

		r100.label = function(s21, s22)
			local s9 = {
				name = s22.text or s22.name or "Label",
			}

			local s19 = r100:create("TextLabel", {
				Parent = s21.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIStroke", { Parent = s19 })

			local s21_1 = r100:create("TextLabel", {
				Parent = r100:create("Frame", {
					Parent = s19,
					BackgroundTransparency = 1,
					Position = r22(0, 1, 0, -1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(0, 0, 0, 14),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = s9.name,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s22_1 = r100:create("Frame", {
				Parent = s19,
				Position = r22(1, -1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(0, 0, 0, 12),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			s9.right_holder = s22_1

			r100:create("UIListLayout", {
				Parent = s22_1,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Padding = r293(0, 4),
				Name = "list",
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			r100:create("UIStroke", { Parent = s21_1 })

			s9.set = function(arg1)
				s21_1.Text = arg1
			end

			return setmetatable(s9, r100)
		end

		r100.configuration = function(s15, s16, s17)
			local s9 = {
				name = s16.name or "Configuration",
				open = false,
			}

			local s2_2 = r100:create("TextButton", {
				Parent = s15.right_holder or r9_1,
				Size = r22(0, 14, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 1,
			})

			r100:apply_theme(s2_2, "outline", "BackgroundColor3")
			r100:hoverify(s2_2, s2_2)

			local s37 = r100:create("Frame", {
				Parent = s2_2,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				ZIndex = 2,
			})

			r100:apply_theme(s37, "inline", "BackgroundColor3")

			r100:create("TextLabel", {
				Parent = s37,
				Position = r22(0, 0, 0, -1),
				Size = r22(1, 0, 1, 0),
				BackgroundTransparency = 1,
				TextColor3 = r357.preset.text,
				FontFace = r100.font,
				Text = "#",
				TextSize = 12,
				BorderSizePixel = 0,
				ZIndex = 3,
			})

			local s3 = 1
			local s39 = 35
			local s40 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = r100:create("Frame", {
					Parent = s37,
					ZIndex = 2,
					Position = r22(0, 1, 0, 1),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, -2, 1, -2),
					BorderSizePixel = 0,
					BackgroundColor3 = r116(255, 255, 255),
				}),
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(s3, r116(s39, s40, 47)),
				}),
			}), "contrast", "Color")

			local s21 = r100:create("Frame", {
				Parent = r9_1,
				Size = r22(0, 220, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Visible = false,
				ZIndex = 1,
			})

			r100:apply_theme(s21, "outline", "BackgroundColor3")

			local s25 = r100:create("Frame", {
				Parent = s21,
				Size = r22(1, -2, 1, -2),
				Position = r22(0, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
				ZIndex = 1,
			})

			r100:apply_theme(s25, "accent", "BackgroundColor3")

			local s26 = r100:create("Frame", {
				Parent = s25,
				Size = r22(1, -2, 1, -2),
				Position = r22(0, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
				ZIndex = 1,
			})

			local s39_1 = 35
			local s40_1 = 35
			local s41 = 47

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s26,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(s39_1, s40_1, s41)),
				}),
			}), "contrast", "Color")

			r100:create("UIPadding", {
				Parent = s26,
				PaddingTop = r293(0, 5),
				PaddingBottom = r293(0, 6),
				PaddingLeft = r293(0, 4),
				PaddingRight = r293(0, -5),
			})

			r100:create("UIStroke", {
				Parent = r100:create("TextLabel", {
					Parent = s26,
					Position = r22(0, 1, 0, -2),
					Size = r22(1, 0, 0, 12),
					BackgroundTransparency = 1,
					TextColor3 = r357.preset.text,
					FontFace = r100.font,
					Text = s9.name,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					ZIndex = 1,
				}),
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			local s31 = r100:create("Frame", {
				Parent = s26,
				Position = r22(0, 0, 0, 14),
				Size = r22(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 1,
			})

			r100:create("UIListLayout", {
				Parent = s31,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local s39_2 = setmetatable({ holder = s31, right_holder = s31 }, r100)

			if type(s17) == "function" then
				s17(s39_2)
			end

			local function s1_1(t4)
				s21.Visible = t4
				s9.open = t4

				if t4 then
					if r100.current_element_open and r100.current_element_open ~= s9 then
						r100.current_element_open.set_visible(false)
						r100.current_element_open.open = false
					end

					r100.current_element_open = s9
					local t2_1 = s2_2.AbsolutePosition
					s21.Position = r22(0, t2_1.X - 220 + 14, 0, t2_1.Y + 17)
				end
			end

			s9.set_visible = s1_1

			r100:connection(s2_2.MouseButton1Click, function()
				s9.open = not s9.open
				r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
				s1_1(s9.open)
			end)

			r100:connection(r276.InputBegan, function(arg1)
				if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end

				if s9.open then
					if r100:hovering({ s21, s2_2 }) then
						return
					end
					s1_1(false)
					s9.open = false
					return
				end

				return
			end)

			return s15
		end

		r100.splitter = function(s20, arg2)
			local s21 = arg2 or {}

			local s11 = {
				offset = s21.offset or 0,
			}

			local s18 = r100:create("Frame", {
				Parent = s20.holder,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(1, -9, 0, 8),
				ZIndex = 2,
			})

			local s22 = r100:create("Frame", {
				Parent = s18,
				BorderSizePixel = 0,
				Size = r22(1, 0, 0, 4),
				Position = r22(0, -1 + s11.offset, 0, 3),
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s22, "outline", "BackgroundColor3")

			local s23 = r100:create("Frame", {
				Parent = s22,
				BorderSizePixel = 0,
				Size = r22(1, -2, 1, -2),
				Position = r22(0, 1, 0, 1),
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s23, "inline", "BackgroundColor3")
			local s7 = 1

			r100:create("UIGradient", {
				Parent = s23,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(s7, r116(167, 167, 167)),
				}),
			})

			s11.holder = s18
			return setmetatable(s11, r100)
		end

		r100.playerlist = function(s2, arg2)
			local s26 = {
				callback = arg2.callback or function()
				end,
				labels = { name, display },
			}

			local s28 = nil

			local s30 = {
				Enemy = r116(255, 72, 118),
				Neutral = r357.preset.text,
				Friendly = r116(179, 255, 215),
			}

			local s3_1 = r100:create("TextLabel", {
				Parent = s2.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -8, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIPadding", {
				Parent = s3_1,
				PaddingBottom = r293(0, -2),
				PaddingLeft = r293(0, 1),
			})

			r100:create("UIStroke", { Parent = s3_1 })

			local s4 = r100:create("Frame", {
				Parent = s3_1,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 26, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIListLayout", {
				Parent = s4,
				Padding = r293(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local s5_1 = r100:create("Frame", {
				Parent = s4,
				AutomaticSize = Enum.AutomaticSize.Y,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -27, 1, 280),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s5_1, "outline", "BackgroundColor3")

			local s6 = r100:create("Frame", {
				Parent = s5_1,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s6, "inline", "BackgroundColor3")

			local s7 = r100:create("Frame", {
				Parent = s6,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			local s18 = 167
			local s20 = 167

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s7,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(s18, 167, s20)),
				}),
			}), "contrast", "Color")

			local s11 = r100:create("Frame", {
				Parent = s7,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s5_2 = 35
			local s17 = "Color"

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s11,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(s5_2, 35, 47)),
				}),
			}), "contrast", s17)

			local s15 = r100:create("ScrollingFrame", {
				Parent = s11,
				ScrollBarImageColor3 = r357.preset.accent,
				Active = true,
				MidImage = r100.images.Scroll,
				TopImage = r100.images.Scroll,
				BottomImage = r100.images.Scroll,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarThickness = 2,
				BackgroundTransparency = 1,
				Size = r22(1, 0, 1, 0),
				BackgroundColor3 = r116(255, 255, 255),
				BorderColor3 = r116(0, 0, 0),
				BorderSizePixel = 0,
				CanvasSize = r22(0, 0, 0, 0),
			})

			r100:apply_theme(s15, "accent", "ScrollBarImageColor3")

			r100:create("UIPadding", {
				Parent = s15,
				PaddingTop = r293(0, 4),
				PaddingBottom = r293(0, 4),
				PaddingRight = r293(0, 4),
				PaddingLeft = r293(0, 4),
			})

			r100:create("UIListLayout", {
				Parent = s15,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			s26.create_player = function(t32)
				r100.playerlist_data[r324(t32)] = {}
				local t7 = r100.playerlist_data[r324(t32)]

				local t33 = r100:create("TextButton", {
					Parent = s15,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = "",
					BackgroundTransparency = 1,
					Size = r22(1, 0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				})

				local t37 = r100:create("TextLabel", {
					Parent = t33,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = r324(t32),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					LayoutOrder = -9,
					BackgroundColor3 = r116(255, 255, 255),
				})

				r100:apply_theme(t37, "text", "TextColor3")
				r100:apply_theme(t37, "accent", "TextColor3")
				local t39 = r100
				local t1 = t39.create

				local t41 = {
					Parent = t33,
					FontFace = r100.font,
				}

				local t4 = r97.Name
				t41.TextColor3 = r324(t32) ~= t4 and r357.preset.text or r116(196, 179, 255)
				t41.BorderColor3 = r116(0, 0, 0)
				local t4_1 = r97.Name
				t41.Text = r324(t32) ~= t4_1 and "Neutral" or "LocalPlayer"
				t41.BackgroundTransparency = 1
				t41.TextXAlignment = Enum.TextXAlignment.Left
				t41.BorderSizePixel = 0
				t41.AutomaticSize = Enum.AutomaticSize.Y
				t41.TextSize = 12
				t41.BackgroundColor3 = r116(255, 255, 255)
				local t38 = t1(t39, "TextLabel", t41)
				local t44 = "BackgroundColor3"

				r100:apply_theme(r100:create("Frame", {
					Parent = t38,
					Position = r22(0, -10, 0, 0),
					BorderColor3 = r116(0, 0, 0),
					Size = r22(0, 1, 0, 12),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				}), "outline", t44)

				r100:create("UIListLayout", {
					Parent = t33,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalFlex = Enum.UIFlexAlignment.Fill,
				})

				r100:create("UIPadding", {
					Parent = t33,
					PaddingRight = r293(0, 2),
					PaddingLeft = r293(0, 2),
				})

				local t42_1 = r100:create("Frame", {
					Parent = s15,
					BorderColor3 = r116(0, 0, 0),
					Size = r22(1, 0, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				})

				r100:apply_theme(t42_1, "outline", "BackgroundColor3")
				t7.main_instance = t33
				t7.main_line = t42_1
				t7.priority = "Neutral"
				t7.priority_text = t38

				r100:connection(t33.MouseButton1Click, function()
					if not t32 then
						return
					end

					if s28 then
						s28.TextColor3 = r357.preset.text
						s28 = nil
					end

					r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
					s28 = t37
					t37.TextColor3 = r357.preset.accent
					r100.selected_player = t37.Text
					r100.config_flags.PLAYERLIST_DROPDOWN(t7.priority_text.Text)

					if s26.labels.name then
						s26.labels.name.set("Player: " .. (r275[t37.Text] and (r275[t37.Text].DisplayName ~= t37.Text and r275[t37.Text].DisplayName .. " (@" .. t37.Text .. ")" or t37.Text) or t37.Text))
						local u2_1 = r26(r25, t37.Text)
						if not u2_1 then
							return
						end
						local u2_2 = r26(r26(r26(u2_1, "Status"), "Journey"), "Statistics")

						local u7 = {
							user_id = r275[t37.Text].UserId,
							hours = r310((u2_2:GetAttribute("TimePlayed") or 0) / 3600 * 100) / 100,
							pvp = {
								kills = u2_2:GetAttribute("K_PVP") or 0,
								deaths = u2_2:GetAttribute("D_PVP") or 0,
							},
							pve = {
								kills = u2_2:GetAttribute("K_PVE") or 0,
								deaths = u2_2:GetAttribute("D_PVE") or 0,
							},
						}

						for _, u4_2 in { "pvp", "pve" }, nil, nil do
							u7[u4_2].kd = u7[u4_2].deaths == 0 and u7[u4_2].kills or u7[u4_2].kills / u7[u4_2].deaths
						end

						s26.labels.display.set("User ID: " .. u7.user_id .. " / PVP KD: " .. r323("%.2f", u7.pvp.kd) .. " / PVE KD: " .. r323("%.2f", u7.pve.kd) .. " / Hours Played: " .. r324(u7.hours) .. "h")

						if r100.priority_dropdown and t37.Text == r97.Name then
							r100.priority_dropdown.set_element_visible(false)
						else
							r100.priority_dropdown.set_element_visible(true)
						end
					end
				end)

				return t7
			end

			s26.search = function(t21)
				local t21_1 = r320(t21)

				for _, t3 in r283(r275) do
					local t4 = r324(t3)
					local t6 = r100.playerlist_data[t4]

					if t6 then
						local t4_1 = r320(t4):match(t21_1) and true or false
						t6.main_instance.Visible = t4_1
						t6.main_line.Visible = t4_1
					end
				end
			end

			s26.remove_player = function(arg1)
				local t1 = r100.playerlist_data[arg1.Name]
				t1.main_instance:Destroy()
				t1.main_line:Destroy()
			end

			r100.prioritize = function(t26)
				if not r100.selected_player or r100.selected_player == r97.Name then
					return
				end
				local t2_1 = r100.playerlist_data[r100.selected_player]
				t2_1.priority_text.Text = t26
				t2_1.priority_text.TextColor3 = s30[t26]
				t2_1.priority = t26
			end

			r100:connection(r281, s26.create_player)
			r100:connection(r282, s26.remove_player)

			for _, s5_3 in r283(r275) do
				local s6_1 = s26.create_player(s5_3.Name)
				r327(r100.playerlist_data, s6_1)
			end

			s2:textbox({
				name = "Search",
				max = 20,
				placeholder = "Type here...",
				callback = function(t28)
					s26.search(t28)
				end,
			})

			s26.labels.name = s2:label({ name = " " })
			s26.labels.display = s2:label({ name = " " })
			return setmetatable(s26, r100)
		end

		r100.output = function(s13, arg2)
			local s6 = {
				callback = arg2.callback or function()
				end,
			}

			local s26 = selected_button_color
			s6[1] = selected_button
			s6[2] = s26
			s6.total_outputs = 0

			local s11 = r100:create("TextLabel", {
				Parent = s13.holder,
				FontFace = r100.font,
				TextColor3 = r357.preset.text,
				BorderColor3 = r116(0, 0, 0),
				Text = "",
				ZIndex = 2,
				Size = r22(1, -6, 0, 12),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = 12,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIPadding", {
				Parent = s11,
				PaddingBottom = r293(0, -2),
				PaddingLeft = r293(0, 1),
			})

			r100:create("UIStroke", { Parent = s11 })

			local s12 = r100:create("Frame", {
				Parent = s11,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 26, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			r100:create("UIListLayout", {
				Parent = s12,
				Padding = r293(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			local s13_1 = r100:create("Frame", {
				Parent = s12,
				AutomaticSize = Enum.AutomaticSize.Y,
				Position = r22(0, 0, 0, 2),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -27, 1, 173),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s13_1, "outline", "BackgroundColor3")

			local s14 = r100:create("Frame", {
				Parent = s13_1,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s14, "inline", "BackgroundColor3")

			local s15 = r100:create("Frame", {
				Parent = s14,
				Position = r22(0, 1, 0, 1),
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s15,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(167, 167, 167)),
				}),
			}), "contrast", "Color")

			local s19 = r100:create("Frame", {
				Parent = s15,
				BorderColor3 = r116(0, 0, 0),
				Size = r22(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s10 = 35

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s19,
				Rotation = 90,
				Color = r299({
					r300(0, r116(41, 41, 55)),
					r300(1, r116(35, s10, 47)),
				}),
			}), "contrast", "Color")

			local s23 = r100:create("ScrollingFrame", {
				Parent = s19,
				ScrollBarImageColor3 = r357.preset.accent,
				Active = true,
				MidImage = r100.images.Scroll,
				TopImage = r100.images.Scroll,
				BottomImage = r100.images.Scroll,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarThickness = 2,
				BackgroundTransparency = 1,
				Size = r22(1, 0, 1, 0),
				BackgroundColor3 = r116(255, 255, 255),
				BorderColor3 = r116(0, 0, 0),
				BorderSizePixel = 0,
				CanvasSize = r22(0, 0, 0, 0),
			})

			r100:apply_theme(s23, "accent", "ScrollBarImageColor3")

			r100:create("UIPadding", {
				Parent = s23,
				PaddingTop = r293(0, 4),
				PaddingBottom = r293(0, 4),
				PaddingRight = r293(0, 4),
				PaddingLeft = r293(0, 4),
			})

			r100:create("UIListLayout", {
				Parent = s23,
				Padding = r293(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			s6.clear_output = function()
				local t3, t4 = s23:GetChildren()
				local t13 = 0

				for _, t4_1 in r1_2, t3, t4 do
					if r155(t4_1, "TextButton") then
						t4_1:Destroy()
						t13 += 1
					end
				end

				if t13 == 0 then
					r100:notification({ text = "Output is already empty", flashing = true, time = 5 })
					return
				end

				r100:notification({
					text = "Cleared output, removed " .. r324(t13) .. " instances",
					flashing = true,
					time = 5,
				})
			end

			s6.create_output = function(t33)
				s6.total_outputs = s6.total_outputs + 1

				local t9 = {
					color = t33.color or r357.preset.text,
					text = t33.text or "nil",
					prefix = t33.prefix or "INFO",
				}

				local t30 = r100:create("TextButton", {
					Parent = s23,
					FontFace = r100.font,
					TextColor3 = r357.preset.text,
					BorderColor3 = r116(0, 0, 0),
					Text = "",
					BackgroundTransparency = 1,
					Size = r22(1, 0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = r116(255, 255, 255),
				})

				local t7 = r346("%X")
				local t2_3 = t9.text

				local t34 = r100:create("TextLabel", {
					Parent = t30,
					FontFace = r100.font,
					TextColor3 = t9.color,
					BorderColor3 = r116(0, 0, 0),
					RichText = true,
					Text = r323("[%s] [%s] %s", t7, r324(t9.prefix), r324(t2_3)),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					LayoutOrder = -9,
					BackgroundColor3 = r116(255, 255, 255),
					TextTransparency = 1,
				})

				r100:apply_theme(t34, "text", "TextColor3")
				r100:apply_theme(t34, "accent", "TextColor3")

				r100:create("UIListLayout", {
					Parent = t30,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.Fill,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalFlex = Enum.UIFlexAlignment.Fill,
				})

				r100:create("UIPadding", {
					Parent = t30,
					PaddingRight = r293(0, 2),
					PaddingLeft = r293(0, 2),
				})

				r179:Create(t34, r178(r100.tweening_speed * 1.5, r100.tweening_style, r100.tweening_direction), { TextTransparency = 0 }):Play()

				r100:connection(t30.MouseButton1Click, function()
					if s6.selected_button and s6.selected_button ~= t34 then
						s6.selected_button.TextColor3 = s6.selected_button_color
					end

					r100.sound(r100.sound_settings.sound_type, r100.sound_settings.sound_volume)
					s6.selected_button = t34
					s6.selected_button_color = t9.color or r357.preset.text
					t34.TextColor3 = r357.preset.accent
				end)
			end

			return setmetatable(s6, r100)
		end

		r100.indicator = function()
			local s16 = {
				outline = r100:create("Frame", {
					Parent = r9_1,
					Visible = false,
					Position = r22(0, 50, 0, 90),
					Size = r22(0, 250, 0, 100),
					BorderSizePixel = 0,
					BackgroundColor3 = r357.preset.outline,
				}),
			}

			r100:apply_theme(s16.outline, "outline", "BackgroundColor3")
			r100:draggify(s16.outline)
			r100.player_indicator_frame = s16.outline

			s16.inline = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Parent = s16.outline,
			})

			r100:apply_theme(s16.inline, "inline", "BackgroundColor3")

			s16.background = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(200, 200, 200),
				Parent = s16.inline,
			})

			local s7 = r357.preset.low_contrast

			s16.gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r357.preset.high_contrast),
					r300(1, s7),
				}),
				Parent = s16.background,
			})

			r100:apply_theme(s16.gradient, "contrast", "Color")

			s16.inner_inline = r100:create("Frame", {
				Position = r22(0, 3, 0, 3),
				Size = r22(1, -6, 1, -6),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Parent = s16.background,
			})

			r100:apply_theme(s16.inner_inline, "inline", "BackgroundColor3")

			s16.inner_background = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
				Parent = s16.inner_inline,
			})

			local s7_1 = r357.preset.low_contrast

			s16.inner_gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r357.preset.high_contrast),
					r300(1, s7_1),
				}),
				Parent = s16.inner_background,
			})

			r100:apply_theme(s16.inner_gradient, "contrast", "Color")

			s16.accent_line = r100:create("Frame", {
				Size = r22(1, 0, 0, 2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
				Parent = s16.inner_background,
			})

			r100:apply_theme(s16.accent_line, "accent", "BackgroundColor3")
			local s7_2 = 167

			s16.accent_gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(167, s7_2, 167)),
				}),
				Parent = s16.accent_line,
			})

			s16.healthbar_outline = r100:create("Frame", {
				Position = r22(0, 86, 0, 72),
				Size = r22(0, 149, 0, 13),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Parent = s16.inner_background,
			})

			r100:apply_theme(s16.healthbar_outline, "inline", "BackgroundColor3")

			s16.healthbar_inline = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.outline,
				Parent = s16.healthbar_outline,
			})

			r100:apply_theme(s16.healthbar_inline, "outline", "BackgroundColor3")

			s16.healthbar = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(124, 255, 139),
				Parent = s16.healthbar_inline,
			})

			s16.healthbar_gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(167, 167, 167)),
				}),
				Parent = s16.healthbar,
			})

			s16.health_flag = r100:create("TextLabel", {
				FontFace = r347["Smallest Pixel"],
				Text = "100/100",
				TextXAlignment = Enum.TextXAlignment.Right,
				TextSize = 9,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(1, -1, 0, 3),
				Parent = s16.healthbar,
			})

			s16.image = r100:create("ImageLabel", {
				ImageColor3 = r116(224, 224, 224),
				ResampleMode = Enum.ResamplerMode.Pixelated,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = r22(0, 4, 0, 6),
				Size = r22(0, 78, 0, 78),
				Parent = s16.inner_background,
			})

			s16.image_outline = r100:create("UIStroke", {
				Parent = s16.image,
				Color = r357.preset.inline,
				BorderStrokePosition = Enum.BorderStrokePosition.Outer,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			r100:apply_theme(s16.image_outline, "inline", "Color")

			s16.image_inline = r100:create("UIStroke", {
				Parent = s16.image,
				Color = r357.preset.outline,
				BorderStrokePosition = Enum.BorderStrokePosition.Inner,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			r100:apply_theme(s16.image_inline, "outline", "Color")

			s16.user_text = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "user",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 87, 0, 10),
				Parent = s16.inner_background,
			})

			s16.user_value = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "username",
				TextXAlignment = Enum.TextXAlignment.Right,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 148, 0, 0),
				Parent = s16.user_text,
			})

			s16.kd_text = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "kd",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 87, 0, 24),
				Parent = s16.inner_background,
			})

			s16.kd_value = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "0.00 (0/0)",
				TextXAlignment = Enum.TextXAlignment.Right,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 148, 0, 0),
				Parent = s16.kd_text,
			})

			s16.time_text = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "play time",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 87, 0, 38),
				Parent = s16.inner_background,
			})

			s16.time_value = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "0.00h",
				TextXAlignment = Enum.TextXAlignment.Right,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 148, 0, 0),
				Parent = s16.time_text,
			})

			s16.tool_text = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "tool",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 87, 0, 52),
				Parent = s16.inner_background,
			})

			s16.tool_value = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "none",
				TextXAlignment = Enum.TextXAlignment.Right,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 148, 0, 0),
				Parent = s16.tool_text,
			})

			s16.status_text = r100:create("TextLabel", {
				Visible = false,
				FontFace = r100.font,
				Text = "status",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 87, 0, 52),
				Parent = s16.inner_background,
			})

			s16.status_value = r100:create("TextLabel", {
				FontFace = r100.font,
				Text = "visible",
				TextXAlignment = Enum.TextXAlignment.Right,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 0),
				Position = r22(0, 148, 0, 0),
				Parent = s16.status_text,
			})

			local s2 = nil

			local s4 = {
				connections = {},
				current_model = nil,
				last_time = 0,
				set_visible = function(arg1)
					s16.outline.Visible = arg1
				end,
			}

			local function s5(t28)
				local t1 = r356.low.B * 255 + (r356.high.B - r356.low.B) * 255 * t28
				return r116(r305(r356.low.R * 255 + (r356.high.R - r356.low.R) * 255 * t28), r305(r356.low.G * 255 + (r356.high.G - r356.low.G) * 255 * t28), r305(t1))
			end

			local function s6(t29, t30)
				local t31 = r311(t29 / t30, 0.01, 1)
				s16.health_flag.Text = r323("%d/%d", t29, t30)
				s16.healthbar.Size = r22(t31, -2, 1, -2)
				s16.healthbar.BackgroundColor3 = s5(t31)
			end

			local function s7_3(t29, t30, t31)
				if s2 then
					s2:Cancel()
					s2 = nil
				end

				local t2 = r311(t29 / t31, 0.01, 1)
				local t3 = r311(t30 / t31, 0.01, 1)
				s16.healthbar.Size = r22(t2, -2, 1, -2)
				s16.healthbar.BackgroundColor3 = s5(t3)

				local t4 = r179:Create(s16.healthbar, r178(r356.time, r356.style, r356.direction), {
					Size = r22(t3, -2, 1, -2),
				})

				s2 = t4
				t4:Play()

				r336(function()
					local R = tick()

					repeat
						local L = r311((tick() - R) / r356.time, 0, 1)
						local R = r310(t29 + (t30 - t29) * L)
						s16.health_flag.Text = r323("%d/%d", R, t31)
						r337()
					until L >= 1

					s16.health_flag.Text = r323("%d/%d", t30, t31)
				end)
			end

			s4.refresh_healthbar = function()
				if not s4.current_model then
					return
				end
				local t5 = r26(s4.current_model, "Humanoid")
				if not t5 then
					return
				end
				s6(t5.Health, t5.MaxHealth)
			end

			local function s8()
				if s4.connections then
					for _, t4 in r1_2, s4.connections, nil do
						r100:disconnect(t4)
					end
				end

				s4.connections = {}
				s4.current_model = nil
			end

			local function s10(t35)
				if not t35 then
					return "rbxassetid://100202384547792"
				end
				local t28, t29 = pcall(r275.GetUserThumbnailAsync, r275, t35.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
				return t28 and t29 or "rbxassetid://100202384547792"
			end

			s4.update_target = function(t36)
				local t1 = tick()
				if t1 - s4.last_time < r356.delay then
					return
				end
				s4.last_time = t1
				if s4.current_model == t36 then
					return
				end

				local function t1_1()
					if s4.current_model then
						local u6 = r26(s4.current_model, "Humanoid")
						return u6 and u6.Health or 0
					end
					return 0
				end

				local t12 = t1_1()
				s8()
				if not t36 then
					s4.set_visible(false)
					return
				end
				s4.current_model = t36
				local t40 = t36.Name
				local t35 = r26(t36, "Humanoid")
				local t6 = r26(r275, t40)
				local t1_2 = t6 == nil
				s16.user_value.Text = t40
				s4.set_visible(true)
				local t13 = not t1_2
				s16.kd_text.Visible = t13
				s16.time_text.Visible = t13

				if t1_2 then
					s16.tool_text.Position = r22(0, 87, 0, 24)
					s16.status_text.Position = r22(0, 87, 0, 38)
				else
					s16.tool_text.Position = r22(0, 87, 0, 52)
					s16.status_text.Position = r22(0, 87, 0, 66)
				end

				r336(function()
					s16.image.Image = s10(t6)
				end)

				if t13 then
					local t38 = r26(r25, t40)

					if t38 then
						local t37 = r26(t38, "Status") and r26(t38.Status, "Journey")
						local t3 = t37 and r26(t37, "Statistics")

						if t3 then
							local function t5()
								local u9 = t3:GetAttribute("K_PVP") or 0
								local u10 = t3:GetAttribute("D_PVP") or 0
								s16.kd_value.Text = r323("%.2f (%d/%d)", r351.calculate_kd(t3), u9, u10)
							end

							local function t1_3()
								s16.time_value.Text = r323("%.2fh", (t3:GetAttribute("TimePlayed") or 0) / 3600)
							end

							t1_3()
							t5()
							r327(s4.connections, r100:connection(t3:GetAttributeChangedSignal("Kills"), t5))
							r327(s4.connections, r100:connection(t3:GetAttributeChangedSignal("Deaths"), t5))
						end
					end
				end

				local t2 = t12

				local function t44()
					if not t35 then
						return
					end
					local u8 = t35.Health
					local u9 = t35.MaxHealth

					if r356.use_tween then
						s7_3(t2, u8, u9)
					else
						s6(u8, u9)
					end

					t2 = u8
				end

				local function t3_1(arg1)
					s16.tool_value.Text = arg1 or "none"
				end

				local t36_1 = r26(t36, "Holding")

				if t36_1 then
					t3_1(t36_1.Value and t36_1.Value.Name or nil)

					r327(s4.connections, r100:connection(t36_1:GetPropertyChangedSignal("Value"), function()
						local u2 = t36_1.Value
						t3_1(typeof(u2) == "Instance" and u2.Name or nil)
					end))
				end

				if t35 then
					t44()
					r327(s4.connections, r100:connection(t35:GetPropertyChangedSignal("Health"), t44))
					r327(s4.connections, r100:connection(t35:GetPropertyChangedSignal("MaxHealth"), t44))
				end
			end

			return s4
		end

		r100.inventory_viewer = function()
			local s32 = r100:create("Frame", {
				Parent = r9_1,
				Visible = false,
				Active = true,
				Position = r22(0, 50, 0, 469),
				Size = r22(0, 200, 0, 25),
				BorderSizePixel = 0,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s32, "outline", "BackgroundColor3")
			r100:draggify(s32)
			r100:make_resizable(s32)
			r100.inventory_viewer_frame = s32

			r100:apply_theme(r100:create("ImageLabel", {
				Parent = s32,
				ImageColor3 = r357.preset.glow,
				ScaleType = Enum.ScaleType.Slice,
				BorderColor3 = r116(0, 0, 0),
				Visible = true,
				Image = r100.images.Glow4,
				BackgroundTransparency = 1,
				ImageTransparency = 0.8,
				Position = r22(0, -20, 0, -20),
				Size = r22(1, 40, 1, 40),
				ZIndex = 0,
				BorderSizePixel = 0,
				SliceCenter = r294(r23(21, 21), r23(79, 79)),
			}), "glow", "ImageColor3")

			local s36 = r100:create("Frame", {
				Parent = s32,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s36, "inline", "BackgroundColor3")

			local s37 = r100:create("Frame", {
				Parent = s36,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s57 = r357.preset.low_contrast

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s37,
				Rotation = 90,
				Color = r299({
					r300(0, r357.preset.high_contrast),
					r300(1, s57),
				}),
			}), "contrast", "Color")

			local s41 = r100:create("Frame", {
				Parent = s37,
				Size = r22(1, 0, 0, 2),
				BorderSizePixel = 0,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r357.preset.accent,
			})

			r100:apply_theme(s41, "accent", "BackgroundColor3")

			r100:create("UIGradient", {
				Parent = s41,
				Enabled = true,
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(167, 167, 167)),
				}),
			})

			local s42 = r100:create("TextLabel", {
				Parent = s37,
				FontFace = r100.font,
				Text = "No one's Inventory",
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Size = r22(1, 0, 1, 0),
			})

			r100:create("UIStroke", {
				Parent = s42,
				LineJoinMode = Enum.LineJoinMode.Miter,
			})

			local s45 = r100:create("Frame", {
				Parent = s37,
				Position = r22(0, -2, 1, 1),
				Size = r22(1, 4, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BorderSizePixel = 0,
				BorderColor3 = r116(0, 0, 0),
				Visible = false,
				BackgroundColor3 = r357.preset.outline,
			})

			r100:apply_theme(s45, "outline", "BackgroundColor3")

			local s49 = r100:create("Frame", {
				Parent = s45,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BorderColor3 = r116(0, 0, 0),
				BackgroundColor3 = r357.preset.inline,
			})

			r100:apply_theme(s49, "inline", "BackgroundColor3")

			local s50 = r100:create("Frame", {
				Parent = s49,
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
			})

			local s5 = r357.preset.low_contrast

			r100:apply_theme(r100:create("UIGradient", {
				Parent = s50,
				Rotation = 90,
				Color = r299({
					r300(0, r357.preset.high_contrast),
					r300(1, s5),
				}),
			}), "contrast", "Color")

			r100:create("UIListLayout", {
				Parent = s50,
				Padding = r293(0, -1),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})

			r100:create("UIPadding", {
				Parent = s50,
				PaddingBottom = r293(0, 4),
				PaddingLeft = r293(0, 5),
			})

			local s54 = r100:create("TextLabel", {
				Parent = s50,
				FontFace = r100.font,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = 12,
				RichText = true,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = r22(1, -10, 0, 0),
				Position = r22(0, 5, 0, 4),
				Text = "",
				TextColor3 = r357.preset.text,
			})

			local s2 = {}
			local s3 = {}
			local s4 = 0

			local function s5_1(arg1)
				local t4 = {}

				for _, t3 in r1_2, arg1, nil do
					t4[t3:lower()] = true
				end

				return t4
			end

			local function s6(t13)
				local t8 = r26(r96, t13.Name)
				if not t8 then
					return t13.Name
				end
				local t7 = r26(t8, "ItemProperties")
				if not t7 then
					return t13.Name
				end
				return t7:GetAttribute("CallSign") or t13.Name
			end

			local s7 = nil

			s7 = function(t15, t16, t17)
				local t3, t4 = t15:GetChildren()

				for _, t4_1 in r1_2, t3, t4 do
					if t4_1:IsA("ObjectValue") then
						local t6 = t4_1.Value

						t17[#t17 + 1] = {
							name = t6 and s6(t6) or s6(t4_1),
							indent = t16,
						}

						local t6_1 = r26(t4_1, "Attachments")

						if t6_1 then
							s7(t6_1, t16 + 1, t17)
						end
					end
				end
			end

			local s1

			s1 = {
				set_visible = function(t29)
					s32.Visible = t29
					r100.inv_configuration.enabled = t29
				end,
				clear_list = function()
					r334(s2)
					r334(s3)
					s54.Text = ""
				end,
				add_line_struct = function(arg1, arg2, arg3, arg4)
					s3[#s3 + 1] = {
						line_type = arg1,
						data = arg2,
						indent = arg3 or 0,
						section = arg4,
					}
				end,
				get_attachments = function(arg1)
					local t1 = {}
					local t32 = r26(arg1, "Attachments")

					if t32 then
						s7(t32, 0, t1)
					end

					return t1
				end,
				add_attachments = function(t30, t31, t32)
					for _, t35 in r1_2, s1.get_attachments(t30), nil do
						s1.add_line_struct("attachment", t35.name, t31 + t35.indent, t32)
					end
				end,
				build_stacks = function(t25)
					local t5 = {}
					local t2

					if typeof(t25) ~= "Instance" then
						t2 = t25
					else
						t2 = t25:GetChildren()
					end

					for _, t3 in r1_2, t2, nil do
						if not (typeof(t3) == "Instance" and r26(t3, "Inventory") and t25 ~= t3) then
							local t6 = t3.Name
							local t26_1 = t3:GetAttribute("Amount") or 1
							local t4 = t5[t6]

							if not t4 then
								t4 = { stack_count = 0, total_amount = 0, name = t6, item = t3 }
								t5[t6] = t4
							end

							t4.stack_count = t4.stack_count + 1
							t4.total_amount = t4.total_amount + t26_1
						end
					end

					return t5
				end,
			}

			local s8 = nil

			s8 = function(arg1, t12, t13)
				local t9 = r26(arg1, "Inventory")
				if not t9 then
					return
				end

				for _, t4 in r1_2, s1.build_stacks(t9), nil do
					s1.add_line_struct("stack", t4, t12, t13)
					s1.add_attachments(t4.item, t12 + 1, t13)

					if r26(t4.item, "Inventory") then
						s8(t4.item, t12 + 1, t13)
					end
				end
			end

			s1.render = function()
				r334(s2)
				local t8 = r100.inv_configuration.colors
				local t10 = s5_1(r100.inv_configuration.sections or { "Hotbar", "Armor", "Miscellaneous", "Containers" })

				for _, t4 in r1_2, s3, nil do
					local t6 = t4.section or t4.data
					local t7_1 = type(t6) == "string" and t6:lower() or nil

					if not (t4.line_type == "section" and not t10[t7_1]) then
						if not (t4.line_type ~= "section" and t4.section and not t10[t4.section:lower()]) then
							local t5_3 = r319("   ", t4.indent)

							if t4.line_type == "section" then
								s2[#s2 + 1] = "<font color='" .. t8.section_title .. "'>" .. t4.data .. "</font>"
							elseif t4.line_type == "hotbar_item" then
								s2[#s2 + 1] = t5_3 .. "<font color='" .. t8.item_name .. "'>" .. t4.data .. "</font>"
							elseif t4.line_type == "attachment" then
								s2[#s2 + 1] = t5_3 .. "<font color='" .. t8.attachment .. "'>" .. t4.data .. "</font>"
							elseif t4.line_type == "stack" then
								if t4.data.stack_count > 1 then
									t5_3 ..= "<font color='" .. t8.stack .. "'>[" .. t4.data.stack_count .. "x]</font> "
								end

								local t5_4 = t5_3 .. "<font color='" .. t8.item_name .. "'>" .. s6(t4.data.item) .. "</font>"

								if t4.data.total_amount > 1 then
									t5_4 ..= " <font color='" .. t8.amount .. "'>(" .. t4.data.total_amount .. "x)</font>"
								end

								s2[#s2 + 1] = t5_4
							end
						end
					end
				end

				s54.Text = r332(s2, "\n")
			end

			s1.view = function(t6)
				local t16 = r100.inv_configuration
				local t2 = tick()
				if t2 - s4 < t16.delay then
					return
				end
				s4 = t2
				s1.clear_list()
				local t11 = r26(r27, "Players")

				if not t11 then
					s42.Text = "No one's Inventory"
					r351.set_visible(s45, false)
					return
				end

				local t10 = r26(t11, t6)

				if not t10 then
					s42.Text = "No one's Inventory"
					r351.set_visible(s45, false)
					return
				end

				s42.Text = t6 .. "'s Inventory"
				local t2_1 = r26(t10, "Inventory")
				if not t2_1 then
					r351.set_visible(s45, false)
					return
				end
				local t5 = {}
				local t7 = {}
				local t10_1 = {}
				local t12 = {}
				local t11_1 = { ClothingHeadware = true, ClothingChestRig = true, ClothingGloves = true, ClothingMask = true, ClothingBackpack = true, ClothingLegArmor = true, ClothingPants = true, ClothingShirt = true }
				local t17 = { EquipmentGPS = true, EquipmentCompass = true, EquipmentLighter = true, EquipmentMap = true }
				local t8, t9 = t2_1:GetChildren()

				for _, t4 in r1_2, t8, t9 do
					local t6_1 = t4:GetAttribute("Slot")
					local t13 = r26(t4, "Inventory")

					if t11_1[t6_1] then
						t7[#t7 + 1] = t4

						if t13 then
							t12[#t12 + 1] = t4
						end
					elseif t17[t6_1] then
						t10_1[#t10_1 + 1] = t4

						if t13 then
							t12[#t12 + 1] = t4
						end
					elseif t13 then
						t12[#t12 + 1] = t4
					elseif t4.Name ~= "DV2" and t4.Name ~= "Lighter" and t4.Name ~= "Radio" and t4.Name ~= "EstonianBorderMap" then
						t5[#t5 + 1] = t4
					end
				end

				local t2_3 = s5_1(t16.sections or { "Hotbar", "Armor", "Miscellaneous", "Containers" })

				if #t5 > 0 and t2_3.hotbar then
					s1.add_line_struct("section", "Hotbar", 0, "Hotbar")

					for _, t6_7 in r1_2, t5, nil do
						s1.add_line_struct("hotbar_item", t6_7.Name, 1, "Hotbar")
						s1.add_attachments(t6_7, 2, "Hotbar")
					end
				end

				if #t7 > 0 and t2_3.armor then
					s1.add_line_struct("section", "Armor", 0, "Armor")

					for _, t8_4 in r1_2, t7, nil do
						s1.add_line_struct("hotbar_item", s6(t8_4), 1, "Armor")
						s1.add_attachments(t8_4, 2, "Armor")
					end
				end

				if #t10_1 > 0 and t2_3.miscellaneous then
					s1.add_line_struct("section", "Miscellaneous", 0, "Miscellaneous")

					for _, t11_2 in r1_2, s1.build_stacks(t10_1), nil do
						s1.add_line_struct("stack", t11_2, 1, "Miscellaneous")
						s1.add_attachments(t11_2.item, 2, "Miscellaneous")
					end
				end

				if #t12 > 0 and t2_3.containers then
					for _, t13_2 in r1_2, t12, nil do
						if r26(t13_2, "Inventory") then
							local t17_1 = 0
							s1.add_line_struct("section", s6(t13_2), t17_1, "Containers")
							s8(t13_2, 1, "Containers")
						end
					end
				end

				r351.set_visible(s45, true)
				s1.render()
			end

			return s1
		end

		r100.session_data = function()
			local s21 = {
				outline = r100:create("Frame", {
					Parent = r9_1,
					Visible = false,
					Position = r22(0, 50, 0, 200),
					Size = r22(0, 170, 0, 31),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = r357.preset.outline,
				}),
			}

			r100:apply_theme(s21.outline, "outline", "BackgroundColor3")
			r100:draggify(s21.outline)
			r100.session_data_frame = s21.outline

			s21.inline = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Parent = s21.outline,
			})

			r100:apply_theme(s21.inline, "inline", "BackgroundColor3")

			s21.background = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(200, 200, 200),
				Parent = s21.inline,
			})

			local s6 = r357.preset.low_contrast

			s21.gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r357.preset.high_contrast),
					r300(1, s6),
				}),
				Parent = s21.background,
			})

			r100:apply_theme(s21.gradient, "contrast", "Color")

			s21.inner_inline = r100:create("Frame", {
				Position = r22(0, 3, 0, 3),
				Size = r22(1, -6, 1, -6),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.inline,
				Parent = s21.background,
			})

			r100:apply_theme(s21.inner_inline, "inline", "BackgroundColor3")

			s21.accent_line = r100:create("Frame", {
				Size = r22(1, -2, 0, 2),
				Position = r22(0, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = r357.preset.accent,
				ZIndex = 2,
				Parent = s21.inner_inline,
			})

			r100:apply_theme(s21.accent_line, "accent", "BackgroundColor3")
			local s7 = 167

			s21.accent_gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r116(255, 255, 255)),
					r300(1, r116(167, 167, s7)),
				}),
				Parent = s21.accent_line,
			})

			s21.inner_background = r100:create("Frame", {
				Position = r22(0, 1, 0, 1),
				Size = r22(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = r116(255, 255, 255),
				Parent = s21.inner_inline,
			})

			local s6_1 = r357.preset.low_contrast

			s21.inner_gradient = r100:create("UIGradient", {
				Rotation = 90,
				Color = r299({
					r300(0, r357.preset.high_contrast),
					r300(1, s6_1),
				}),
				Parent = s21.inner_background,
			})

			r100:apply_theme(s21.inner_gradient, "contrast", "Color")

			r100:create("UIListLayout", {
				Padding = r293(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = s21.inner_background,
			})

			r100:create("UIPadding", {
				PaddingBottom = r293(0, 10),
				PaddingLeft = r293(0, 4),
				PaddingTop = r293(0, 4),
				Parent = s21.inner_background,
			})

			local s2 = r299({
				r300(0, r116(230, 230, 230)),
				r300(1, r116(230, 230, 230)),
			})

			local s3 = {
				FontFace = r100.font,
				TextSize = 12,
				TextColor3 = r357.preset.text,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = r22(0, 0, 0, 11),
				Position = r22(0, 0, 0, 0),
			}

			local s4 = {
				create_label = function(t26, t27, t28, t29, t30)
					local t34 = r333(s3)
					t34.Text = t27
					t34.TextXAlignment = Enum.TextXAlignment.Left
					t34.LayoutOrder = t30
					t34.Visible = false
					t34.Parent = s21.inner_background
					s21[t26] = r100:create("TextLabel", t34)
					local t34_1 = r333(s3)
					t34_1.Text = t29
					t34_1.TextXAlignment = Enum.TextXAlignment.Right
					t34_1.Position = r22(0, 151, 0, 0)
					t34_1.Parent = s21[t26]
					s21[t28] = r100:create("TextLabel", t34_1)

					r100:create("UIGradient", {
						Color = s2,
						Parent = s21[t28],
					})
				end,
				update_flag = function(arg1, t23, t24)
					local t22 = s21[arg1]

					if t22 then
						r351.set_property(t22, t23, t24)
					end
				end,
				update_visibility = function(arg1, t38)
					local t2 = s21[arg1]

					if t2 then
						r351.set_visible(t2, t38)
					end
				end,
			}

			s4.create_label("players_text", "players", "players_value", "0/30", 1)
			s4.create_label("time_text", "time", "time_value", "00:00:00", 2)
			s4.create_label("weather_text", "weather", "weather_value", "raining", 3)
			s4.create_label("visor_text", "visor", "visor_value", "false", 4)
			s4.create_label("kd_text", "kd", "kd_value", "0.00", 5)
			s4.create_label("kills_text", "kills", "kills_value", "0", 6)
			s4.create_label("deaths_text", "deaths", "deaths_value", "0", 7)
			return s4
		end

		r100.look_vector_list = function()
			local s13 = {}
			local s15 = {}
			local s16 = {}
			local s17 = {}

			local s19 = {
				enabled = false,
				text_color = r116(255, 98, 127),
				outline_color = r116(0, 0, 0),
				text_transparency = 0,
				outline_transparency = 0,
				percent_threshold = 85,
			}

			r100.look_vector_frame = r100:create("Frame", {
				Parent = r9_1,
				Visible = false,
				BackgroundTransparency = 0.5,
				Active = true,
				BackgroundColor3 = r357.preset.accent,
				Position = r22(0, 50, 0, 200),
				Size = r22(0, 250, 0, 100),
				BorderSizePixel = 0,
				ZIndex = 0,
			})

			r100:draggify(r100.look_vector_frame)
			r100:apply_theme(r100.look_vector_frame, "accent", "BackgroundColor3")

			r100:create("UIListLayout", {
				Padding = r293(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = r100.look_vector_frame,
			})

			local function s2(t24)
				return r24(t24.X, 0, t24.Z)
			end

			local function s3(arg1, arg2, t21)
				local t1 = arg1 - arg2
				local t3 = t1.Magnitude
				if t3 > 2000 or t3 < 1 then
					return
				end
				local t4_1 = s2(t1)
				local t1_1 = s2(t21)
				local t6 = t4_1.Magnitude
				local t8 = t1_1.Magnitude
				if t6 == 0 or t8 == 0 then
					return
				end
				local t17 = r311((t1_1 / t8):Dot(t4_1 / t6) * 100, 0, 100)
				if t17 < s19.percent_threshold then
					return
				end
				return t17, t3 * 0.333
			end

			local function s4(t9)
				local t13 = s16[t9]
				if t13 then
					return t13
				end

				local t5 = r7("TextLabel", {
					BackgroundTransparency = 1,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Center,
					Size = r22(1, 0, 0, 11),
					Text = "",
					LayoutOrder = t9,
					TextColor3 = s19.text_color,
					FontFace = r100.font,
					Parent = r100.look_vector_frame,
				})

				r7("UIStroke", {
					Color = s19.outline_color,
					Thickness = 1,
					LineJoinMode = Enum.LineJoinMode.Miter,
					Parent = t5,
				})

				s16[t9] = t5
				return t5
			end

			s13.add_player = function(arg1)
				s15[arg1] = true
			end

			s13.remove_player = function(t9)
				if s15 then
					s15[t9] = nil
				end
			end

			s13.update_menu = function(t4)
				s19.enabled = t4
				r100.look_vector_frame.Visible = t4
			end

			s13.update = function()
				local t11 = r97.Character
				local t13 = t11 and r26(t11, "Head")
				if not t13 then
					return
				end
				local t15 = 0

				for t6 in r1_2, s15, nil do
					local t9 = t6.Character

					if t9 then
						local t11_1 = r26(t9, "Head")
						local t8 = r26(t9, "HumanoidRootPart")

						if t11_1 and t8 then
							local t9_2, t10 = s3(t13.Position, t11_1.Position, t8.CFrame.LookVector)

							if t9_2 then
								t15 += 1
								local t8_1 = s17[t15]

								if not t8_1 then
									t8_1 = {}
									s17[t15] = t8_1
								end

								t8_1.player = t6
								t8_1.percent = t9_2
								t8_1.meters = t10
							end
						end
					end
				end

				for t5 = t15 + 1, #s17 do
					s17[t5] = nil
				end

				r329(s17, function(arg1, arg2)
					return arg1.percent > arg2.percent
				end)

				for t5_1 = 1, t15 do
					local t10_1 = s17[t5_1]
					local t7_1 = s4(t5_1)
					r351.set_visible(t7_1, true)
					r351.set_property(t7_1, "TextColor3", s19.text_color)
					local t12 = t10_1.player.Name
					local t5_2 = t10_1.percent + 0.5
					r351.set_property(t7_1, "Text", r323("[%dm] %s is looking at you [%d%%]", r305(t10_1.meters + 0.5), t12, r305(t5_2)))
					local t6_1 = r287(t7_1, "UIStroke")

					if t6_1 then
						r351.set_property(t6_1, "Color", s19.outline_color)
					end
				end

				for t5_3 = t15 + 1, #s16 do
					local t5_4 = s16[t5_3]

					if t5_4 then
						r351.set_visible(t5_4, false)
					end
				end
			end

			s13.set_colors = function(t6, t7, t8, t9)
				if t6 ~= nil then
					s19.text_color = t6
				end

				if t7 ~= nil then
					s19.outline_color = t7
				end

				if t8 ~= nil then
					s19.text_transparency = t8
				end

				if t9 ~= nil then
					s19.outline_transparency = t9
				end

				for _, t8_1 in r1_2, s16, nil do
					if t8_1 then
						r351.set_property(t8_1, "TextColor3", s19.text_color)
						r351.set_property(t8_1, "TextTransparency", s19.text_transparency)
						local t10 = t8_1:FindFirstChildOfClass("UIStroke")

						if t10 then
							r351.set_property(t10, "Color", s19.outline_color)
							r351.set_property(t10, "Transparency", s19.outline_transparency)
						end
					end
				end
			end

			s13.update_threshold = function(arg1)
				s19.percent_threshold = arg1
			end

			s13.get_state = function()
				return s19.enabled
			end

			return s13
		end
	end

	if r351.is_debug() then
		print("[backtrack.tech:project_delta] loading cheat")
		r337(0.15)
	end

	local function r2_7()
		r336(function()
			while true do
				local R = os.clock()

				for L, k in r1_2, r100.flash_data, nil do
					if not L or not L.Parent then
						r100.flash_data[L] = nil
					elseif R >= k.end_time then
						r100.flash_data[L] = nil
					elseif R - k.last >= k.speed then
						k.last = R
						k.state = 1 - k.state

						for R, R in r1_2, k.objects, nil do
							if R and R.Parent then
								r179:Create(R, r178(k.speed, r100.tweening_style, r100.tweening_direction), {
									BackgroundTransparency = k.state,
								}):Play()
							end
						end
					end
				end

				r337(0.05)
			end
		end)
	end

	r2_7()

	r11_2 = r100:window({
		name = r346("backtrack.tech - %b %d %Y"),
		size = r22(0, 750, 0, 782),
	})

	r359 = r100:indicator()
	r360 = r100:inventory_viewer()
	r361 = r100:session_data()
	r362 = r100:look_vector_list()
	r3_7 = r97.Character or r97.CharacterAdded:Wait()
	r2_9 = r3_7:WaitForChild("Humanoid")
	r4_6 = r2_9:WaitForChild("Animator")
	r5_1 = r3_7:WaitForChild("HumanoidRootPart")
	local r6_1 = r25[r97.Name]

	r363 = {
		sprinting = r6_1.Status.GameplayVariables.Sprinting,
		statistics = r6_1.Status.Journey.Statistics,
		wipe_statistics = r6_1.Status.Journey.WipeStatistics,
	}

	r370 = r6_1.Status.UAC.Reports
	r118 = r26(r119, "MainGui")
	r120 = r26(r119, "MenuGui")
	local r12_2 = r26(r27, "Modules")
	r121 = r26(r27, "Clans")
	r122 = r26(r27, "Remotes")

	r371 = {
		spawner_zones = r26(r95, "SpawnerZones"),
		zones = r26(r95, "AiZones"),
		vehicles = r26(r95, "Vehicles"),
		no_collision = r26(r95, "NoCollision"),
		dropped_items = r26(r95, "DroppedItems"),
	}

	r371.foliage = r26(r371.spawner_zones, "Foliage")
	r371.landmines = r26(r371.zones, "OutpostLandmines")

	r372 = {
		bullet = require(r12_2.FPS.Bullet),
	}

	r372.old = {
		bullet = r372.bullet.CreateBullet,
	}

	r123 = r26(r124, "Atmosphere")
	r125 = r26(r124, "Bloom")
	r376 = {}

	r377 = {
		tracked = {},
	}

	r378 = {}
	r379 = {}
	r380 = {}
	r381 = RaycastParams.new()
	r381.FilterType = Enum.RaycastFilterType.Exclude

	r381.FilterDescendantsInstances = {
		r3_7,
		workspace.NoCollision,
		workspace.Camera,
	}

	r381.IgnoreWater = true
	r382 = nil

	r383 = {
		track = nil,
		object = nil,
		animation_id = nil,
		by_track = {},
	}

	r384 = {
		combat = {
			aiming = {
				silent_aim = false,
				aim_assist = { enabled = false, bind = false, type = "Camera", smoothness = 0.2 },
				auto_shoot = { enabled = false, delay = 0.01, interval = 0.2 },
				wall_check = false,
				dead_check = false,
				max_distance = { enabled = false, value = 1300 },
				target_players = true,
				target_ai = true,
				target_heli = true,
				target_friendlies = false,
				prioritize_enemies = true,
				hitchance = 100,
				fov_radius = 150,
				hitboxes = { "Head" },
				targeting_type = "closest_to_mouse",
				existing_hitboxes = {
					"Head",
					"HeadTopHitBox",
					"FaceHitBox",
					"UpperTorso",
					"LowerTorso",
					"LeftUpperArm",
					"RightUpperArm",
					"LeftLowerArm",
					"RightLowerArm",
					"LeftHand",
					"RightHand",
					"LeftUpperLeg",
					"RightUpperLeg",
					"LeftLowerLeg",
					"RightLowerLeg",
					"LeftFoot",
					"RightFoot",
				},
			},
			visualization = {
				fov_enabled = false,
				thickness = 1,
				fov_color_1 = r116(255, 98, 127),
				fov_color_2 = r116(203, 79, 104),
				fov_transparency_1 = 0,
				fov_transparency_2 = 0,
				fov_fill = false,
				fov_fill_color_1 = r116(255, 98, 127),
				fov_fill_color_2 = r116(203, 79, 104),
				fov_fill_transparency_1 = 0.5,
				fov_fill_transparency_2 = 0.5,
				fov_outline = false,
				fov_outline_color = r116(0, 0, 0),
				fov_outline_transparency = 0,
				fov_fill_glow = false,
				fill_glow_color_1 = r116(255, 98, 127),
				fill_glow_color_2 = r116(203, 79, 104),
				fill_glow_transparency_1 = 0.5,
				fill_glow_transparency_2 = 0.5,
				spin_gradients = false,
				spin_speed = 1,
				snapline_enabled = false,
				snapline_thickness = 1,
				snapline_color_1 = r116(255, 98, 127),
				snapline_color_2 = r116(203, 79, 104),
				snapline_transparency_1 = 0,
				snapline_transparency_2 = 0,
				snapline_outline = false,
				snapline_outline_color = r116(0, 0, 0),
				snapline_outline_transparency = 0,
				bullet_tracers = {
					enabled = false,
					color_1 = r116(255, 98, 127),
					color_2 = r116(203, 79, 104),
					transparency_1 = 0,
					transparency_2 = 0,
					lifetime = 1.5,
					width = 0.1,
					texture = "Neon",
					texture_speed = 3,
					randomize_curve = false,
					curve_1 = 0,
					curve_2 = 0,
					segments = 10,
					bullet_textures = { DNA = "rbxassetid://119094363918228", Energy = "rbxassetid://6091329339", Laser = "rbxassetid://7136858729", Lightning = "rbxassetid://7151778302", Neon = "rbxassetid://2950987173", Pulsing = "rbxassetid://5889875399" },
				},
				hitmarkers = {
					enabled = false,
					image = "Arrow",
					color = r116(255, 98, 127),
					transparency = 0,
					outline = true,
					color = r116(0, 0, 0),
					outline_transparency = 0,
					lifetime = 1.5,
				},
				bullet_impacts = {
					enabled = false,
					material = "ForceField",
					color = r116(255, 98, 127),
					transparency = 0,
					lifetime = 1.5,
				},
				hit_vfx = {
					enabled = false,
					particles = { "Shards" },
					color = r116(255, 98, 127),
					lifetime = 0.3,
					rate = 40,
				},
				custom_shoot_sound = {
					enabled = false,
					sound = "M4A1 Suppressed",
					pitch = 1,
					volume = 1,
					sounds = { AWP = "2753888131", Bonk = "140110603417819", Bow = "135482046225041", Deagle = "18302188791", G3SG1 = "18512294165", ["M4A1 Suppressed"] = "8922741062", ["MK23-S"] = "6117082165", MSR = "2546411325", ["R8 Revolver"] = "18302097184", ["SCAR 20"] = "91510933153450", ["SPAS-12"] = "6163224960", Scout = "2476571739" },
					sound_index = { "AWP", "Bonk", "Bow", "Deagle", "G3SG1", "M4A1 Suppressed", "MK23-S", "MSR", "R8 Revolver", "SCAR 20", "SPAS-12", "Scout" },
				},
				hitsounds = {
					head = { enabled = false, sound = "Neverlose", volume = 1, pitch = 1 },
					body = { enabled = false, sound = "Cod", volume = 1, pitch = 1 },
					kill = { enabled = false, sound = "Landing", volume = 1, pitch = 1 },
					hitsound_index = {
						"Amongus",
						"Ara",
						"Cod",
						"Coin",
						"Csgo",
						"Fatality",
						"Gamesense",
						"Landing",
						"Neverlose",
						"Noname",
						"Parry",
						"Rifk7",
						"Rust",
						"Snap",
						"Uwu",
					},
				},
			},
			gun_mods = {
				instant_lean = false,
				no_bobbing = false,
				no_recoil = false,
				no_sway = false,
				remove_spread = false,
				remove_obstructions = false,
				instant_aim = false,
				instant_equip = false,
				instant_bullet = false,
				unlock_firemodes = false,
				remove_sprint_animation = false,
				remove_muzzle_effects = false,
				double_tap = false,
				rapid_fire = { enabled = false, value = 1 },
				rapid_knife = { enabled = false, rate = 1 },
			},
			resolvers = {
				use_sit = false,
				server_desync_resolver = { enabled = false },
				underground_resolver = { enabled = false, bind = false, depth = 15, timeout = 1, using = false, method = "Classic" },
				peek = { enabled = false, bind = false, height = 30, timeout = 1, using = false, method = "Classic" },
				tp_peek = { enabled = false, bind = false, height = 50, timeout = 1, using = false, method = "Classic" },
			},
		},
		misc = {
			pitch = { enabled = false, value = 0 },
			desync = {
				desync_toggle = false,
				freeze_delay = 2.5,
				smooth = false,
				client_desync = false,
				visualization = {
					server = {
						enabled = false,
						use_tween = false,
						color = {
							c = r116(255, 98, 127),
							t = 0,
							f = 1.5,
						},
						cham_type = "Default",
						visualize_animations = true,
						third_person_only = false,
					},
				},
				position_spoofer = { enabled = false, x = 0, y = 0, z = 0 },
				rotation_spoofer = {
					enabled = false,
					roll = 0,
					pitch = 0,
					yaw = 0,
					spin = {
						roll = { enabled = false, speed = 1, value = 0 },
						pitch = { enabled = false, speed = 1, value = 0 },
						yaw = { enabled = false, speed = 1, value = 0 },
					},
				},
				animations = { enabled = false, animation = "rbxassetid://0", time_position = 0 },
			},
			item_aura = { enabled = false, interval = 0.2, range = 6 },
			nofall = { enabled = false },
			multi_use = { enabled = false, times = 2, using = false },
			movement = {
				speedhack = { enabled = false, value = 20 },
				jumphack = { enabled = false, value = 3 },
				gravity = {
					enabled = false,
					value = r95.Gravity,
				},
				max_slope_angle = { enabled = false, value = 89 },
				long_jump = { enabled = false, using = false, forward_force = 10, upward_force = 2, cooldown = 1 },
				flyhack = { enabled = false, speed_horizontal = 20, speed_vertical = 20, multiplier = 1 },
				jesus = false,
				remove_jump_cooldown = false,
				no_drown = false,
				remove_water_physics = false,
			},
			trash_talk = {
				enabled = false,
				tt_type = "Backtrack",
				last_phrase = nil,
				trash_talking = false,
				phrases = {
					exploit = {
						"u cant hit my fake angles (◣_◢)",
						"keep dumping my fakes nn (◣_◢)",
						"you’re chasing shadows again",
						"missed me by a mile (◣_◢)",
						"that shot was for decoration (◣_◢)",
						"fake angles too strong (◣_◢)",
						"i can tell by your kd that you are not cheating (◣_◢)",
						"try hitting the real server now ◥▶_◀◤",
						"your aim.exe has stopped responding (◣_◢)",
						"illusion maintained",
						"don’t worry, my fakes are friendly ◥▶_◀◤",
						"is your ragebot even on? (◣_◢)",
						"peekaboo! (◣_◢)",
						"can’t touch this",
						"guess where I am? (◣_◢)",
						"shadow strike activated",
						"you’re too slow (◣_◢)",
					},
					passive = { "oh wow, you actually hit that? good for you 🙂", "must be nice having all that time to practice.", "i guess everyone contributes in their own way…", "wow, that was… definitely a strategy.", "don’t worry, not everyone can be consistent.", "huh, interesting choice… bold, even.", "well, at least you tried… right?", "impressive… if we’re measuring by effort alone.", "oh, you did that? i hadn’t noticed.", "that’s… certainly one way to do it." },
					backtrack = {
						"Forgot to set ur delay to 200ms? Nice backtrack bud.",
						"ur backtrack isnt delayed enough for me 🤷",
						"not even csgo gamesense backtrack is saving you. unlike my backtrack, yours sucks",
						"i could beat you with only backtrack turned on 1ms buddy.",
						"Imagine still being backtrack-less in 2025.",
						"No backtrack, No talk",
						"backtrack is the only thing keeping you relevant, bud",
						"even my grandma’s reaction time is faster than your backtrack",
						"your backtrack delay is so bad it feels like you're lagging IRL",
						"without backtrack, you wouldn’t even win against bots",
						"your aim relies on backtrack harder than training wheels on a bike",
						"funny how your confidence disappears the second backtrack is off",
						"all that backtrack, still can’t top frag",
					},
					casual = {
						"backtrack is just like that. 🍿",
						"oops, missed me again 😅",
						"chasing shadows is my cardio 🤷",
						"you tried! 😎",
						"fake angles be like... 😂",
						"plot twist: I’m still alive 😏",
						"that shot was optional 😜",
						"trying to hit me? good luck! 🍀",
						"missed again, huh? 😅",
						"my angles are on vacation 🏖️",
						"not even mad, just impressed 😏",
						"you’ll get me next time… maybe 🤔",
						"backtracking level: expert 👀",
						"too slow, buddy! 🐢",
						"my fake angles are a lifestyle 😎",
						"just vibin’ here, don’t mind me 😌",
					},
				},
			},
			notifications = {
				flashing = false,
				join = { enabled = false, duration = 3 },
				leave = { enabled = false, duration = 3 },
				report = { enabled = false, flashing = false, duration = 3, sound = false, volume = 1 },
			},
			uaz_spawn_type = "Nearest",
			selected_npcs = { "Blaze", "Mihkel", "Nurse", "Seryozha" },
		},
		visuals = {
			viewmodel = {
				enabled = false,
				weapon_enabled = false,
				weapon_color = r116(255, 98, 127),
				weapon_transparency = 0,
				weapon_material = "ForceField",
				arms_enabled = false,
				arms_color = r116(255, 98, 127),
				arms_transparency = 0,
				arms_material = "ForceField",
				remove_clothing = false,
				offset = { enabled = false, x = 0, y = 0, z = 0 },
				highlight = {
					enabled = false,
					fill = {
						color = r116(255, 98, 127),
						t = 0,
					},
					outline = {
						color = r116(255, 98, 127),
						t = 0,
					},
				},
			},
			local_self = {
				third_person = false,
				third_person_value = 2,
				visualize_pitch = false,
				override_whiz = false,
				whiz_volume = 0.5,
				player_chams = false,
				player_color = r116(255, 98, 127),
				player_transparency = 0,
				player_material = "ForceField",
				remove_clothing = false,
				aspect_ratio = { enabled = false, vertical = 50, horizontal = 50 },
				override_fov = false,
				fov_value = 90,
				default_fov = r25[r97.Name].Settings.GameplaySettings:GetAttribute("DefaultFOV"),
			},
			ui_hide = {
				enabled = false,
				hide = false,
				elements = { "MainGui", "ServerInfo" },
			},
			ui_removals = {
				enabled = false,
				elements = {},
			},
			crosshair = {
				enabled = false,
				color_1 = r116(255, 98, 127),
				color_transparency_1 = 0,
				color_2 = r116(255, 98, 127),
				color_transparency_2 = 0,
				outline = false,
				outline_color = r116(0, 0, 0),
				outline_transparency = 0,
				gap = 18,
				length = 37,
				width = 1,
				position = "Center",
				rotation = 0,
				spin = false,
				spin_speed = 1,
				animation = {
					resize = false,
					going_out = true,
					speed = 1,
					t = 0,
					length = { resize = false, value = 19 },
					gap = { resize = false, value = 36 },
				},
			},
			world = {
				remove_foliage = false,
				remove_trees = false,
				terrain_colors = {},
				notifications = { flare_fired = false, airdrop_dropped = false, flashing = false, duration = 3, sound = false, volume = 1 },
			},
			lighting = {
				override_ambient = false,
				ambient = r116(0, 0, 0),
				outdoor_ambient = r116(70, 70, 70),
				override_brightness = false,
				brightness = 2,
				override_clocktime = false,
				clock_time = 22.9,
				atmosphere = {
					override_fog = false,
					density = 0,
					offset = 0,
					override_fog_colors = false,
					color = r116(255, 255, 255),
					decay = r116(255, 255, 255),
					override_glare = false,
					glare = 0,
					override_haze = false,
					haze = 0,
				},
				bloom = { override_bloom = false, intensity = 0.5, size = 56, threshold = 0.8 },
			},
			data_spoofer = {
				enabled = false,
				server_info = { spoof_version = false, spoof_userid = false, spoof_location = false, spoof_server = false },
				removals = { hide_data = false, hide_client_fps = false, hide_server_fps = false },
			},
		},
		esp = {
			enabled = false,
			character_added_connections = {},
			last_update = r345(),
			update_rate = 240,
			box_type = "Static",
			dynamic_padding = 1.1,
			selected_font = "Tahoma",
			text_case = "Lowercase",
			fonts = {
				name = { font = "Tahoma", text_case = "Lowercase" },
				distance = { font = "Tahoma", text_case = "Lowercase" },
				weapon = { font = "Tahoma", text_case = "Lowercase" },
				health = { font = "Tahoma", text_case = "Lowercase" },
				flags = { font = "Tahoma", text_case = "Lowercase" },
			},
			distance_format = "m",
			show_distance_format = true,
			distance_unit = "meters",
			render_distance = 1300,
			box_size = r23(3.6, 5),
			outlines = {
				box = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				health_bar = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				health_flag = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				name_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				distance_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				weapon_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				visible_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				kd_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				invisible_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
				desyncing_label = {
					enabled = true,
					color = r116(0, 0, 0),
					transparency = 0,
				},
			},
			box_enabled = false,
			box_rotation = 90,
			box_gradient_1 = r116(255, 255, 255),
			box_gradient_2 = r116(255, 255, 255),
			box_gradient_transparency_1 = 0,
			box_gradient_transparency_2 = 0,
			box_fill_enabled = false,
			box_fill_rotation = 90,
			box_fill_gradient_1 = r116(255, 255, 255),
			box_fill_gradient_2 = r116(255, 255, 255),
			box_fill_transparency_1 = 0.5,
			box_fill_transparency_2 = 0.5,
			box_glow = false,
			box_glow_gradient_1 = r116(255, 255, 255),
			box_glow_gradient_2 = r116(255, 255, 255),
			box_glow_transparency_1 = 0.5,
			box_glow_transparency_2 = 0.5,
			health_bar_enabled = false,
			bar_gradient_value = 3,
			bar_thickness = 1,
			health_bar_tweening = false,
			health_bar_tween_time = 0.2,
			health_bar_style = Enum.EasingStyle.Circular,
			health_bar_direction = Enum.EasingDirection.InOut,
			bar_color_1 = r116(0, 255, 0),
			bar_color_2 = r116(255, 255, 0),
			bar_color_3 = r116(255, 0, 0),
			bar_transparency_1 = 0,
			bar_transparency_2 = 0,
			bar_transparency_3 = 0,
			health_flag_enabled = false,
			health_flag_color = r116(255, 255, 255),
			health_flag_transparency = 0,
			health_flag_position = "Left",
			damaged_only = false,
			health_bar_background_enabled = false,
			bar_background_color_1 = r116(0, 51, 0),
			bar_background_color_2 = r116(51, 51, 0),
			bar_background_color_3 = r116(51, 0, 0),
			bar_background_transparency_1 = 0,
			bar_background_transparency_2 = 0,
			bar_background_transparency_3 = 0,
			health_bar_glow_enabled = false,
			bar_glow_color_1 = r116(0, 255, 0),
			bar_glow_color_2 = r116(255, 255, 0),
			bar_glow_color_3 = r116(255, 0, 0),
			bar_glow_transparency_1 = 0.7,
			bar_glow_transparency_2 = 0.7,
			bar_glow_transparency_3 = 0.7,
			name_enabled = false,
			name_color = r116(255, 255, 255),
			name_transparency = 0,
			distance_enabled = false,
			distance_color = r116(255, 255, 255),
			distance_transparency = 0,
			weapon_enabled = false,
			weapon_color = r116(255, 255, 255),
			weapon_transparency = 0,
			weapon_icon_enabled = false,
			weapon_icon_color = r116(255, 255, 255),
			weapon_icon_transparency = 0,
			weapon_icon_size = 22,
			weapon_icon_sampling = "Default",
			kd_enabled = false,
			kd_color = r116(255, 255, 255),
			kd_transparency = 0,
			invisible_enabled = false,
			invisible_color = r116(255, 255, 255),
			invisible_transparency = 0,
			desyncing_enabled = false,
			desyncing_color = r116(255, 255, 255),
			desyncing_transparency = 0,
			desyncing_threshold = 3,
			visible_enabled = false,
			visible_color = r116(255, 255, 255),
			visible_transparency = 0,
			chams_enabled = false,
			chams_color = r116(255, 255, 255),
			chams_transparency = 0,
			chams_glow_enabled = false,
			chams_glow_color = r116(255, 255, 255),
			chams_glow_transparency = 0,
			chams_glow_factor = 1,
			chams_glow_type = "Default",
			highlight = {
				enabled = false,
				fill = {
					color = r116(255, 255, 255),
					transparency = 0.5,
				},
				outline = {
					color = r116(255, 255, 255),
					transparency = 0,
				},
				depthmode = "AlwaysOnTop",
			},
			bots = {
				enabled = false,
				render_distance = 1300,
				outlines = {
					box = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					health_bar = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					health_flag = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					name_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					distance_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					weapon_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					visible_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					kd_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					invisible_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
					desyncing_label = {
						enabled = true,
						color = r116(0, 0, 0),
						transparency = 0,
					},
				},
				fonts = {
					name = { font = "Tahoma", text_case = "Lowercase" },
					distance = { font = "Tahoma", text_case = "Lowercase" },
					weapon = { font = "Tahoma", text_case = "Lowercase" },
					health = { font = "Tahoma", text_case = "Lowercase" },
					flags = { font = "Tahoma", text_case = "Lowercase" },
				},
				box_enabled = false,
				box_rotation = 90,
				box_gradient_1 = r116(255, 255, 255),
				box_gradient_2 = r116(255, 255, 255),
				box_gradient_transparency_1 = 0,
				box_gradient_transparency_2 = 0,
				box_fill_enabled = false,
				box_fill_rotation = 90,
				box_fill_gradient_1 = r116(255, 255, 255),
				box_fill_gradient_2 = r116(255, 255, 255),
				box_fill_transparency_1 = 0.5,
				box_fill_transparency_2 = 0.5,
				box_glow = false,
				box_glow_gradient_1 = r116(255, 255, 255),
				box_glow_gradient_2 = r116(255, 255, 255),
				box_glow_transparency_1 = 0.5,
				box_glow_transparency_2 = 0.5,
				health_bar_enabled = false,
				bar_gradient_value = 3,
				bar_thickness = 1,
				health_bar_tweening = false,
				health_bar_tween_time = 0.2,
				health_bar_style = Enum.EasingStyle.Circular,
				health_bar_direction = Enum.EasingDirection.InOut,
				bar_color_1 = r116(0, 255, 0),
				bar_color_2 = r116(255, 255, 0),
				bar_color_3 = r116(255, 0, 0),
				bar_transparency_1 = 0,
				bar_transparency_2 = 0,
				bar_transparency_3 = 0,
				health_flag_enabled = false,
				health_flag_color = r116(255, 255, 255),
				health_flag_transparency = 0,
				health_flag_position = "Left",
				damaged_only = false,
				health_bar_background_enabled = false,
				bar_background_color_1 = r116(0, 51, 0),
				bar_background_color_2 = r116(51, 51, 0),
				bar_background_color_3 = r116(51, 0, 0),
				bar_background_transparency_1 = 0,
				bar_background_transparency_2 = 0,
				bar_background_transparency_3 = 0,
				health_bar_glow_enabled = false,
				bar_glow_color_1 = r116(0, 255, 0),
				bar_glow_color_2 = r116(255, 255, 0),
				bar_glow_color_3 = r116(255, 0, 0),
				bar_glow_transparency_1 = 0.7,
				bar_glow_transparency_2 = 0.7,
				bar_glow_transparency_3 = 0.7,
				name_enabled = false,
				name_color = r116(255, 255, 255),
				name_transparency = 0,
				distance_enabled = false,
				distance_color = r116(255, 255, 255),
				distance_transparency = 0,
				weapon_enabled = false,
				weapon_color = r116(255, 255, 255),
				weapon_transparency = 0,
				weapon_icon_size = 22,
				weapon_icon_sampling = "Default",
				weapon_icon_enabled = false,
				weapon_icon_color = r116(255, 255, 255),
				weapon_icon_transparency = 0,
				visible_enabled = false,
				visible_color = r116(255, 255, 255),
				visible_transparency = 0,
				chams_enabled = false,
				chams_color = r116(255, 255, 255),
				chams_transparency = 0,
				chams_glow_enabled = false,
				chams_glow_color = r116(255, 255, 255),
				chams_glow_transparency = 0,
				chams_glow_factor = 1,
				chams_glow_type = "Default",
				highlight = {
					enabled = false,
					fill = {
						color = r116(255, 255, 255),
						transparency = 0.5,
					},
					outline = {
						color = r116(255, 255, 255),
						transparency = 0,
					},
					depthmode = "AlwaysOnTop",
				},
			},
			other = {
				enabled = false,
				render_distance = 1300,
				exit = {
					enabled = false,
					outline = true,
					outline_color = r116(0, 0, 0),
					outline_transparency = 0,
					font = "Tahoma",
					distance = false,
					color = r116(255, 255, 255),
					transparency = 0,
					icon = false,
					icon_color = r116(255, 255, 255),
					icon_transparency = 0,
				},
				uaz = {
					enabled = false,
					outline = true,
					outline_color = r116(0, 0, 0),
					outline_transparency = 0,
					font = "Tahoma",
					distance = false,
					color = r116(255, 255, 255),
					transparency = 0,
					icon = false,
					icon_color = r116(255, 255, 255),
					icon_transparency = 0,
				},
				body = {
					enabled = false,
					outline = true,
					outline_color = r116(0, 0, 0),
					outline_transparency = 0,
					font = "Tahoma",
					distance = false,
					color = r116(255, 255, 255),
					transparency = 0,
					icon = false,
					icon_color = r116(255, 255, 255),
					icon_transparency = 0,
					highlight_self_body = false,
					self_color = r116(255, 98, 127),
					self_transparency = 0,
					self_color_image = r116(255, 98, 127),
					self_transparency_image = 0,
				},
				item = {
					enabled = false,
					outline = true,
					outline_color = r116(0, 0, 0),
					outline_transparency = 0,
					font = "Tahoma",
					distance = false,
					color = r116(255, 255, 255),
					transparency = 0,
					icon = false,
					icon_color = r116(255, 255, 255),
					icon_transparency = 0,
				},
				heli = {
					enabled = false,
					outline = true,
					outline_color = r116(0, 0, 0),
					outline_transparency = 0,
					font = "Tahoma",
					distance = false,
					color = r116(255, 255, 255),
					transparency = 0,
					icon = false,
					icon_color = r116(255, 255, 255),
					icon_transparency = 0,
				},
			},
		},
		framework = {
			old = {
				springs = {
					leanAlpha = { Speed = 4, Force = 50 },
					jumpTilt = { Speed = 4, Force = 90 },
					walkCycle = { Speed = 4, Force = 50 },
					sprintCycle = { Speed = 4, Force = 50 },
					strafeTilt = { Speed = 4, Force = 50 },
					cameraRecoil = { Force = 100, Speed = 6 },
					recoilPos = { Speed = 5, Force = 75 },
					recoilRot = { Speed = 3, Force = 35 },
					sway = { Force = 100, Speed = 4 },
					wallTouchTilt = { Speed = 4, Force = 50 },
				},
			},
		},
		outline_element_keys = { ["Bounding Box"] = "bounding_box", ["Health Bar"] = "health_bar", ["Health Number"] = "health_flag", Name = "name_label", Distance = "distance_label", Weapon = "weapon_label", KD = "kd_label", Invisible = "invisible_label", Visible = "visible_label" },
		desync = {
			old = { position = nil, velocity = nil },
		},
		clan_data = {
			teammates = {},
			last_refresh = 0,
		},
		stream_sync = {
			enabled = false,
			last_requested = {},
		},
		session_data_map = { ["Player Count"] = "players_text", ["Server Time"] = "time_text", Weather = "weather_text", Visor = "visor_text", KD = "kd_text", Kills = "kills_text", Deaths = "deaths_text" },
		emulated_tick = 5,
		fired_projectiles = {},
		server_character = nil,
		current_visualizer_tween = nil,
		targeting = { last_target = nil, current_target = nil },
		resolver_connections = {
			resolver_signals = {},
			resolver = {},
		},
		pitch_connection = nil,
		part_cache = {},
		terrain = {},
		admins = {},
		item_textures = {},
		stored_surface_appearances = {
			weapon = {},
			clothing = {},
		},
		original_arm_colors = {},
		character_cache = {
			transparency = {},
			color = {},
			material = {},
			surface_appearances = {},
		},
		reports = { attribute = "1" },
		desync_connection = nil,
		use_connection = nil,
		viewmodel_connection = nil,
		water_part = nil,
		namecall = nil,
		newindex = nil,
		index = nil,
	}

	r1276 = {}

	do
		local r60 = {
			Brightness = 8,
			Color = nil,
			LightEmission = 1,
			LightInfluence = 0,
			Orientation = Enum.ParticleOrientation.FacingCamera,
			Size = r301({
				r144(0, 0.93, 0),
				r144(1, 0, 0),
			}),
			Squash = r301({
				r144(0, 0, 0),
				r144(1, 0, 0),
			}),
			Texture = "rbxassetid://14960943986",
		}

		local r46 = {}
		local r137 = r144(0, 0, 0)
		local r138 = r144(0.1, 0.5, 0.5)
		local r139 = r144(0.17, 0, 0)
		local r140 = r144(0.3, 0.45, 0.45)
		local r145 = r144(0.4, 0, 0)
		local r146 = r144(0.5, 0.45, 0.45)
		local r147 = r144(0.58, 0, 0)
		local r148 = r144(0.7, 0.49, 0.49)
		local r149 = r144(0.8, 0, 0)
		local r150 = r144(0.9, 0.46, 0.46)
		r46[1] = r137
		r46[2] = r138
		r46[3] = r139
		r46[4] = r140
		r46[5] = r145
		r46[6] = r146
		r46[7] = r147
		r46[8] = r148
		r46[9] = r149
		r46[10] = r150

		do
			local values = table.pack(r144(1, 0, 0))
			table.move(values, 1, values.n, 11, r46)
		end

		r60.Transparency = r301(r46)
		r60.ZOffset = 2
		r60.EmissionDirection = Enum.NormalId.Front
		r60.Enabled = false
		r60.Lifetime = NumberRange.new(0.6, 1)
		r60.Rate = 40
		r60.Rotation = NumberRange.new(0, 0)
		r60.RotSpeed = NumberRange.new(0, 0)
		r60.Speed = NumberRange.new(50, 75)
		r60.SpreadAngle = r23(180, 180)
		r60.Shape = Enum.ParticleEmitterShape.Box
		r60.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
		r60.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
		r60.Acceleration = r24(0, 0, 0)
		r60.Drag = 20
		r60.LockedToPart = false
		r1276.star = r7("ParticleEmitter", r60)
	end

	do
		local r139_1 = 0

		local r60_1 = {
			Brightness = 8,
			Color = nil,
			LightEmission = 1,
			LightInfluence = 0,
			Orientation = Enum.ParticleOrientation.FacingCamera,
			Size = r301({
				r144(0, 0.49, 0),
				r144(1, 0, 0),
			}),
			Squash = r301({
				r144(0, 0, 0),
				r144(1, 0, r139_1),
			}),
			Texture = "rbxassetid://15153511168",
		}

		local r132 = {}
		local r134 = r144(0, 0, 0)
		local r135 = r144(0.1, 0.5, 0.5)
		local r136 = r144(0.17, 0, 0)
		local r137_1 = r144(0.3, 0.45, 0.45)
		local r138_1 = r144(0.4, 0, 0)
		local r139_2 = r144(0.5, 0.45, 0.45)
		local r140_1 = r144(0.58, 0, 0)
		local r145_1 = r144(0.7, 0.49, 0.49)
		local r146_1 = r144(0.8, 0, 0)
		local r147_1 = r144(0.9, 0.46, 0.46)
		local r151 = 0
		r132[1] = r134
		r132[2] = r135
		r132[3] = r136
		r132[4] = r137_1
		r132[5] = r138_1
		r132[6] = r139_2
		r132[7] = r140_1
		r132[8] = r145_1
		r132[9] = r146_1
		r132[10] = r147_1

		do
			local values = table.pack(r144(1, 0, r151))
			table.move(values, 1, values.n, 11, r132)
		end

		r60_1.Transparency = r301(r132)
		r60_1.ZOffset = 2
		r60_1.EmissionDirection = Enum.NormalId.Front
		r60_1.Enabled = false
		r60_1.Lifetime = NumberRange.new(0.6, 1)
		r60_1.Rate = 40
		r60_1.Rotation = NumberRange.new(0, 0)
		r60_1.RotSpeed = NumberRange.new(0, 0)
		r60_1.Speed = NumberRange.new(50, 75)
		r60_1.SpreadAngle = r23(180, 180)
		r60_1.Shape = Enum.ParticleEmitterShape.Box
		r60_1.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
		r60_1.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
		r60_1.Acceleration = r24(0, 0, 0)
		r60_1.Drag = 20
		r60_1.LockedToPart = false
		r1276.glow = r7("ParticleEmitter", r60_1)
	end

	r60_2 = {
		Brightness = 5,
		Color = nil,
		LightEmission = 1,
		LightInfluence = 0,
		Orientation = Enum.ParticleOrientation.FacingCamera,
	}

	do
		local r132_1 = {}
		local r133 = r144(0, 0, 0)
		local r134_1 = r144(0.13, 2.25, 0.56)
		local r136_1 = 1
		local r137_2 = 0
		r132_1[1] = r133
		r132_1[2] = r134_1

		do
			local values = table.pack(r144(r136_1, r137_2, 0))
			table.move(values, 1, values.n, 3, r132_1)
		end

		r60_2.Size = r301(r132_1)
	end
end

do
	local r135_1 = 0
	local r136_2 = 0.15

	r60_2.Squash = r301({
		r144(0, 0, 0.15),
		r144(1, r135_1, r136_2),
	})
end

r60_2.Texture = "rbxassetid://10399834408"

do
	local r130 = {}
	local r131 = r144(0, 0, 0)
	local r132_2 = r144(0.18, 0.03, 0)
	local r133_1 = r144(0.29, 1, 0)
	local r134_2 = r144(0.36, 0, 0)
	local r135_2 = r144(0.48, 0, 0)
	local r136_3 = r144(0.63, 0, 0)
	local r137_3 = r144(0.72, 1, 0)
	local r138_2 = r144(0.83, 0, 0)
	local r142 = 0
	r130[1] = r131
	r130[2] = r132_2
	r130[3] = r133_1
	r130[4] = r134_2
	r130[5] = r135_2
	r130[6] = r136_3
	r130[7] = r137_3
	r130[8] = r138_2

	do
		local values = table.pack(r144(1, 0, r142))
		table.move(values, 1, values.n, 9, r130)
	end

	r60_2.Transparency = r301(r130)
end

r60_2.ZOffset = 0
r60_2.EmissionDirection = Enum.NormalId.Front
r60_2.Enabled = false
r60_2.Lifetime = NumberRange.new(0.4, 0.6)
r60_2.Rate = 40
r60_2.Rotation = NumberRange.new(0, 0)
r60_2.RotSpeed = NumberRange.new(-65, 100)
r60_2.Speed = NumberRange.new(30, 40)
r60_2.SpreadAngle = r23(180, 180)
r60_2.Shape = Enum.ParticleEmitterShape.Disc
r60_2.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
r60_2.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
r60_2.Acceleration = r24(1, 0, 0)
r60_2.Drag = 8
r60_2.LockedToPart = true
r1276.shine = r7("ParticleEmitter", r60_2)

do
	local r60_3 = {
		Brightness = 1,
		Color = nil,
		LightEmission = 1,
		LightInfluence = 0,
		Orientation = Enum.ParticleOrientation.VelocityParallel,
	}

	local r129 = {}
	local r130_1 = r144(0, 2.7, 0.68)
	local r131_1 = r144(0.1, 1.86, 0.68)
	local r132_3 = r144(0.2, 1.44, 0.68)
	local r133_2 = r144(0.3, 1.1, 0.68)
	local r134_3 = r144(0.4, 1.01, 0.68)
	local r135_3 = r144(0.5, 0.84, 0.68)
	local r136_4 = r144(0.6, 0.76, 0.68)
	local r137_4 = r144(0.7, 0.51, 0.51)
	local r138_3 = r144(0.8, 0.25, 0.25)
	r129[1] = r130_1
	r129[2] = r131_1
	r129[3] = r132_3
	r129[4] = r133_2
	r129[5] = r134_3
	r129[6] = r135_3
	r129[7] = r136_4
	r129[8] = r137_4
	r129[9] = r138_3

	do
		local values = table.pack(r144(1, 0, 0))
		table.move(values, 1, values.n, 10, r129)
	end

	r60_3.Size = r301(r129)
	local r128 = {}
	local r129_1 = r144(0, 0.97, 0)
	local r130_2 = r144(0.25, 0.23, 0)
	local r132_4 = 1
	r128[1] = r129_1
	r128[2] = r130_2

	do
		local values = table.pack(r144(r132_4, 0.29, 0))
		table.move(values, 1, values.n, 3, r128)
	end

	r60_3.Squash = r301(r128)
	r60_3.Texture = "rbxassetid://12130244331"

	r60_3.Transparency = r301({
		r144(0, 0.38, 0),
		r144(1, 1, 0),
	})

	r60_3.ZOffset = 6.75
	r60_3.EmissionDirection = Enum.NormalId.Top
	r60_3.Enabled = false
	r60_3.Lifetime = NumberRange.new(0.4, 0.5)
	r60_3.Rate = 100
	r60_3.Rotation = NumberRange.new(90, 90)
	r60_3.RotSpeed = NumberRange.new(0, 0)
	r60_3.Speed = NumberRange.new(25, 50)
	r60_3.SpreadAngle = r23(360, -360)
	r60_3.Shape = Enum.ParticleEmitterShape.Box
	r60_3.ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward
	r60_3.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
	r60_3.Acceleration = r24(0, 0, 0)
	r60_3.Drag = 10
	r60_3.LockedToPart = false
	r1276.shards = r7("ParticleEmitter", r60_3)
end

if r351.is_debug() then
	print("[backtrack.tech:project_delta] loading cheat functions")
	print("[backtrack.tech:project_delta] utility")
	r337(0.15)
end

local function r6_2()
	local R = getrawmetatable(game)
	setreadonly(R, false)

	r384.namecall = hookmetamethod(game, "__namecall", newcclosure(function(L, ...)
		local k, J = {
			...,
		}, getnamecallmethod()

		if not checkcaller() then
			if J == "FireServer" then
				local r = L.Name
				if r == "Drowning" and r384.misc.movement.no_drown then
					return
				end

				if r == "Consume" and r384.misc.multi_use.enabled and not r384.misc.multi_use.using then
					r384.misc.multi_use.using = true

					for r = 1, r384.misc.multi_use.times, 1 do
						r336(function()
							L:FireServer()
						end)
					end

					r336(function()
						r337(0.05)
						r384.misc.multi_use.using = false
					end)
				end
			end
		end

		if J == "FireServer" then
			local r = L.Name

			if r == "ProjectileInflict" then
				if r344():find("CharacterController") then
					return coroutine.yield()
				end

				if r384.combat.gun_mods.instant_bullet then
					k[4] = r384.fired_projectiles[k[3]][2] + r384.emulated_tick
				end
			end

			if r == "UpdateTilt" then
				if r384.misc.pitch.enabled then
					k[1] = r384.misc.pitch.value
					k[2] = nil
					k[3] = 0
					k[4] = 0
				end
			end
		end

		if J == "InvokeServer" then
			if L.Name == "FireProjectile" and r384.combat.gun_mods.instant_bullet then
				r384.fired_projectiles[k[2]] = {
					k[2],
					k[3],
					k[1],
				}

				return r384.namecall(L, unpack(k))
			end
		end

		if J == "Raycast" and r384.combat.aiming.silent_aim then
			if not (r382 and (r344():find("Bullet"))) then
				return r384.namecall(L, ...)
			end
			local r = r382.Position

			if r384.combat.gun_mods.wallbang then
				return {
					Instance = r382,
					Position = r,
					Distance = (r - k[1]).Magnitude,
					Normal = r24(1, 0, 0),
					Material = r382.Material,
				}
			end

			local g, x = k[1], k[2]
			k[2] = r - g
			return r384.namecall(L, unpack(k))
		end

		if J == "GetAttribute" then
			if L == r363.sprinting and k[1] == "Value" and r384.combat.gun_mods.remove_sprint_animation then
				return false
			elseif k[1] == "AccuracyDeviation" and r384.combat.gun_mods.remove_spread then
				return 0
			elseif k[1] == "MuzzleEffect" and r384.combat.gun_mods.remove_muzzle_effects then
				return false
			elseif k[1] == "BlockADS" and r384.combat.gun_mods.remove_obstructions then
				return false
			end
		end

		if J == "Clone" and L.ClassName == "Sound" then
			local J = r384.namecall(L, ...)
			local r = J.SoundId

			if (L.Name == "FireSound" or L.Name == "FireSoundSupressed") and r384.combat.visualization.custom_shoot_sound.enabled then
				r340(function()
					J.SoundId = "rbxassetid://" .. r384.combat.visualization.custom_shoot_sound.sounds[r384.combat.visualization.custom_shoot_sound.sound]
					J.Pitch = r384.combat.visualization.custom_shoot_sound.pitch or 1
					J.Volume = r384.combat.visualization.custom_shoot_sound.volume or 1
				end)
			end

			return J
		end

		return r384.namecall(L, unpack(k))
	end))

	r384.newindex = hookmetamethod(game, "__newindex", function(L, k, J)
		J = if L == r124 and r384.visuals.lighting.override_clocktime and r384.visuals.lighting.clock_time then if k == "ClockTime" and r384.visuals.lighting.override_clocktime and r384.visuals.lighting.clock_time then r384.visuals.lighting.clock_time else J else J
		local r = L == r289 and not checkcaller()
		return r384.newindex(L, k, if r and k == "CFrame" then if r384.visuals.local_self.third_person then J + J.LookVector * -r384.visuals.local_self.third_person_value else J else J)
	end)

	r384.index = hookmetamethod(game, "__index", newcclosure(function(L, k)
		if not checkcaller() then
			if k == "CFrame" then
				if (r384.misc.desync.position_spoofer.enabled or r384.misc.desync.rotation_spoofer.enabled) and L == r5_1 then
					local J = r384.desync.old.position
					if J then
						return J
					end
				end
			end
		end

		return r384.index(L, k)
	end))

	setreadonly(R, true)
end

r6_2()

if r96 then
	local r13, r14 = r96:GetDescendants()

	for _, r14_1 in r1_2, r13, r14 do
		if r26(r14_1, "ItemProperties") then
			local r150_1 = r26(r14_1.ItemProperties, "ItemIcon")

			if r150_1 and r155(r150_1, "ImageLabel") then
				r384.item_textures[r14_1.Name] = r150_1.Image
			end
		end
	end
end

r351.on_admin_joined = function(s4)
	r100:notification({
		text = "[!] Admin " .. s4 .. " has joined the server",
		flashing = true,
		time = 5,
		sound = true,
		sound_type = 2,
		volume = 1.5,
	})

	r100.output.create_output({
		text = "Admin " .. s4 .. " has joined the server",
		prefix = "WARN",
		color = r100.colors.warning,
	})
end

r351.on_admin_left = function(s11)
	r100:notification({
		text = "[!] Admin " .. s11 .. " has left the server",
		flashing = true,
		time = 5,
		sound = true,
		sound_type = 2,
		volume = 1.5,
	})

	r100.output.create_output({
		text = "Admin " .. s11 .. " has left the server",
		prefix = "WARN",
		color = r100.colors.warning,
	})
end

r351.get_rank = function(s28, s29)
	local s1, s2 = pcall(function()
		return s28:GetRankInGroup(s29)
	end)

	return s1 and s2 or 0
end

r351.is_admin = function(s21)
	local s22, s23 = pcall(function()
		return s21:IsFriendsWith(17953224)
	end)

	local s1 = s22 and s23 or false
	return r351.get_rank(s21, 4502303) >= 100 or r351.get_rank(s21, 13810797) >= 1 or r351.get_rank(s21, 3765739) >= 5 or s1
end

r351.add_admin = function(s27)
	if r384.admins[s27] then
		return
	end
	r384.admins[s27] = true
	r351.on_admin_joined(s27.Name)
end

r351.remove_admin = function(s24)
	if not r384.admins[s24] then
		return
	end
	r384.admins[s24] = nil
	r351.on_admin_left(s24.Name)
end

r351.calculate_kd = function(G)
	if not G then
		return 0
	end
	local R, L = G:GetAttribute("K_PVP") or 0, G:GetAttribute("D_PVP") or 0
	if R == 0 then
		return 0
	end
	return R / (L == 0 and 1 or L)
end

r351.get_world_pos = function(R)
	if not R then
		return nil
	end

	if r155(R, "Model") then
		return R:GetModelCFrame().Position
	elseif r155(R, "BasePart") then
		return R.Position
	else
		return nil
	end
end

r351.get_root_cframe = function(R)
	if r384.misc.desync.position_spoofer.enabled or r384.misc.desync.rotation_spoofer.enabled then
		return r384.desync.old.position
	end
	return R.CFrame
end

r351.simulate_click = function()
	r337(r384.combat.aiming.auto_shoot.delay)
	mouse1press()
	r337(0.05)
	mouse1release()
end

r351.get_hitboxes = function(R)
	local L = {}

	for k, J in r1_2, r384.combat.aiming.hitboxes, nil do
		k = r26(R, J)

		if k then
			r327(L, k)
		end
	end

	if r384.combat.aiming.target_heli then
		R = r26(r371.zones, "HeliAirfield")
		local k = R and (r26(R, "MI24V"))

		if k then
			local R = r26(k, "Pilots")
			local k = R and (r26(R, "CollisionPilot"))

			if k then
				r327(L, k)
			end
		end
	end

	return L
end

local r12_3 = r26(r124, "WeatherStatus")

r351.update_session_data = function()
	local s6 = r363.statistics
	local s17 = r324(s6:GetAttribute("K_PVP")) or "n/a"
	local s19 = r324(s6:GetAttribute("D_PVP")) or "n/a"
	local s16 = r351.calculate_kd(s6)
	local s8 = r275.MaxPlayers
	local s5 = r323("%d/%d", #r283(r275), s8)
	local s23 = "unknown"
	local s10 = "12:00:00"

	if r12_3 then
		s23 = r320(r12_3:GetAttribute("Weather") or "unknown")
		local s2 = r26(r12_3, "MinutesAfterMidnight")

		if s2 and s2:IsA("NumberValue") then
			local s2_1 = s2.Value
			local s12 = r305(s2_1 / 60)
			local s13 = r305(s2_1 % 60)
			local s14 = r305(s2_1 * 60 % 60)
			s10 = r323("%02d:%02d:%02d", s12, s13, s14)
		end
	end

	r361.update_flag("players_value", "Text", s5)
	r361.update_flag("kd_value", "Text", r323("%.2f", s16))
	r361.update_flag("kills_value", "Text", s17)
	r361.update_flag("deaths_value", "Text", s19)
	r361.update_flag("time_value", "Text", s10)
	r361.update_flag("weather_value", "Text", s23)
end

r351.update_session_data()

r351.is_visible = function(R, L, k)
	local J = r284(r95, R, k.Position - R, r381)
	return J and J.Instance and (r286(J.Instance, L)), J
end

r351.get_screen_pos = function(R)
	local L, k = r289:WorldToViewportPoint(R)
	return r23(L.X, L.Y), k
end

r351.get_head_pos = function()
	local R = r3_7 and (r26(r3_7, "Head"))
	if not R then
		return nil
	end
	return R
end

r351.calculate_chance = function(R)
	return r308(1, 100) <= R
end

r351.refresh_teammates = function()
	local R, L = r384.clan_data, tick()
	if L - R.last_refresh < 2 then
		return
	end
	R.last_refresh = L
	R.teammates = {}
	if not r121 then
		return
	end
	local k, J, r = r97.Name, r121:GetChildren()

	for g, g in r1_2, J, r do
		if g:GetAttribute("Owner") == k or r26(g, k) ~= nil then
			L = g:GetAttribute("Owner")

			if L and L ~= k then
				R.teammates[L] = true
			end

			local L, J = g:GetChildren()

			for r, r in r1_2, L, J do
				if r.Name ~= k then
					R.teammates[r.Name] = true
				end
			end

			break
		end
	end
end

r351.setup_child_added = function()
	r100:connection(r3_7.ChildAdded, function()
		if r384.visuals.ui_removals then
			r354.update_ui()
		end

		if not r384.visuals.local_self.player_chams then
			return
		end
		r337(0.1)
		r354.update_character()
	end)
end

if r351.is_debug() then
	print("[backtrack.tech:project_delta] visual")
	r337(0.15)
end

local r58 = r7("ScreenGui", {
	Enabled = true,
	DisplayOrder = 9999999,
	IgnoreGuiInset = true,
	ZIndexBehavior = Enum.ZIndexBehavior.Global,
	ResetOnSpawn = false,
	Parent = r278,
})

r352.model_template = function(s7)
	local s16 = { screen_gui = r58 }

	s16.holder = r7("Frame", {
		BackgroundTransparency = 1,
		Parent = s16.screen_gui,
	})

	s16.box = r7("Frame", {
		BackgroundTransparency = 1,
		Size = r22(1, 0, 1, 0),
		Parent = s16.holder,
	})

	s16.box_outline = r7("UIStroke", {
		BorderOffset = r293(0, 2),
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.box,
	})

	s16.box_bg_fill = r7("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = r22(1, 0, 1, 0),
		BackgroundColor3 = r116(255, 255, 255),
		ZIndex = 2,
		Parent = s16.box,
	})

	s16.box_inline_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.box,
	})

	local s13 = 255

	s16.box_bg_fill_gradient = r7("UIGradient", {
		Color = r299({
			r300(0, r116(255, 255, 255)),
			r300(1, r116(255, 255, s13)),
		}),
		Transparency = r301({
			r144(0, 0.7),
			r144(1, 0.7),
		}),
		Rotation = 90,
		Parent = s16.box_bg_fill,
	})

	s16.box_fill_stroke = r7("UIStroke", {
		BorderOffset = r293(0, 1),
		Color = r116(255, 255, 255),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.box,
	})

	s16.box_fill_gradient = r7("UIGradient", {
		Color = r299({
			r300(0, r116(255, 255, 255)),
			r300(1, r116(255, 255, 255)),
		}),
		Rotation = 90,
		Parent = s16.box_fill_stroke,
	})

	s16.box_glow = r7("ImageLabel", {
		BackgroundTransparency = 1,
		Size = r22(1, 41, 1, 41),
		Position = r22(0.5, -1, 0.5, -1),
		AnchorPoint = r23(0.5, 0.5),
		Image = r100.images.Glow4,
		ImageColor3 = r116(255, 255, 255),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = r294(21, 21, 79, 79),
		SliceScale = 1,
		ZIndex = 0,
		Parent = s16.box,
	})

	local s10 = 255

	s16.box_glow_gradient = r7("UIGradient", {
		Color = r299({
			r300(0, r116(255, 255, 255)),
			r300(1, r116(s10, 255, 255)),
		}),
		Transparency = r301({
			r144(0, 0.7),
			r144(1, 0.7),
		}),
		Rotation = 90,
		Parent = s16.box_glow,
	})

	s16.health_bar = r7("Frame", {
		AnchorPoint = r23(1, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = r116(0, 0, 0),
		Position = r22(0, -4, 1, 3),
		Size = r22(0, 3, 1, 6),
		ZIndex = 1,
		Parent = s16.holder,
	})

	s16.bar = r7("Frame", {
		AnchorPoint = r23(0, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = r116(255, 255, 255),
		Position = r22(1, -2, 1, -1),
		Size = r22(1, -2, 1, -2),
		ZIndex = 3,
		Parent = s16.health_bar,
	})

	local s4 = r7
	local s5 = {}
	local s3 = {}
	local s8 = r300(0, r116(0, 255, 0))
	local s10_1 = r300(0.5, r116(255, 255, 0))
	s3[1] = s8
	s3[2] = s10_1

	do
		local values = table.pack(r300(1, r116(255, 0, 0)))
		table.move(values, 1, values.n, 3, s3)
	end

	s5.Color = r299(s3)
	s5.Rotation = 90
	s5.Parent = s16.bar
	s16.bar_gradient = s4("UIGradient", s5)

	s16.background_bar = r7("Frame", {
		AnchorPoint = r23(0, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = r116(255, 255, 255),
		Position = r22(1, -2, 1, -1),
		Size = r22(1, -2, 1, -2),
		ZIndex = 2,
		Parent = s16.health_bar,
	})

	local s4_1 = r7
	local s5_1 = {}
	local s3_1 = {}
	local s8_1 = r300(0, r116(0, 51, 0))
	local s10_2 = r300(0.5, r116(51, 51, 0))
	s3_1[1] = s8_1
	s3_1[2] = s10_2

	do
		local values = table.pack(r300(1, r116(51, 0, 0)))
		table.move(values, 1, values.n, 3, s3_1)
	end

	s5_1.Color = r299(s3_1)
	s5_1.Rotation = 90
	s5_1.Parent = s16.background_bar
	s16.background_bar_gradient = s4_1("UIGradient", s5_1)

	s16.health_flag = r7("TextLabel", {
		BackgroundTransparency = 1,
		TextSize = 12,
		Text = "100",
		TextXAlignment = Enum.TextXAlignment.Right,
		AnchorPoint = r23(0, 1),
		Position = r22(0, -3, 0, 9),
		Size = r22(1, 0, 0, 12),
		TextColor3 = r116(255, 255, 255),
		FontFace = r100.font,
		ZIndex = 3,
		Parent = s16.bar,
	})

	s16.health_flag_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.health_flag,
	})

	s16.health_bar_glow = r7("ImageLabel", {
		BackgroundTransparency = 1,
		Size = r22(1, 41, 1, 41),
		Position = r22(0.5, -1, 0.5, -1),
		AnchorPoint = r23(0.5, 0.5),
		Image = r100.images.Glow4,
		ImageColor3 = r116(255, 255, 255),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = r294(21, 21, 79, 79),
		SliceScale = 1,
		ZIndex = 0,
		Parent = s16.health_bar,
	})

	local s4_2 = r7
	local s5_2 = {}
	local s3_2 = {}
	local s8_2 = r300(0, r116(0, 255, 0))
	local s10_3 = r300(0.5, r116(255, 255, 0))
	s3_2[1] = s8_2
	s3_2[2] = s10_3

	do
		local values = table.pack(r300(1, r116(255, 0, 0)))
		table.move(values, 1, values.n, 3, s3_2)
	end

	s5_2.Color = r299(s3_2)
	local s13_1 = 1

	s5_2.Transparency = r301({
		r144(0, 0.7),
		r144(s13_1, 0.7),
	})

	s5_2.Rotation = 90
	s5_2.Parent = s16.health_bar_glow
	s16.health_bar_glow_gradient = s4_2("UIGradient", s5_2)

	s16.name_label = r7("TextLabel", {
		BackgroundTransparency = 1,
		TextSize = 12,
		AnchorPoint = r23(0, 1),
		Position = r22(0, 0, 0, -6),
		Size = r22(1, 0, 0, 12),
		TextColor3 = r116(255, 255, 255),
		FontFace = r100.font,
		Parent = s16.holder,
	})

	s16.name_label_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.name_label,
	})

	s16.distance_label = r7("TextLabel", {
		BackgroundTransparency = 1,
		TextSize = 12,
		AnchorPoint = r23(0, 1),
		Position = r22(0, 0, 1, 14),
		Size = r22(1, 0, 0, 12),
		TextColor3 = r116(255, 255, 255),
		FontFace = r100.font,
		Parent = s16.holder,
	})

	s16.distance_label_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.distance_label,
	})

	s16.weapon_label = r7("TextLabel", {
		BackgroundTransparency = 1,
		TextSize = 12,
		AnchorPoint = r23(0, 1),
		Position = r22(0, 0, 1, 26),
		Size = r22(1, 0, 0, 12),
		TextColor3 = r116(255, 255, 255),
		FontFace = r100.font,
		Parent = s16.holder,
	})

	s16.weapon_label_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.weapon_label,
	})

	s16.weapon_icon = r7("ImageLabel", {
		AnchorPoint = r23(0.5, 0.5),
		Position = r22(0.5, 0, 0.5, 18),
		Size = r22(0, 22, 0, 22),
		BackgroundTransparency = 1,
		Image = "",
		ImageColor3 = r116(255, 255, 255),
		Parent = s16.weapon_label,
	})

	s16.flags_holder = r7("Frame", {
		BackgroundTransparency = 1,
		AnchorPoint = r23(1, 0),
		Position = r22(1, 6, 0, -2),
		Size = r22(0, 1, 1, 4),
		Parent = s16.holder,
	})

	s16.flag_layout = r7("UIListLayout", {
		Padding = r293(0, 12),
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = s16.flags_holder,
	})

	s16.flag_padding = r7("UIPadding", {
		PaddingTop = r293(0, 3),
		Parent = s16.flags_holder,
	})

	s16.visible_label = r7("TextLabel", {
		BackgroundTransparency = 1,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		AnchorPoint = r23(1, 0),
		Position = r22(1, 57, 0, 47),
		Size = r22(0, 0, 0, 0),
		Text = "",
		LayoutOrder = 2,
		TextColor3 = r116(255, 255, 255),
		FontFace = r100.font,
		Parent = s16.flags_holder,
	})

	s16.visible_label_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		Thickness = 1,
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s16.visible_label,
	})

	if not s7 then
		s16.kd_label = r7("TextLabel", {
			BackgroundTransparency = 1,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			AnchorPoint = r23(1, 0),
			Position = r22(1, 57, 0, -5),
			Size = r22(0, 0, 0, 0),
			Text = "",
			LayoutOrder = 1,
			TextColor3 = r116(255, 255, 255),
			FontFace = r100.font,
			Parent = s16.flags_holder,
		})

		s16.kd_label_stroke = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = s16.kd_label,
		})

		s16.invisible_label = r7("TextLabel", {
			BackgroundTransparency = 1,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			AnchorPoint = r23(1, 0),
			Position = r22(1, 57, 0, 8),
			Size = r22(0, 0, 0, 0),
			Text = "",
			LayoutOrder = 3,
			TextColor3 = r116(255, 255, 255),
			FontFace = r100.font,
			Parent = s16.flags_holder,
		})

		s16.invisible_label_stroke = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = s16.invisible_label,
		})

		s16.desyncing_label = r7("TextLabel", {
			BackgroundTransparency = 1,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			AnchorPoint = r23(1, 0),
			Position = r22(1, 57, 0, 34),
			Size = r22(0, 0, 0, 0),
			Text = "",
			LayoutOrder = 4,
			TextColor3 = r116(255, 255, 255),
			FontFace = r100.font,
			Parent = s16.flags_holder,
		})

		s16.desyncing_label_stroke = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = s16.desyncing_label,
		})
	end

	return s16
end

r352.format_text = function(R, L)
	if R == "" then
		return R
	end

	if L == "Lowercase" then
		return r320(R)
	elseif L == "Uppercase" then
		return r321(R)
	elseif L == "Titlecase" then
		return R:gsub("(%a)([%w']*)", function(L, k)
			return r321(L) .. r320(k)
		end)
	else
		return R
	end
end

r352.refresh = function(R)
	local L = R and r384.esp.bots or r384.esp
	local k = L.outlines
	local J, J, r = r348[r384.esp.selected_font], r348[L.fonts.flags.font], L.fonts

	local g = {
		name_label = r.name.font,
		distance_label = r.distance.font,
		weapon_label = r.weapon.font,
		health_flag = r.health.font,
		visible_label = r.flags.font,
		kd_label = r.flags.font,
		invisible_label = r.flags.font,
		desyncing_label = r.flags.font,
	}

	for x, a in r1_2, r376, nil do
		if a.bot ~= R then
			continue
		end
		x, r = a.hum, a.directory
		if not x or not r then
			continue
		end

		local N, u, _ = a.chams.highlight, {
			{
				element = r.name_label,
				key = "name_label",
			},
			{
				element = r.distance_label,
				key = "distance_label",
			},
			{
				element = r.weapon_label,
				key = "weapon_label",
			},
			{
				element = r.health_flag,
				key = "health_flag",
			},
			{
				element = r.visible_label,
				key = "visible_label",
			},
		}, not R

		if _ then
			u[#u + 1] = {
				element = r.kd_label,
				key = "kd_label",
			}

			u[#u + 1] = {
				element = r.invisible_label,
				key = "invisible_label",
			}

			u[#u + 1] = {
				element = r.desyncing_label,
				key = "desyncing_label",
			}
		end

		local R = {
			health_flag_stroke = k.health_flag,
			name_label_stroke = k.name_label,
			distance_label_stroke = k.distance_label,
			weapon_label_stroke = k.weapon_label,
			visible_label_stroke = k.visible_label,
			kd_label_stroke = _ and k.kd_label or nil,
			invisible_label_stroke = _ and k.invisible_label or nil,
			desyncing_label_stroke = _ and k.desyncing_label or nil,
		}

		local E = {
			{
				key = "name_label",
				enabled = L.name_enabled,
				color = L.name_color,
				transparency = L.name_transparency,
			},
			{
				key = "distance_label",
				enabled = L.distance_enabled,
				color = L.distance_color,
				transparency = L.distance_transparency,
			},
			{
				key = "visible_label",
				enabled = L.visible_enabled,
				color = L.visible_color,
				transparency = L.visible_transparency,
			},
			_ and {
				key = "kd_label",
				enabled = L.kd_enabled,
				color = L.kd_color,
				transparency = L.kd_transparency,
			} or nil,
			_ and {
				key = "invisible_label",
				enabled = L.invisible_enabled,
				color = L.invisible_color,
				transparency = L.invisible_transparency,
			} or nil,
			_ and {
				key = "desyncing_label",
				enabled = L.desyncing_enabled,
				color = L.desyncing_color,
				transparency = L.desyncing_transparency,
			} or nil,
		}

		r352.make_seq = function(Z, v, M)
			local e = L.bar_gradient_value
			local i = r352.gradient_positions[e] or r352.gradient_positions[3]
			local B = Z .. "_1"
			local C = Z .. "_2"
			local s = Z .. "_3"
			Z = r335(#i)

			if e == 1 then
				i = L[B]
				Z[1] = v(0, i)
				Z[2] = v(1, i)
			elseif e == 2 then
				Z[1] = v(0, L[B])
				Z[2] = v(1, L[C])
			else
				Z[1] = v(0, L[B])
				Z[2] = v(0.5, L[C])
				Z[3] = v(1, L[s])
			end

			return M(Z)
		end

		r351.set_visible(r.box, L.box_enabled)
		r351.set_enabled(r.box_outline, k.box.enabled)

		r351.set_property_group(r.box_outline, {
			Color = k.box.color,
			Transparency = k.box.transparency,
		})

		r351.set_enabled(r.box_inline_stroke, k.box.enabled)

		r351.set_property_group(r.box_inline_stroke, {
			Color = k.box.color,
			Transparency = k.box.transparency,
		})

		local Z = r299({
			r300(0, L.box_gradient_1),
			r300(1, L.box_gradient_2),
		})

		local v = r301({
			r144(0, L.box_gradient_transparency_1),
			r144(1, L.box_gradient_transparency_2),
		})

		r351.set_property_group(r.box_fill_gradient, {
			Color = Z,
			Transparency = v,
			Rotation = L.box_rotation,
		})

		r351.set_property(r.box_bg_fill, "BackgroundTransparency", L.box_fill_enabled and 0 or 1)

		v, Z = r299({
			r300(0, L.box_fill_gradient_1),
			r300(1, L.box_fill_gradient_2),
		}), r301({
			r144(0, L.box_fill_transparency_1),
			r144(1, L.box_fill_transparency_2),
		})

		r351.set_property_group(r.box_bg_fill_gradient, {
			Color = v,
			Transparency = Z,
			Rotation = L.box_fill_rotation,
		})

		r351.set_visible(r.box_glow, L.box_glow)

		v, Z = r299({
			r300(0, L.box_glow_gradient_1),
			r300(1, L.box_glow_gradient_2),
		}), r301({
			r144(0, L.box_glow_transparency_1),
			r144(1, L.box_glow_transparency_2),
		})

		r351.set_property_group(r.box_glow_gradient, {
			Color = v,
			Transparency = Z,
			Rotation = L.box_rotation,
		})

		r351.set_visible(r.health_bar, L.health_bar_enabled)

		r351.set_property_group(r.health_bar, {
			BackgroundColor3 = k.health_bar.color,
			BackgroundTransparency = k.health_bar.enabled and k.health_bar.transparency or 1,
			Size = r22(0, 2 + L.bar_thickness, 1, 6),
		})

		r351.set_property_group(r.bar_gradient, {
			Color = r352.make_seq("bar_color", r300, r299),
			Transparency = r352.make_seq("bar_transparency", r144, r301),
		})

		r351.set_visible(r.health_bar_glow, L.health_bar_glow_enabled)

		r351.set_property_group(r.health_bar_glow_gradient, {
			Color = r352.make_seq("bar_glow_color", r300, r299),
			Transparency = r352.make_seq("bar_glow_transparency", r144, r301),
		})

		r351.set_visible(r.health_flag, L.health_flag_enabled)

		r351.set_property_group(r.health_flag, {
			TextColor3 = L.health_flag_color,
			TextTransparency = L.health_flag_transparency,
			Position = r22(0, (L.health_flag_position == "Left" and -3 or 0) - (L.bar_thickness - 1), 0, 9),
			TextXAlignment = L.health_flag_position == "Left" and Enum.TextXAlignment.Right or Enum.TextXAlignment.Center,
		})

		r351.set_visible(r.background_bar, L.health_bar_background_enabled)

		r351.set_property_group(r.background_bar_gradient, {
			Color = r352.make_seq("bar_background_color", r300, r299),
			Transparency = r352.make_seq("bar_background_transparency", r144, r301),
		})

		v = r22(1, -r.health_bar.Size.X.Offset + 1, 1, -1)
		r351.set_property(r.bar, "Position", v)
		r351.set_property(r.background_bar, "Position", v)

		if L.health_flag_enabled then
			local k = x.Health or 0
			v = if L.damaged_only then if k >= x.MaxHealth then "" else (r310(k)) else (r310(k))
			r351.set_property(r.health_flag, "Text", v)
		end

		for k, M in r1_2, R, nil do
			Z = r[k]
			if not Z then
				continue
			end
			r351.set_enabled(Z, M.enabled)

			r351.set_property_group(Z, {
				Color = M.color,
				Transparency = M.transparency,
			})
		end

		for k, k in r1_2, E, nil do
			if not k then
				continue
			end
			Z = r[k.key]
			if not Z then
				continue
			end
			r351.set_visible(Z, Z.Text ~= "" and k.enabled)

			r351.set_property_group(Z, {
				TextColor3 = k.color,
				TextTransparency = k.transparency,
			})
		end

		r351.set_visible(r.weapon_label, L.weapon_enabled)

		r351.set_property_group(r.weapon_label, {
			TextColor3 = L.weapon_color,
			TextTransparency = L.weapon_transparency,
			Position = L.distance_enabled and (r22(0, 0, 1, 29)) or (r22(0, 0, 1, 16)),
		})

		r351.set_visible(r.weapon_icon, L.weapon_icon_enabled)

		r351.set_property_group(r.weapon_icon, {
			ImageColor3 = L.weapon_icon_color,
			ImageTransparency = L.weapon_icon_transparency,
			Size = r22(0, L.weapon_icon_size, 0, L.weapon_icon_size),
			ResampleMode = Enum.ResamplerMode[L.weapon_icon_sampling],
		})

		if _ then
			r351.set_property(r.kd_label, "Text", r352.format_text(r.kd_label.Text, r384.esp.text_case))
			r351.set_property(r.invisible_label, "Text", r352.format_text(r.invisible_label.Text, r384.esp.text_case))
			r351.set_property(r.desyncing_label, "Text", r352.format_text(r.desyncing_label.Text, r384.esp.text_case))
		end

		for k, M in r1_2, a.chams, nil do
			if k ~= "highlight" then
				if M.main then
					r351.set_visible(M.main, L.chams_enabled)
					r351.set_property(M.main, "Color3", L.chams_color)
					r351.set_property(M.main, "Transparency", L.chams_transparency)
				end

				if M.glow then
					r351.set_visible(M.glow, L.chams_glow_enabled)
					_, E = L.chams_glow_color, L.chams_glow_factor
					local k = _.R * 255 * E
					local a = _.G * 255 * E
					local e = _.B * 255 * E
					r351.set_property(M.glow, "Color3", r116(k, a, e))
					r351.set_property(M.glow, "Transparency", L.chams_glow_transparency)
					x = r352.glow_shading_map[L.chams_glow_type]

					if x then
						r351.set_property(M.glow, "Shading", x)
					end
				end
			end
		end

		if N then
			r351.set_property(N, "Enabled", L.highlight.enabled)
			r351.set_property(N, "FillColor", L.highlight.fill.color)
			r351.set_property(N, "FillTransparency", L.highlight.fill.transparency)
			r351.set_property(N, "OutlineColor", L.highlight.outline.color)
			r351.set_property(N, "OutlineTransparency", L.highlight.outline.transparency)
			r351.set_property(N, "DepthMode", Enum.HighlightDepthMode[L.highlight.depthmode])
		end

		for k, k in r1_2, u, nil do
			Z, R = k.element, k.key
			if not Z then
				continue
			end
			N = g[R]
			if not N then
				continue
			end
			v, x = r348[N], R == "weapon_label" and not L.distance_enabled
			local L = v.label_padding[if x then "distance_label" else R]
			local R = Z.Position

			r351.set_property_group(Z, {
				FontFace = r347[N],
				TextSize = v.size,
				Position = L and (r22(R.X.Scale, R.X.Offset, R.Y.Scale, L)) or R,
			})
		end

		r351.set_property(r.flag_layout, "Padding", r293(0, J.layout))
		r351.set_property(r.flag_padding, "PaddingTop", r293(0, J.top))
		r351.set_property(r.name_label, "Text", r352.format_text(r.name_label.Text, r384.esp.text_case))
		r351.set_property(r.weapon_label, "Text", r352.format_text(r.weapon_label.Text, r384.esp.text_case))
		r351.set_property(r.visible_label, "Text", r352.format_text(r.visible_label.Text, r384.esp.text_case))
	end
end

r352.chams = function(s8, s9)
	if not r287(s8, "Humanoid") then
		return
	end

	local s17 = {
		Head = true,
		Torso = true,
		UpperTorso = true,
		LowerTorso = true,
		LeftUpperArm = true,
		LeftLowerArm = true,
		LeftHand = true,
		RightUpperArm = true,
		RightLowerArm = true,
		RightHand = true,
		LeftUpperLeg = true,
		LeftLowerLeg = true,
		LeftFoot = true,
		RightUpperLeg = true,
		RightLowerLeg = true,
		RightFoot = true,
		["Left Arm"] = true,
		["Right Arm"] = true,
		["Left Leg"] = true,
		["Right Leg"] = true,
	}

	local s18 = {
		head = {
			glow = r24(1.251, 1.42, 1.251),
			main = r24(1.252, 1.43, 1.252),
		},
		default = {
			glow = r24(0.15, 0.15, 0.15),
			main = r24(0.17, 0.17, 0.17),
		},
	}

	local s20 = { highlight = nil }
	local s2, s3 = s8:GetChildren()

	for _, s3_1 in r1_2, s2, s3 do
		if r155(s3_1, "BasePart") and s17[s3_1.Name] then
			local s5 = s3_1.Name == "Head"
			local s6 = s5 and s18.head or s18.default

			local s4_1 = {
				Visible = false,
				Adornee = s3_1,
				AlwaysOnTop = true,
				Transparency = 0,
				Color3 = r116(255, 255, 255),
				Parent = s9,
			}

			local s13 = r333(s4_1)
			local s4_2 = r333(s4_1)

			if s5 then
				s13.Size = s6.glow
				s4_2.Size = s6.main
			else
				s13.Size = s3_1.Size + s6.glow
				s4_2.Size = s3_1.Size + s6.main
			end

			s13.ZIndex = -1
			s13.Shading = Enum.AdornShading.XRay
			s4_2.ZIndex = 0

			s20[s3_1] = {
				glow = r7("BoxHandleAdornment", s13),
				main = r7("BoxHandleAdornment", s4_2),
			}
		end
	end

	s20.highlight = r7("Highlight", {
		Adornee = s8,
		FillColor = r116(255, 255, 255),
		FillTransparency = 0.5,
		OutlineColor = r116(255, 255, 255),
		OutlineTransparency = 0,
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
		Parent = s9,
	})

	return s20
end

r352.healthbar = function(s17, s18, s19)
	local s2 = r287(s17, "Humanoid")
	if not s2 then
		return
	end
	local s4 = s19 and r384.esp.bots or r384.esp

	local function s5(t22, t23, t24)
		r336(function()
			local R = tick()

			repeat
				local L = r311((tick() - R) / t24, 0, 1)
				local R = r310(t22 + (t23 - t22) * L)
				local k = s4.damaged_only
				s18.health_flag.Text = r324(if k and R >= s2.MaxHealth then "" else R)
				r337(0.1)
			until L >= 1
		end)
	end

	local function s6(t21)
		local t14 = r22(1, -2, r311(t21 / s2.MaxHealth, 0, 1), -2)
		local t10

		if s4.damaged_only then
			if s2.MaxHealth <= t21 then
				t10 = ""
			else
				t10 = r310(t21)
			end
		else
			t10 = r310(t21)
		end

		if s4.health_bar_tweening then
			local t17 = r178(s4.health_bar_tween_time, s4.health_bar_style, s4.health_bar_direction)
			r179:Create(s18.bar, t17, { Size = t14 }):Play()

			r179:Create(s18.bar_gradient, t17, {
				Offset = r23(0, t14.Y.Scale - 1),
			}):Play()

			r179:Create(s18.health_bar_glow_gradient, t17, {
				Offset = r23(0, t14.Y.Scale - 1),
			}):Play()

			s5(r325(s18.health_flag.Text) or 0, t21, t17.Time)
		else
			s18.bar.Size = t14
			s18.bar_gradient.Offset = r23(0, t14.Y.Scale - 1)
			s18.health_bar_glow_gradient.Offset = r23(0, t14.Y.Scale - 1)
			s18.health_flag.Text = t10
		end
	end

	s6(s2.Health)

	r100:connection(s2.HealthChanged, function(t35)
		if t35 <= 0 then
			local t1 = r376[s17]

			if t1 and t1.handle_remove then
				t1.handle_remove()
			end

			return
		end

		s6(t35)
	end)
end

r352.weapon = function(s19, s20)
	if not s19 then
		return
	end

	local function s4(t2)
		return t2 and r384.item_textures[t2] or nil
	end

	local function s6(t24)
		if not t24 then
			s20.weapon_label.Text = ""
			s20.weapon_icon.Image = ""
			return
		end

		local t21 = r324(t24)
		s20.weapon_label.Text = r352.format_text(t21, r384.esp.text_case)
		s20.weapon_icon.Image = s4(t21) or ""
	end

	local s1 = s19:WaitForChild("Holding")
	s6(s1.Value and s1.Value.Name or nil)

	if s1 then
		r100:connection(s1:GetPropertyChangedSignal("Value"), function()
			local t2 = s1.Value
			s6(typeof(t2) == "Instance" and t2.Name or nil)
		end)
	end
end

r352.kd_flag = function(arg1, s34)
	local s36 = r26(r25, arg1.Name)
	if not s36 then
		return
	end
	local s2 = r26(s36, "Status") and r26(s36.Status, "Journey") and r26(s36.Status.Journey, "Statistics")
	if not s2 then
		return
	end

	local function s3()
		local t5 = r351.calculate_kd(s2)
		local t2 = r352.format_text("kd", r384.esp.text_case)
		r351.set_property(s34.kd_label, "Text", r323("%.2f", t5) .. " " .. t2)
	end

	s3()
	r100:connection(s2:GetAttributeChangedSignal("Kills"), s3)
	r100:connection(s2:GetAttributeChangedSignal("Deaths"), s3)
end

r352.visible_flag = function(arg1, s28)
	r351.set_property(s28.visible_label, "Text", "")
	r351.set_visible(s28.visible_label, false)
end

r352.invisible_flag = function(arg1, s19)
	local s6 = r384.esp
	local s1 = r26(arg1, "Head")
	if not s1 then
		return
	end

	local function s5()
		if s1.Transparency == 1 then
			r351.set_property(s19.invisible_label, "Text", r352.format_text("Invisible", r384.esp.text_case))
			r351.set_visible(s19.invisible_label, s6.invisible_enabled)
		else
			r351.set_property(s19.invisible_label, "Text", "")
			r351.set_visible(s19.invisible_label, false)
		end
	end

	s5()
	r100:connection(s1:GetPropertyChangedSignal("Transparency"), s5)
end

r352.desyncing_flag = function(arg1, s16, s17)
	local s6 = r384.esp
	local s19 = r26(r25, arg1.Name)
	if not s19 then
		return
	end
	local s3 = r26(s19, "Status") and r26(s19.Status, "UAC")
	if not s3 then
		return
	end

	local function s4()
		local t2 = s3:GetAttribute("LastVerifiedPos")

		if t2 then
			local t8 = r292(s16.Position - t2)

			if t8 >= s6.desyncing_threshold then
				local t7 = s6.text_case
				r351.set_property(s17.desyncing_label, "Text", r352.format_text(("Desyncing (%.1f)"):format(t8), t7))
				r351.set_visible(s17.desyncing_label, s6.desyncing_enabled)
				return
			end
		end

		r351.set_property(s17.desyncing_label, "Text", "")
		r351.set_visible(s17.desyncing_label, false)
	end

	s4()
	r100:connection(s3:GetAttributeChangedSignal("LastVerifiedPos"), s4)
end

r352.test_animation = function()
	local function R(L, k, J, r, g, x)
		r336(function()
			local a = tick()

			repeat
				local N = r311((tick() - a) / x, 0, 1)
				local x = r310(r + (g - r) * N)
				local r = k.damaged_only
				r351.set_property(L.health_flag, "Text", if r and x >= J.MaxHealth then "" else x)
				r337(0.1)
			until N >= 1
		end)
	end

	local function L(k, J, r)
		local g = r.Health
		local x = r311(g / r.MaxHealth, 0, 1)
		local a = r22(1, -2, x, -2 + (1 - x) * 2)
		k.bar.Size = r22(1, -2, 0, -2)
		k.bar_gradient.Offset = r23(0, -1)
		k.health_bar_glow_gradient.Offset = r23(0, -1)
		local N = if J.damaged_only and g >= r.MaxHealth then "" else (r310(g))
		r351.set_property(k.health_flag, "Text", N)

		if J.health_bar_tweening then
			N = r178(J.health_bar_tween_time, J.health_bar_style, J.health_bar_direction)
			r179:Create(k.bar, N, { Size = a }):Play()

			r179:Create(k.bar_gradient, N, {
				Offset = r23(0, a.Y.Scale - 1),
			}):Play()

			r179:Create(k.health_bar_glow_gradient, N, {
				Offset = r23(0, a.Y.Scale - 1),
			}):Play()

			R(k, J, r, 0, g, N.Time)
		else
			k.bar.Size = a
			k.bar_gradient.Offset = r23(0, a.Y.Scale - 1)
			k.health_bar_glow_gradient.Offset = r23(0, a.Y.Scale - 1)
			x = if J.damaged_only and g >= r.MaxHealth then "" else (r310(g))
			r351.set_property(k.health_flag, "Text", x)
		end
	end

	for R, R in r1_2, r376, nil do
		L(R.directory, R.bot and r384.esp.bots or r384.esp, R.hum)
	end
end

r352.new_model = function(R, L, k)
	if r376[L] then
		return
	end
	local J = k or false
	local r, g = r26(L, "HumanoidRootPart"), r26(L, "Humanoid")

	if not r or not g then
		local x

		x = r100:connection(L.ChildAdded, function()
			if r26(L, "HumanoidRootPart") and (r26(L, "Humanoid")) then
				x:Disconnect()
				r352.new_model(R, L, J)
			end
		end)

		return
	end

	if L == r97.Character or g.Health <= 0 then
		return
	end
	k = r352.model_template(J)
	k.name_label.Text = L.Name
	local R = r352.chams(L, k.screen_gui)

	r376[L] = {
		hrp = r,
		hum = g,
		gui = k.screen_gui,
		holder = k.holder,
		bot = J,
		directory = k,
		chams = R,
	}

	r352.healthbar(L, k, J)
	r352.weapon(L, k)
	r352.visible_flag(r, k, J)

	if not J then
		r352.kd_flag(L, k)
		r352.invisible_flag(L, k)
		r352.desyncing_flag(L, r, k, J)
	end

	r352.refresh(J)

	local function R()
		local k = r376[L]
		if not k then
			return
		end
		local J = k.chams

		if J then
			local g = J.highlight

			if g then
				g.Adornee = nil
				g:Destroy()
			end

			for g, x in r1_2, J, nil do
				if g ~= "highlight" then
					if x.glow then
						x.glow:Destroy()
					end

					if x.main then
						x.main:Destroy()
					end
				end
			end

			k.chams = nil
		end

		J = k.holder

		if J then
			J:Destroy()
			k.holder = nil
		end

		r376[L] = nil
	end

	r376[L].handle_remove = R

	local function k(J, J)
		if not J then
			R()
		end
	end

	r100:connection(L.AncestryChanged, k)
	r100:connection(r.AncestryChanged, k)
end

r352.instance_template = function(s33)
	local s4 = {}

	if not r377[s33 .. "_ui"] then
		r377[s33 .. "_ui"] = r7("ScreenGui", { IgnoreGuiInset = true, Parent = r278 })
	end

	s4.label = r7("TextLabel", {
		AnchorPoint = r23(0.5, 0.5),
		BackgroundTransparency = 1,
		Size = r22(0, 100, 0, 12),
		Text = "",
		TextColor3 = r116(255, 255, 255),
		FontFace = r347[r384.esp.selected_font],
		TextXAlignment = Enum.TextXAlignment.Center,
		TextSize = 12,
		Parent = r377[s33 .. "_ui"],
	})

	s4.label_stroke = r7("UIStroke", {
		Color = r116(0, 0, 0),
		LineJoinMode = Enum.LineJoinMode.Miter,
		Parent = s4.label,
	})

	local s3 = {
		uaz = r100.images.Uaz,
		exit = r100.images.Exit,
		body = r100.images.Body,
		item = r100.images.Item,
		heli = r100.images.Heli,
	}

	s4.icon = r7("ImageLabel", {
		AnchorPoint = r23(0.5, 0.5),
		BackgroundTransparency = 1,
		Position = r22(0.5, 0, 0.5, 25),
		Size = r22(0, 15, 0, 15),
		Image = s3[s33] or "",
		ResampleMode = Enum.ResamplerMode.Pixelated,
		Parent = s4.label,
	})

	return s4
end

r352.refresh_custom = function()
	for R, L in r1_2, r377.tracked, nil do
		if not L or not L.gui or not L.gui.label then
			continue
		end
		local k, J = L.gui, L.element_type
		local r = k.label
		local g = r384.esp.other[J]

		if J == "body" and R.Name == r97.Name and g.highlight_self_body then
			r351.set_property(r, "TextColor3", g.self_color)
			r351.set_property(r, "TextTransparency", g.self_transparency)
			r351.set_property(k.icon, "ImageColor3", g.self_color_image)
			r351.set_property(k.icon, "ImageTransparency", g.self_transparency_image)
			r351.set_visible(k.icon, g.icon)
		elseif g then
			r351.set_property(r, "TextColor3", g.color)
			r351.set_property(r, "TextTransparency", g.transparency)
			r351.set_property(k.icon, "ImageColor3", g.icon_color)
			r351.set_property(k.icon, "ImageTransparency", g.icon_transparency)
			r351.set_visible(k.icon, g.icon)
		end

		r351.set_enabled(k.label_stroke, g.outline)
		r351.set_property(k.label_stroke, "Color", g.outline_color)
		r351.set_property(k.label_stroke, "Transparency", g.outline_transparency)
		r351.set_property(r, "FontFace", r347[g.font])
		r351.set_property(r, "TextSize", r348[g.font].size)
		text = L.base_text
		r352.format_text(text, r384.esp.text_case)
		L.base_text = text
	end
end

r352.heli = function(s2)
	if not r377.tracked[s2] then
		return
	end
	local s12 = r377.tracked[s2]
	local s14 = s12.gui
	local s16 = s12.base_text
	local s6 = r26(s2, "Pilots")
	if not s6 then
		return
	end
	local s8 = r26(s6, "CollisionPilot")
	if not s8 then
		return
	end

	local function s10()
		local t2 = s8:GetAttribute("Health") or 0
		local t3 = s8:GetAttribute("MaxHealth") or 1
		local t2_1 = r352.format_text(s16 .. " " .. r310(t2) .. "/" .. t3 .. " hp")
		s12.base_text = t2_1
		s14.label.Text = t2_1
	end

	s10()
	r100:connection(s8:GetAttributeChangedSignal("Health"), s10)
	r100:connection(s8:GetAttributeChangedSignal("MaxHealth"), s10)
end

r352.path = function(arg1, s32)
	local s29 = arg1:split(".")
	local s4 = r384

	for s1 = 1, #s29 - 1 do
		s4 = s4[s29[s1]]
	end

	s4[s29[#s29]] = s32
end

r352.tab = function(s26, s27, s28)
	s26:toggle({
		name = "ESP Enabled",
		flag = s27 .. "_enabled",
		callback = function(t34)
			r352.path(s27 .. ".enabled", t34)
			r352.refresh(s28)
		end,
	}):configuration({ name = "ESP Options" }, function(arg1)
		arg1:slider({
			name = "Render Distance",
			min = 1,
			max = 3000,
			default = 1300,
			suffix = "m",
			interval = 1,
			flag = s27 .. "_render_distance",
			callback = function(u24)
				r352.path(s27 .. ".render_distance", u24)
			end,
		})
	end):keybind({
		name = (s27 == "esp" and "Player" or s27 == "esp.bots" and "NPC") .. " ESP",
		flag = s27 .. "_enabled_bind",
		callback = function(t17)
			r352.path(s27 .. ".enabled", t17)
			r352.refresh(s28)
		end,
	})

	s26:splitter()

	s26:toggle({
		name = "Bounding Box",
		flag = s27 .. "_bounding_box",
		callback = function(t37)
			r352.path(s27 .. ".box_enabled", t37)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Bounding Box Options" }, function(t11)
		t11:label({ name = "Color" }):colorpicker({
			name = "Gradient Top",
			flag = s27 .. "_gradient_top_color",
			color = r116(255, 255, 255),
			callback = function(u32, u33)
				r352.path(s27 .. ".box_gradient_1", u32)
				r352.path(s27 .. ".box_gradient_transparency_1", 1 - u33)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Gradient Bottom",
			flag = s27 .. "_gradient_bottom_color",
			color = r116(255, 255, 255),
			callback = function(u31, u32)
				r352.path(s27 .. ".box_gradient_2", u31)
				r352.path(s27 .. ".box_gradient_transparency_2", 1 - u32)
				r352.refresh(s28)
			end,
		})

		t11:slider({
			slider_type = "normal",
			min = 0,
			max = 180,
			default = 90,
			suffix = "°",
			interval = 1,
			flag = s27 .. "_bounding_box_gradient_rotation",
			callback = function(u20)
				r352.path(s27 .. ".box_rotation", u20)
				r352.refresh(s28)
			end,
		})

		t11:toggle({
			name = "Render Outline",
			flag = s27 .. "_box_outline",
			default = true,
			callback = function(u12)
				r352.path(s27 .. ".outlines.box.enabled", u12)
				r352.refresh(s28)
				return
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = s27 .. "_box_outline_color",
			color = r116(0, 0, 0),
			callback = function(u30, u31)
				r352.path(s27 .. ".outlines.box.color", u30)
				r352.path(s27 .. ".outlines.box.transparency", 1 - u31)
				r352.refresh(s28)
			end,
		})

		t11:toggle({
			name = "Glow",
			flag = s27 .. "_box_glow",
			callback = function(u4)
				r352.path(s27 .. ".box_glow", u4)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Gradient Top",
			flag = s27 .. "_box_glow_gradient_top_color",
			alpha = 0.5,
			color = r116(255, 255, 255),
			callback = function(u20, u21)
				r352.path(s27 .. ".box_glow_gradient_1", u20)
				r352.path(s27 .. ".box_glow_transparency_1", 1 - u21)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Gradient Bottom",
			flag = s27 .. "_box_glow_gradient_bottom_color",
			alpha = 0.5,
			color = r116(255, 255, 255),
			callback = function(u10, u11)
				r352.path(s27 .. ".box_glow_gradient_2", u10)
				r352.path(s27 .. ".box_glow_transparency_2", 1 - u11)
				r352.refresh(s28)
			end,
		})

		t11:toggle({
			name = "Fill",
			flag = s27 .. "_box_fill",
			callback = function(u4)
				r352.path(s27 .. ".box_fill_enabled", u4)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Gradient Top",
			flag = s27 .. "_box_fill_gradient_top_color",
			alpha = 0.5,
			color = r116(255, 255, 255),
			callback = function(u19, u20)
				r352.path(s27 .. ".box_fill_gradient_1", u19)
				r352.path(s27 .. ".box_fill_transparency_1", 1 - u20)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Gradient Bottom",
			flag = s27 .. "_box_fill_gradient_bottom_color",
			alpha = 0.5,
			color = r116(255, 255, 255),
			callback = function(u20, u21)
				r352.path(s27 .. ".box_fill_gradient_2", u20)
				r352.path(s27 .. ".box_fill_transparency_2", 1 - u21)
				r352.refresh(s28)
			end,
		})

		t11:slider({
			slider_type = "normal",
			min = 0,
			max = 180,
			default = 90,
			suffix = "°",
			interval = 1,
			flag = s27 .. "_bounding_box_fill_gradient_rotation",
			callback = function(u29)
				r352.path(s27 .. ".box_fill_rotation", u29)
				r352.refresh(s28)
			end,
		})
	end)

	s26:toggle({
		name = "Health Bar",
		flag = s27 .. "_health_bar",
		callback = function(t22)
			r352.path(s27 .. ".health_bar_enabled", t22)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Health Bar Options" }, function(t20)
		t20:label({ name = "Color" }):colorpicker({
			name = "Color 1",
			flag = s27 .. "_health_bar_1",
			color = r116(0, 255, 0),
			callback = function(u34, u35)
				r352.path(s27 .. ".bar_color_1", u34)
				r352.path(s27 .. ".bar_transparency_1", 1 - u35)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 2",
			flag = s27 .. "_health_bar_2",
			color = r116(255, 255, 0),
			callback = function(u36, u37)
				r352.path(s27 .. ".bar_color_2", u36)
				r352.path(s27 .. ".bar_transparency_2", 1 - u37)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 3",
			flag = s27 .. "_health_bar_3",
			color = r116(255, 0, 0),
			callback = function(u29, u30)
				r352.path(s27 .. ".bar_color_3", u29)
				r352.path(s27 .. ".bar_transparency_3", 1 - u30)
				r352.refresh(s28)
			end,
		})

		t20:toggle({
			name = "Render Outline",
			flag = s27 .. "_health_bar_outline",
			default = true,
			callback = function(u11)
				r352.path(s27 .. ".outlines.health_bar.enabled", u11)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = s27 .. "_health_bar_outline_color",
			color = r116(0, 0, 0),
			callback = function(u37, u38)
				r352.path(s27 .. ".outlines.health_bar.color", u37)
				r352.path(s27 .. ".outlines.health_bar.transparency", 1 - u38)
				r352.refresh(s28)
			end,
		})

		t20:toggle({
			name = "Glow",
			flag = s27 .. "_health_bar_glow",
			callback = function(u14)
				r352.path(s27 .. ".health_bar_glow_enabled", u14)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 1",
			flag = s27 .. "_health_bar_glow_1",
			alpha = 0.5,
			color = r116(0, 255, 0),
			callback = function(u20, u21)
				r352.path(s27 .. ".bar_glow_color_1", u20)
				r352.path(s27 .. ".bar_glow_transparency_1", 1 - u21)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 2",
			flag = s27 .. "_health_bar_glow_2",
			alpha = 0.5,
			color = r116(255, 255, 0),
			callback = function(u37, u38)
				r352.path(s27 .. ".bar_glow_color_2", u37)
				r352.path(s27 .. ".bar_glow_transparency_2", 1 - u38)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 3",
			flag = s27 .. "_health_bar_glow_3",
			alpha = 0.5,
			color = r116(255, 0, 0),
			callback = function(u5, u6)
				r352.path(s27 .. ".bar_glow_color_3", u5)
				r352.path(s27 .. ".bar_glow_transparency_3", 1 - u6)
				r352.refresh(s28)
			end,
		})

		t20:toggle({
			name = "Background",
			flag = s27 .. "_health_bar_background",
			callback = function(u10)
				r352.path(s27 .. ".health_bar_background_enabled", u10)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 1",
			flag = s27 .. "_health_bar_background_1",
			color = r116(0, 51, 0),
			callback = function(u13, u14)
				r352.path(s27 .. ".bar_background_color_1", u13)
				r352.path(s27 .. ".bar_background_transparency_1", 1 - u14)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 2",
			flag = s27 .. "_health_bar_background_2",
			color = r116(51, 51, 0),
			callback = function(u21, u22)
				r352.path(s27 .. ".bar_background_color_2", u21)
				r352.path(s27 .. ".bar_background_transparency_2", 1 - u22)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Color 3",
			flag = s27 .. "_health_bar_background_3",
			color = r116(51, 0, 0),
			callback = function(u33, u34)
				r352.path(s27 .. ".bar_background_color_3", u33)
				r352.path(s27 .. ".bar_background_transparency_3", 1 - u34)
				r352.refresh(s28)
			end,
		})

		t20:splitter({ offset = 1 })

		t20:toggle({
			name = "Health Flag",
			flag = s27 .. "_health_value",
			callback = function(u4)
				r352.path(s27 .. ".health_flag_enabled", u4)
				r352.refresh(s28)
			end,
		}):configuration({ name = "Health Flag Options" }, function(u11)
			u11:toggle({
				name = "Damaged Only",
				flag = s27 .. "_damaged_only",
				callback = function(v25)
					r352.path(s27 .. ".damaged_only", v25)
					r352.refresh(s28)
				end,
			})

			u11:dropdown({
				name = "Position",
				flag = s27 .. "_health_value_position",
				items = { "Center", "Left" },
				default = "Left",
				callback = function(v21)
					r352.path(s27 .. ".health_flag_position", v21)
					r352.refresh(s28)
				end,
			})

			u11:splitter({ offset = 1 })

			u11:dropdown({
				name = "Font",
				scrolling = true,
				flag = s27 .. "_health_font",
				items = r98,
				default = "Tahoma",
				callback = function(v5)
					r352.path(s27 .. ".fonts.health.font", v5)
					r352.refresh(s28)
				end,
			})

			u11:toggle({
				name = "Render Outline",
				flag = s27 .. "_health_outline",
				default = true,
				callback = function(v11)
					r352.path(s27 .. ".outlines.health_flag.enabled", v11)
					r352.refresh(s28)
				end,
			}):colorpicker({
				name = "Outline Color",
				flag = s27 .. "_health_outline_color",
				color = r116(0, 0, 0),
				callback = function(v11, v12)
					r352.path(s27 .. ".outlines.health_flag.color", v11)
					r352.path(s27 .. ".outlines.health_flag.transparency", 1 - v12)
					r352.refresh(s28)
				end,
			})
		end):colorpicker({
			name = "Text Color",
			flag = s27 .. "_health_value_color",
			color = r116(255, 255, 255),
			callback = function(u18, u19)
				r352.path(s27 .. ".health_flag_color", u18)
				r352.path(s27 .. ".health_flag_transparency", 1 - u19)
				r352.refresh(s28)
			end,
		})

		t20:splitter({ offset = 1 })

		t20:slider({
			name = "Gradient Layers",
			min = 1,
			max = 3,
			default = 3,
			interval = 1,
			flag = s27 .. "_health_bar_gradient_layers",
			callback = function(u29)
				r352.path(s27 .. ".bar_gradient_value", u29)
				r352.refresh(s28)
			end,
		})

		t20:slider({
			name = "Thickness",
			min = 1,
			max = 4,
			default = 1,
			suffix = "px",
			interval = 1,
			flag = s27 .. "_health_bar_thickness",
			callback = function(u10)
				r352.path(s27 .. ".bar_thickness", u10)
				r352.refresh(s28)
			end,
		})

		t20:splitter({ offset = 1 })

		t20:toggle({
			name = "Animate",
			flag = s27 .. "_animate_health_bar",
			callback = function(u7)
				r352.path(s27 .. ".health_bar_tweening", u7)
			end,
		})

		t20:slider({
			slider_type = "normal",
			min = 0.1,
			max = 1,
			default = 0.2,
			suffix = "s",
			interval = 0.01,
			flag = s27 .. "_health_bar_tween_time",
			callback = function(u21)
				r352.path(s27 .. ".health_bar_tween_time", u21)
			end,
		})

		t20:dropdown({
			name = "Easing Style",
			scrolling = true,
			flag = s27 .. "_animation_easing_style",
			items = r100.easing_style_index,
			default = "Circular",
			callback = function(arg1)
				r352.path(s27 .. ".health_bar_style", Enum.EasingStyle[arg1])
			end,
		})

		t20:dropdown({
			name = "Direction",
			flag = s27 .. "_animation_direction",
			items = r100.easing_direction_index,
			default = "InOut",
			callback = function(arg1)
				r352.path(s27 .. ".health_bar_direction", Enum.EasingDirection[arg1])
			end,
		})
	end)

	s26:splitter()

	s26:toggle({
		name = "Name",
		flag = s27 .. "_name",
		callback = function(t13)
			r352.path(s27 .. ".name_enabled", t13)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Name Options" }, function(t12)
		t12:dropdown({
			name = "Font",
			scrolling = true,
			flag = s27 .. "_name_font",
			items = r98,
			default = "Tahoma",
			callback = function(u33)
				r352.path(s27 .. ".fonts.name.font", u33)
				r352.refresh(s28)
			end,
		})

		t12:toggle({
			name = "Render Outline",
			flag = s27 .. "_name_outline",
			default = true,
			callback = function(u32)
				r352.path(s27 .. ".outlines.name_label.enabled", u32)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = s27 .. "_name_outline_color",
			color = r116(0, 0, 0),
			callback = function(u24, u25)
				r352.path(s27 .. ".outlines.name_label.color", u24)
				r352.path(s27 .. ".outlines.name_label.transparency", 1 - u25)
				r352.refresh(s28)
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = s27 .. "_name_color",
		color = r116(255, 255, 255),
		callback = function(t37, t38)
			r352.path(s27 .. ".name_color", t37)
			r352.path(s27 .. ".name_transparency", 1 - t38)
			r352.refresh(s28)
		end,
	})

	s26:toggle({
		name = "Distance",
		flag = s27 .. "_distance",
		callback = function(t7)
			r352.path(s27 .. ".distance_enabled", t7)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Distance Options" }, function(t20)
		t20:dropdown({
			name = "Font",
			scrolling = true,
			flag = s27 .. "_distance_font",
			items = r98,
			default = "Tahoma",
			callback = function(u13)
				r352.path(s27 .. ".fonts.distance.font", u13)
				r352.refresh(s28)
			end,
		})

		t20:toggle({
			name = "Render Outline",
			flag = s27 .. "_distance_outline",
			default = true,
			callback = function(u14)
				r352.path(s27 .. ".outlines.distance_label.enabled", u14)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = s27 .. "_distance_outline_color",
			color = r116(0, 0, 0),
			callback = function(u32, u33)
				r352.path(s27 .. ".outlines.distance_label.color", u32)
				r352.path(s27 .. ".outlines.distance_label.transparency", 1 - u33)
				r352.refresh(s28)
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = s27 .. "_distance_color",
		color = r116(255, 255, 255),
		callback = function(t36, t37)
			r352.path(s27 .. ".distance_color", t36)
			r352.path(s27 .. ".distance_transparency", 1 - t37)
			r352.refresh(s28)
		end,
	})

	s26:toggle({
		name = "Weapon",
		flag = s27 .. "_weapon",
		callback = function(t20)
			r352.path(s27 .. ".weapon_enabled", t20)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Weapon Options" }, function(t28)
		t28:toggle({
			name = "Icon",
			flag = s27 .. "_weapon_icon",
			callback = function(u9)
				r352.path(s27 .. ".weapon_icon_enabled", u9)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Image Color",
			flag = s27 .. "_weapon_icon_color",
			color = r116(255, 255, 255),
			callback = function(u23, u24)
				r352.path(s27 .. ".weapon_icon_color", u23)
				r352.path(s27 .. ".weapon_icon_transparency", 1 - u24)
				r352.refresh(s28)
			end,
		})

		t28:slider({
			name = "Size",
			min = 15,
			max = 25,
			default = 22,
			interval = 1,
			flag = s27 .. "_weapon_icon_size",
			callback = function(u22)
				r352.path(s27 .. ".weapon_icon_size", u22)
				r352.refresh(s28)
			end,
		})

		t28:dropdown({
			name = "Sampling",
			flag = s27 .. "_weapon_icon_sampling",
			items = { "Default", "Pixelated" },
			default = "Default",
			callback = function(u31)
				r352.path(s27 .. ".weapon_icon_sampling", u31)
				r352.refresh(s28)
			end,
		})

		t28:splitter({ offset = 1 })

		t28:dropdown({
			name = "Font",
			scrolling = true,
			flag = s27 .. "_weapon_font",
			items = r98,
			default = "Tahoma",
			callback = function(u23)
				r352.path(s27 .. ".fonts.weapon.font", u23)
				r352.refresh(s28)
			end,
		})

		t28:toggle({
			name = "Render Outline",
			flag = s27 .. "_weapon_outline",
			default = true,
			callback = function(u18)
				r352.path(s27 .. ".outlines.weapon_label.enabled", u18)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = s27 .. "_weapon_outline_color",
			color = r116(0, 0, 0),
			callback = function(u18, u19)
				r352.path(s27 .. ".outlines.weapon_label.color", u18)
				r352.path(s27 .. ".outlines.weapon_label.transparency", 1 - u19)
				r352.refresh(s28)
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = s27 .. "_weapon_color",
		color = r116(255, 255, 255),
		callback = function(t31, t32)
			r352.path(s27 .. ".weapon_color", t31)
			r352.path(s27 .. ".weapon_transparency", 1 - t32)
			r352.refresh(s28)
		end,
	})

	s26:splitter()

	if not s28 then
		s26:toggle({
			name = "KD",
			tooltip = "Displays players kill & death ratio",
			flag = s27 .. "_kd",
			callback = function(t16)
				r352.path(s27 .. ".kd_enabled", t16)
				r352.refresh(s28)
			end,
		}):configuration({ name = "KD Options" }, function(arg1)
			arg1:toggle({
				name = "Render Outline",
				flag = s27 .. "_kd_outline",
				default = true,
				callback = function(u35)
					r352.path(s27 .. ".outlines.kd_label.enabled", u35)
					r352.refresh(s28)
				end,
			}):colorpicker({
				name = "Outline Color",
				flag = s27 .. "_kd_outline_color",
				color = r116(0, 0, 0),
				callback = function(u31, u32)
					r352.path(s27 .. ".outlines.kd_label.color", u31)
					r352.path(s27 .. ".outlines.kd_label.transparency", 1 - u32)
					r352.refresh(s28)
				end,
			})
		end):colorpicker({
			name = "Text Color",
			flag = s27 .. "_kd_color",
			color = r116(255, 255, 255),
			callback = function(t34, t35)
				r352.path(s27 .. ".kd_color", t34)
				r352.path(s27 .. ".kd_transparency", 1 - t35)
				r352.refresh(s28)
			end,
		})

		s26:toggle({
			name = "Invisible",
			tooltip = "Displays if the player is invisible",
			flag = s27 .. "_invisible",
			callback = function(t2)
				r352.path(s27 .. ".invisible_enabled", t2)
				r352.refresh(s28)
			end,
		}):configuration({ name = "Invisible Options" }, function(arg1)
			arg1:toggle({
				name = "Render Outline",
				flag = s27 .. "_invisible_outline",
				default = true,
				callback = function(u22)
					r352.path(s27 .. ".outlines.invisible_label.enabled", u22)
					r352.refresh(s28)
				end,
			}):colorpicker({
				name = "Outline Color",
				flag = s27 .. "_invisible_outline_color",
				color = r116(0, 0, 0),
				callback = function(u18, u19)
					r352.path(s27 .. ".outlines.invisible_label.color", u18)
					r352.path(s27 .. ".outlines.invisible_label.transparency", 1 - u19)
					r352.refresh(s28)
				end,
			})
		end):colorpicker({
			name = "Text Color",
			flag = s27 .. "_invisible_color",
			color = r116(255, 255, 255),
			callback = function(t26, t27)
				r352.path(s27 .. ".invisible_color", t26)
				r352.path(s27 .. ".invisible_transparency", 1 - t27)
				r352.refresh(s28)
			end,
		})

		s26:toggle({
			name = "Desyncing",
			tooltip = "Displays if the player is desyncing",
			flag = s27 .. "_desyncing",
			callback = function(t33)
				r352.path(s27 .. ".desyncing_enabled", t33)
				r352.refresh(s28)
				return
			end,
		}):configuration({ name = "Desyncing Options" }, function(t33)
			t33:slider({
				name = "Threshold",
				min = 2,
				max = 6,
				default = 3,
				suffix = "st",
				interval = 0.1,
				flag = s27 .. "_desyncing_threshold",
				tooltip = "Adjusts the sensitivity of desync detection based on player movement in studs",
				callback = function(u17)
					r352.path(s27 .. ".desyncing_threshold", u17)
				end,
			})

			t33:splitter({ offset = 1 })

			t33:toggle({
				name = "Render Outline",
				flag = s27 .. "_desyncing_outline",
				default = true,
				callback = function(u34)
					r352.path(s27 .. ".outlines.desyncing_label.enabled", u34)
					r352.refresh(s28)
				end,
			}):colorpicker({
				name = "Outline Color",
				flag = s27 .. "_desyncing_outline_color",
				color = r116(0, 0, 0),
				callback = function(u4, u5)
					r352.path(s27 .. ".outlines.desyncing_label.color", u4)
					r352.path(s27 .. ".outlines.desyncing_label.transparency", 1 - u5)
					r352.refresh(s28)
				end,
			})
		end):colorpicker({
			name = "Text Color",
			flag = s27 .. "_desyncing_color",
			color = r116(255, 255, 255),
			callback = function(t12, t13)
				r352.path(s27 .. ".desyncing_color", t12)
				r352.path(s27 .. ".desyncing_transparency", 1 - t13)
				r352.refresh(s28)
			end,
		})
	end

	s26:toggle({
		name = "Visible",
		tooltip = "Displays if the models HumanoidRootPart is visible",
		flag = s27 .. "_visible",
		callback = function(t25)
			r352.path(s27 .. ".visible_enabled", t25)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Visible Options" }, function(arg1)
		arg1:toggle({
			name = "Render Outline",
			flag = s27 .. "_visible_outline",
			default = true,
			callback = function(u13)
				r352.path(s27 .. ".outlines.visible_label.enabled", u13)
				r352.refresh(s28)
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = s27 .. "_visible_outline_color",
			color = r116(0, 0, 0),
			callback = function(u19, u20)
				r352.path(s27 .. ".outlines.visible_label.color", u19)
				r352.path(s27 .. ".outlines.visible_label.transparency", 1 - u20)
				r352.refresh(s28)
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = s27 .. "_visible_color",
		color = r116(255, 255, 255),
		callback = function(t22, t23)
			r352.path(s27 .. ".visible_color", t22)
			r352.path(s27 .. ".visible_transparency", 1 - t23)
			r352.refresh(s28)
		end,
	})

	s26:dropdown({
		name = "Flag Font",
		scrolling = true,
		flag = s27 .. "_flags_font",
		items = r98,
		default = "Tahoma",
		callback = function(t25)
			r352.path(s27 .. ".fonts.flags.font", t25)
			r352.refresh(s28)
		end,
	})

	s26:splitter()

	s26:toggle({
		name = "Chams",
		flag = s27 .. "_chams",
		callback = function(t20)
			r352.path(s27 .. ".chams_enabled", t20)
			r352.refresh(s28)
		end,
	}):colorpicker({
		name = "Cham Color",
		flag = s27 .. "_chams_color",
		color = r116(255, 255, 255),
		callback = function(t2, t3)
			r352.path(s27 .. ".chams_color", t2)
			r352.path(s27 .. ".chams_transparency", 1 - t3)
			r352.refresh(s28)
		end,
	})

	s26:toggle({
		name = "Glow Chams",
		flag = s27 .. "_glow_chams",
		callback = function(t36)
			r352.path(s27 .. ".chams_glow_enabled", t36)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Glow Cham Options" }, function(t10)
		t10:dropdown({
			name = "Type",
			flag = s27 .. "_glow_cham_type",
			items = { "Default", "Occluded", "Shaded" },
			default = "Default",
			callback = function(u22)
				r352.path(s27 .. ".chams_glow_type", u22)
				r352.refresh(s28)
			end,
		})

		t10:slider({
			name = "Intensity",
			min = 1,
			max = 5,
			default = 1.5,
			interval = 0.01,
			flag = s27 .. "_glow_intensity",
			callback = function(u22)
				r352.path(s27 .. ".chams_glow_factor", u22)
				r352.refresh(s28)
			end,
		})
	end):colorpicker({
		name = "Cham Color",
		flag = s27 .. "_glow_chams_color",
		color = r116(255, 255, 255),
		callback = function(t31, t32)
			r352.path(s27 .. ".chams_glow_color", t31)
			r352.path(s27 .. ".chams_glow_transparency", 1 - t32)
			r352.refresh(s28)
		end,
	})

	s26:toggle({
		name = "Highlight Chams",
		flag = s27 .. "_highlight_chams",
		callback = function(t26)
			r352.path(s27 .. ".highlight.enabled", t26)
			r352.refresh(s28)
		end,
	}):configuration({ name = "Highlight Options" }, function(arg1)
		arg1:dropdown({
			name = "Type",
			flag = s27 .. "_highlight_depthmode",
			items = { "AlwaysOnTop", "Occluded" },
			default = "AlwaysOnTop",
			callback = function(u12)
				r352.path(s27 .. ".highlight.depthmode", u12)
				r352.refresh(s28)
			end,
		})
	end):colorpicker({
		name = "Fill Color",
		flag = s27 .. "_highlight_fill_color",
		color = r116(255, 255, 255),
		alpha = 0.5,
		callback = function(t31, t32)
			r352.path(s27 .. ".highlight.fill.color", t31)
			r352.path(s27 .. ".highlight.fill.transparency", 1 - t32)
			r352.refresh(s28)
		end,
	}):colorpicker({
		name = "Outline Color",
		flag = s27 .. "_highlight_outline_color",
		color = r116(255, 255, 255),
		alpha = 1,
		callback = function(t17, t18)
			r352.path(s27 .. ".highlight.outline.color", t17)
			r352.path(s27 .. ".highlight.outline.transparency", 1 - t18)
			r352.refresh(s28)
		end,
	})
end

r352.new_instance = function(s31, s32)
	local s1 = r352.instance_template(s32)
	local s34

	if s32 == "uaz" then
		s34 = "uaz"
	elseif s32 == "body" then
		s34 = s31.Name .. "'s corpse"
	elseif s32 == "item" then
		s34 = s31.Name
	elseif s32 == "exit" then
		s34 = "exit"
	else
		s34 = ""

		if s32 == "heli" then
			s34 = "MI24V"
		end
	end

	r377.tracked[s31] = { gui = s1, base_text = s34, element_type = s32 }

	if s32 == "heli" then
		r352.heli(s31)
	else
		s1.label.Text = r352.format_text(s34, r384.esp.text_case)
	end

	r352.refresh_custom()

	r100:connection(s31.AncestryChanged, function(arg1, arg2)
		if not arg2 then
			s1.label:Destroy()
			r377.tracked[s31] = nil
		end
	end)
end

r352.get_distance = function(R)
	local L = r384.esp
	if L.show_distance_format then
		return R .. L.distance_format
	end
	return r324(R)
end

r352.cache = function(s7)
	local s13 = {}

	if r155(s7, "Model") then
		local s15 = { HeadTopHitBox = true, LeftUpperArm = true, RightUpperArm = true, LeftFoot = true, RightFoot = true, LeftHand = true, RightHand = true }
		local s3, s4 = s7:GetChildren()

		for _, s4_1 in r1_2, s3, s4 do
			if r155(s4_1, "BasePart") and s15[s4_1.Name] then
				s13[#s13 + 1] = s4_1
			end
		end
	end

	r384.part_cache[s7] = s13
end

r352.get_bounding_box = function(s3, s4)
	local s29 = r384.esp

	if s29.box_type == "Dynamic" then
		local s31 = r315
		local s32 = r315
		local s33 = -r315
		local s35 = -r315
		local s37 = false
		local s38 = s29.dynamic_padding
		local s39 = r384.part_cache[s4]

		if not s39 then
			r352.cache(s4)
			s39 = r384.part_cache[s4]
		end

		local function s4_1(t15, arg2)
			if not arg2 then
				return
			end
			s37 = true

			if t15.X < s31 then
				s31 = t15.X
			end

			if s33 < t15.X then
				s33 = t15.X
			end

			if t15.Y < s32 then
				s32 = t15.Y
			end

			if s35 < t15.Y then
				s35 = t15.Y
			end
		end

		for s2 = 1, #s39 do
			local s5 = s39[s2]
			local s2_1 = s5.CFrame
			local s5_1 = s5.Size
			local s10 = s5_1.X * 0.5 * s38
			local s11 = s5_1.Y * 0.5 * s38
			local s12 = s5_1.Z * 0.5 * s38
			local s5_2, s6 = r290(r289, s2_1:PointToWorldSpace(r24(s10, s11, s12)))
			local s14, s15 = r290(r289, s2_1:PointToWorldSpace(r24(-s10, s11, s12)))
			local s16, s17 = r290(r289, s2_1:PointToWorldSpace(r24(s10, -s11, s12)))
			local s18, s19 = r290(r289, s2_1:PointToWorldSpace(r24(-s10, -s11, s12)))
			local s20, s21 = r290(r289, s2_1:PointToWorldSpace(r24(s10, s11, -s12)))
			local s22, s23 = r290(r289, s2_1:PointToWorldSpace(r24(-s10, s11, -s12)))
			local s24, s25 = r290(r289, s2_1:PointToWorldSpace(r24(s10, -s11, -s12)))
			local s26, s27 = r290(r289, s2_1:PointToWorldSpace(r24(-s10, -s11, -s12)))
			s4_1(s5_2, s6)
			s4_1(s14, s15)
			s4_1(s16, s17)
			s4_1(s18, s19)
			s4_1(s20, s21)
			s4_1(s22, s23)
			s4_1(s24, s25)
			s4_1(s26, s27)
		end

		if not s37 then
			return false
		end
		return true, (s31 + s33) * 0.5, (s32 + s35) * 0.5, r304(1, s33 - s31), (r304(4, s35 - s32))
	end

	local s2_2 = s29.box_size.Y
	local s24_1 = r24(0, s2_2 * 0.5, 0)
	local s26_1, s27_1 = r351.get_screen_pos(s3 + s24_1)
	if not s27_1 then
		return false
	end
	local s27_2, s28 = r351.get_screen_pos(s3 - s24_1)
	if not s28 then
		return false
	end
	local s9 = r304(4, r307(s26_1.Y - s27_2.Y) * 1.2)
	return true, (s26_1.X + s27_2.X) * 0.5, (s26_1.Y + s27_2.Y) * 0.5 + 2, r304(1, s9 * s29.box_size.X / s2_2), s9
end

r352.update_model = function(arg1, s36, s37, s38, s39)
	local s2, s3, s4, s5, s6 = r352.get_bounding_box(arg1, s39)

	if s2 then
		r351.set_property(s36, "Size", r22(0, s5, 0, s6))
		r351.set_property(s36, "Position", r22(0, s3 - s5 * 0.5, 0, s4 - s6 * 0.5))
		r351.set_property(s37, "Text", r352.get_distance(s38))

		if not s36.Visible then
			r351.set_visible(s36, true)
		end
	elseif s36.Visible then
		r351.set_visible(s36, false)
	end
end

r352.update_instance = function(s5, s6, s7, s8, s9)
	local s10, s11 = r351.get_screen_pos(r351.get_world_pos(s5))

	if s11 then
		r351.set_property(s6, "Position", r22(0, s10.X, 0, s10.Y - 15))

		if s7.distance then
			r351.set_property(s6, "Text", s8 .. " [" .. r352.get_distance(s9) .. "]")
		else
			r351.set_property(s6, "Text", s8)
		end

		if not s6.Visible then
			r351.set_visible(s6, true)
		end
	elseif s6.Visible then
		r351.set_visible(s6, false)
	end
end

r355.get_axis = function(s9, s10)
	local s3 = s9.spin[s10]
	return s3.enabled and s3.value or s9[s10]
end

r355.think = function()
	if not (r3_7 and r2_9) then
		return
	end
	local s8 = r384.misc.desync.position_spoofer
	local s15 = r384.misc.desync.rotation_spoofer
	local s13 = r5_1.CFrame
	r384.desync.old.position = s13

	if s8.enabled then
		s13 += s13:VectorToWorldSpace(r24(s8.x, s8.y, s8.z))
	end

	if s15.enabled then
		local s14 = r355.get_axis
		s13 *= r302(r314(r355.get_axis(s15, "pitch")), r314(r355.get_axis(s15, "yaw")), r314(s14(s15, "roll")))
	end

	r5_1.CFrame = s13
	r342:Wait()
	r5_1.CFrame = r384.desync.old.position
	local s6 = r5_1.AssemblyLinearVelocity
	local s14_1 = s6.Z
	r5_1.AssemblyLinearVelocity = r24(s6.X, r311(s6.Y, -99999, 19), s14_1)
end

r355.update_time_position = function()
	if r383.track then
		local s4 = r384.misc.desync.animations.time_position

		if s4 then
			r383.track.TimePosition = s4
		end
	end
end

r355.update_animation_speed = function()
	if r383.track then
		local s5 = r384.misc.desync.animations.speed

		if s5 then
			r383.track:AdjustSpeed(s5)
		end
	end
end

r355.update_animation = function()
	if not r2_9 or not r4_6 then
		return
	end
	local s9 = r384.misc.desync.animations.animation
	if not s9 or s9 == "" then
		return
	end

	if r383.animation_id ~= s9 or not r383.track then
		if r383.track then
			r383.track:Stop()
			r383.track:Destroy()
		end

		if r383.object then
			r383.object:Destroy()
		end

		r383.object = r100:create("Animation", { AnimationId = s9 })
		r383.track = r4_6:LoadAnimation(r383.object)
		r383.track.Looped = true
		r383.animation_id = s9
	end

	if r384.misc.desync.animations.enabled then
		if r383.track and not r383.track.IsPlaying then
			r383.track:Play()
		end

		r355.update_time_position()
		r355.update_animation_speed()
	elseif r383.track and r383.track.IsPlaying then
		r383.track:Stop()
	end
end

r354.fix_visualizer_clones = function()
	local function s13(t15, t16)
		for t2 = 1, #t16 do
			t15 = t15 and r26(t15, t16[t2])
			if not t15 then
				return nil
			end
		end

		return t15
	end

	local function s15(t27)
		if not t27 then
			return
		end
		local t26 = t27:FindFirstChildWhichIsA("Model")
		if not t26 then
			return
		end
		local t1 = r26(t26, "server")

		if t1 then
			t1:Destroy()
		end
	end

	local function s17(t13)
		if not t13 then
			return
		end
		s15(t13)

		r100:connection(t13.ChildAdded, function()
			r337(0.05)
			s15(t13)
		end)
	end

	local s5 = s13(r118, { "MainFrame", "BackpackFrame", "CharacterFrame", "Apparance", "ViewportFrame" })
	local s2 = s13(r120, { "MainFrame", "CharacterCreationFrame", "Frame", "ViewportFrame" })
	s17(s5)
	s17(s2)
end

r354.fix_visualizer_clones()

r354.hitsounds = function()
	r100:connection(r118.ChildAdded, function(t35)
		if not r155(t35, "Sound") then
			return
		end
		local t3 = r384.combat.visualization.hitsounds.head
		local t4 = r384.combat.visualization.hitsounds.body
		local t5 = r384.combat.visualization.hitsounds.kill
		local t37 = r100.hitsounds[t3.sound]
		local t1 = r100.hitsounds[t4.sound]
		local t2 = r100.hitsounds[t5.sound]
		local t6 = t35.SoundId
		local t8 = t3.enabled
		local t9

		if t8 then
			t9 = t6 == "rbxassetid://4585351098" or t6 == "rbxassetid://4585382589"
		else
			t9 = t8
		end

		if t9 then
			r351.set_property(t35, "SoundId", t37)
			r351.set_property(t35, "Volume", t3.volume)
			r351.set_property(t35, "PlaybackSpeed", t3.pitch)
		elseif t4.enabled and (t6 == "rbxassetid://4585382046" or t6 == "rbxassetid://4585364605") then
			r351.set_property(t35, "SoundId", t1)
			r351.set_property(t35, "Volume", t4.volume)
			r351.set_property(t35, "PlaybackSpeed", t4.pitch)
		elseif t5.enabled and t6 == "rbxassetid://9120454415" then
			r351.set_property(t35, "SoundId", t2)
			r351.set_property(t35, "Volume", t5.volume)
			r351.set_property(t35, "PlaybackSpeed", t5.pitch)
		end
	end)
end

r354.hitsounds()

r354.update_whiz = function()
	local s4 = r26(r27, "SFX") and r26(r27.SFX, "Whiz")
	if not s4 then
		return
	end
	local s2_1 = r384.visuals.local_self
	local s12 = s2_1.override_whiz and s2_1.whiz_volume or 2
	local s3, s4_1 = s4:GetChildren()

	for _, s4_2 in r1_2, s3, s4_1 do
		r351.set_property(s4_2, "Volume", s12)
	end
end

r354.update_ui = function()
	local s6 = r384.visuals.ui_hide

	for _, s4 in r1_2, s6.elements, nil do
		r351.set_enabled(r26(r119, s4), not (s6.enabled and s6.hide))
	end

	local s23 = r384.visuals.ui_removals
	if not s23 then
		return
	end
	local s17_1 = r26(r124, "InventoryBlur")
	local s18 = s6.enabled and s6.hide and r330(s6.elements, "MainGui")
	local s19 = s23.enabled and r330(s23.elements, "Inventory Blur")

	if s17_1 then
		r351.set_enabled(s17_1, not (s18 or s19))
	end

	local s14 = r26(r119, "NoInsetGui") and r26(r119.NoInsetGui, "MainFrame")
	if not s14 then
		return
	end
	local s3_1 = r26(r119, "MainGui") and r26(r119.MainGui, "MainFrame") and r26(r119.MainGui.MainFrame, "BackpackFrame")
	if not s3_1 then
		return
	end
	local s2_1 = r26(s14, "ScreenEffects")
	if not s2_1 then
		return
	end

	for s9_1, s10 in r1_2, {
		Visor = {
			s2_1.HelmetMask,
			s2_1.Visor,
			s2_1.Mask,
		},
		Parallax = {
			s2_1.Parallax.Parallax,
		},
		Flashbang = {
			s2_1.Flashbang.ImageLabel,
		},
	}, nil do
		local s18_1 = s23.enabled and r330(s23.elements, s9_1)

		for _, s14_1 in r1_2, s10, nil do
			if s14_1 then
				r351.set_visible(s14_1, not s18_1)
			end
		end
	end

	local s6_1 = r330(s23.elements, "Inventory Background")
	local s8_1 = r330(s23.elements, "Inventory Decoration")
	local s15, s16 = s3_1:GetChildren()

	for _, s16_1 in r1_2, s15, s16 do
		if r155(s16_1, "Frame") then
			if s23.enabled and s6_1 then
				r351.set_property(s16_1, "BackgroundTransparency", 1)
			else
				r351.set_property(s16_1, "BackgroundTransparency", 0.05)
			end

			local s17_2 = r26(s16_1, "Decor")

			if s23.enabled and s8_1 then
				r351.set_visible(s17_2, false)
			else
				r351.set_visible(s17_2, true)
			end
		end
	end

	local s4_1 = s23.enabled and r330(s23.elements, "Gas Mask")
	local s2_2 = r26(s2_1, "Mask") and r26(s2_1.Mask, "GP5") and r26(s2_1.Mask.GP5, "GasMask")

	if s2_2 then
		if s4_1 then
			if s2_2.IsPlaying then
				s2_2:Stop()
			end

			if not gas_mask_conn then
				gas_mask_conn = s2_2:GetPropertyChangedSignal("Playing"):Connect(function()
					if s2_2.IsPlaying and s4_1 then
						s2_2:Stop()
					end
				end)
			end
		elseif gas_mask_conn then
			gas_mask_conn:Disconnect()
			gas_mask_conn = nil
		end
	end
end

r354.update_terrain = function()
	if r28 then
		for _, s4 in r1_2, { "Grass", "Ground", "LeafyGrass", "Rock", "Sand" }, nil do
			if r384.terrain[s4] then
				local s9 = r384.terrain[s4]
				local s8 = r384.visuals.world.terrain_colors and r384.visuals.world.terrain_colors[s4]

				if s8 and s8.enabled and s8.color then
					r95.terrain:SetMaterialColor(Enum.Material[s4], s8.color)
				else
					r95.terrain:SetMaterialColor(Enum.Material[s4], s9)
				end
			end
		end
	end
end

r354.update_water_blur = function()
	local s9 = r384.misc.movement
	local s2 = r26(r124, "WaterBlur")

	if s9.no_drown and s2 then
		s2.Size = 0
	else
		s2.Size = 24
	end
end

r354.update_data = function()
	local s5 = r26(r119, "ServerInfo")
	if not s5 then
		return
	end
	local s4 = r26(s5, "Frame")
	if not s4 then
		return
	end
	local s16 = r384.visuals.data_spoofer
	local s6 = s4.serverInfo
	if not s6 then
		return
	end
	local s3 = r26(s4, "_serverInfo")

	if not s3 then
		s3 = s6:Clone()
		s3.Name = "_serverInfo"
		s3.Parent = s4
	end

	if not s16.enabled then
		s6.Visible = true
		s3.Visible = false
		s3.Text = s6.Text
		r351.set_visible(s4.DataLabel, true)
		r351.set_visible(s4.clientFPS, true)
		r351.set_visible(s4.serverFPS, true)
		return
	end

	s6.Visible = false
	s3.Visible = true
	local s10 = s6.Text

	if s16.server_info.spoof_version then
		s10 = s10:gsub("^[^|]+%s*|", "1.0 |")
	end

	if s16.server_info.spoof_userid then
		s10 = s10:gsub("|%s*#%d+", "| #1989")
	end

	if s16.server_info.spoof_location then
		s10 = s10:gsub("Server Location:%s*[^|]+", "Server Location: BT ")
	end

	if s16.server_info.spoof_server then
		s10 = s10:gsub("|%s*[^|]+%s*$", "| discord.gg/2ddVyDJ2C7")
	end

	s3.Text = s10
	r351.set_visible(s4.DataLabel, not s16.removals.hide_data)
	r351.set_visible(s4.clientFPS, not s16.removals.hide_client_fps)
	r351.set_visible(s4.serverFPS, not s16.removals.hide_server_fps)
end

r354.update_lighting = function()
	local s9 = r384.visuals.lighting

	if s9.override_ambient then
		r351.set_property(r124, "Ambient", s9.ambient)
		r351.set_property(r124, "OutdoorAmbient", s9.outdoor_ambient)
	end

	if s9.override_brightness then
		r351.set_property(r124, "Brightness", s9.brightness)
	end

	if s9.override_clocktime then
		r351.set_property(r124, "ClockTime", s9.clock_time)
	end
end

r354.update_atmosphere = function()
	if not r123 then
		return
	end
	local s10 = r384.visuals.lighting.atmosphere

	if s10.override_fog then
		r351.set_property(r123, "Density", s10.density)
		r351.set_property(r123, "Offset", s10.offset)
	end

	if s10.override_fog_colors then
		r351.set_property(r123, "Color", s10.color)
		r351.set_property(r123, "Decay", s10.decay)
	end

	if s10.override_glare then
		r351.set_property(r123, "Glare", s10.glare)
	end

	if s10.override_haze then
		r351.set_property(r123, "Haze", s10.haze)
	end
end

r354.update_bloom = function()
	if not r125 then
		return
	end
	local s10 = r384.visuals.lighting.bloom

	if s10.override_bloom then
		r351.set_property(r125, "Intensity", s10.intensity)
		r351.set_property(r125, "Size", s10.size)
		r351.set_property(r125, "Threshold", s10.threshold)
	end
end

r354.check_foliage = function(s7)
	if not s7 or not r155(s7, "MeshPart") then
		return
	end

	if s7.Color == r116(108, 88, 75) then
		r351.set_property(s7, "Transparency", r384.visuals.world.remove_trees and 1 or 0)
	else
		r351.set_property(s7, "Transparency", r384.visuals.world.remove_foliage and 1 or 0)
	end
end

r354.update_foliage = function()
	if not foliage then
		return
	end
	local s3, s4 = r371.foliage:GetDescendants()

	for _, s4_1 in r1_2, s3, s4 do
		r354.check_foliage(s4_1)
	end
end

r354.update_viewmodel = function()
	local s33 = r26(r289, "ViewModel")
	if not s33 then
		return
	end
	local s35 = r287(s33, "Highlight")
	local s41 = r384.visuals.viewmodel
	local s4 = r384.stored_surface_appearances
	local s13 = r384.original_arm_colors
	r384.viewmodel_cache = r384.viewmodel_cache or {}
	local s10 = r384.viewmodel_cache

	if s41.offset.enabled then
		local s32 = r26(s33, "HumanoidRootPart")

		if s32 then
			local s2, s3_1 = s32:GetChildren()

			for _, s3_2 in r1_2, s2, s3_1 do
				if r155(s3_2, "Motor6D") then
					if not s10[s3_2] then
						s10[s3_2] = s3_2.C0
					end

					s3_2.C0 = s10[s3_2] + r24(s41.offset.x, s41.offset.y, s41.offset.z)
				end
			end
		end
	end

	if not s41.enabled then
		for _, s3_3 in r1_2, s4, nil do
			for s7, s8 in r1_2, s3_3, nil do
				if s7 and s7.Parent then
					s8.surface.Parent = s8.parent
					r351.set_property(s7, "Material", Enum.Material.Plastic)
					r351.set_property(s7, "Color", r116(255, 255, 255))

					if s7.Transparency ~= 1 then
						r351.set_property(s7, "Transparency", 0)
						s7:SetAttribute("OriginalTransparency", s7.Transparency)
					end
				end
			end
		end

		s4.weapon = {}
		s4.clothing = {}

		for s10_1, s11 in r1_2, s13, nil do
			if s10_1 and s10_1.Parent then
				r351.set_property(s10_1, "Material", s11.material or Enum.Material.Plastic)
				r351.set_property(s10_1, "Color", s11.color or r116(255, 255, 255))
				r351.set_property(s10_1, "Transparency", s11.transparency or 0)
				s10_1:SetAttribute("OriginalTransparency", s10_1.Transparency)
			end
		end

		if s35 then
			s35:Destroy()
		end

		return
	end

	local s16, s17 = s33:GetChildren()
	local s2_3 = nil
	local s3_4 = nil

	for _, s17_1 in r1_2, s16, s17 do
		if r155(s17_1, "Model") then
			local s27 = s17_1:GetAttribute("ItemType")

			if s27 == "Shirt" then
				s2_3 = s17_1
			elseif s27 == "Gloves" then
				s3_4 = s17_1
			end
		end
	end

	local function s1_2(arg1)
		local t5, t6_1 = arg1:GetDescendants()

		for _, t6_2 in r1_2, t5, t6_1 do
			if r155(t6_2, "MeshPart") then
				local t8 = r287(t6_2, "SurfaceAppearance")

				if not s13[t6_2] then
					s13[t6_2] = {
						color = t6_2.Color,
						material = t6_2.Material,
						transparency = t6_2.Transparency,
					}
				end

				if s41.remove_clothing then
					r351.set_property(t6_2, "Transparency", 1)
					t6_2:SetAttribute("OriginalTransparency", t6_2.Transparency)
				elseif s41.arms_enabled then
					r351.set_property(t6_2, "Material", s41.arms_material)
					r351.set_property(t6_2, "Color", s41.arms_color)
					r351.set_property(t6_2, "Transparency", s41.arms_transparency)
					t6_2:SetAttribute("OriginalTransparency", t6_2.Transparency)

					if t8 and not s4.clothing[t6_2] then
						s4.clothing[t6_2] = {
							surface = t8,
							parent = t8.Parent,
						}

						t8.Parent = r278
					end
				else
					r351.set_property(t6_2, "Material", s13[t6_2].material)
					r351.set_property(t6_2, "Color", s13[t6_2].color)
					r351.set_property(t6_2, "Transparency", s13[t6_2].transparency or 0)
					t6_2:SetAttribute("OriginalTransparency", t6_2.Transparency)

					if s4.clothing[t6_2] then
						s4.clothing[t6_2].surface.Parent = s4.clothing[t6_2].parent
						s4.clothing[t6_2] = nil
					end
				end
			end
		end
	end

	if s2_3 then
		s1_2(s2_3)

		if s2_3.Name == "GhillieTorso" then
			for _, s20 in r1_2, { "LL", "LU", "RL", "RU" }, nil do
				local s29 = r26(s2_3, s20)

				if s29 and r155(s29, "MeshPart") then
					r351.set_property(s29, "TextureID", "")
				end
			end
		end
	end

	if s3_4 then
		s1_2(s3_4)
	end

	local s21, s22 = s33:GetChildren()

	for _, s22_1 in r1_2, s21, s22 do
		if r155(s22_1, "MeshPart") then
			if not s13[s22_1] then
				s13[s22_1] = {
					color = s22_1.Color,
					material = s22_1.Material,
					transparency = s22_1.Transparency,
				}
			end

			if s41.arms_enabled then
				r351.set_property(s22_1, "Material", s41.arms_material)
				r351.set_property(s22_1, "Color", s41.arms_color)
				r351.set_property(s22_1, "Transparency", s41.arms_transparency)
				s22_1:SetAttribute("OriginalTransparency", s22_1.Transparency)
			else
				r351.set_property(s22_1, "Material", s13[s22_1].material)
				r351.set_property(s22_1, "Color", s13[s22_1].color)
				r351.set_property(s22_1, "Transparency", s13[s22_1].transparency or 0)
				s22_1:SetAttribute("OriginalTransparency", s22_1.Transparency)
			end
		end
	end

	local s3_5 = r26(s33, "Item")

	if s3_5 and s41.weapon_enabled then
		local function s9_1(t19)
			if r155(t19, "MeshPart") and t19.MeshId ~= "" and t19.Transparency ~= 1 then
				local t20_1 = r287(t19, "SurfaceAppearance")

				if t20_1 and not s4.weapon[t19] then
					s4.weapon[t19] = {
						surface = t20_1,
						parent = t20_1.Parent,
					}

					t20_1.Parent = r278
				end

				r351.set_property(t19, "Material", s41.weapon_material)
				r351.set_property(t19, "Color", s41.weapon_color)
				r351.set_property(t19, "Transparency", s41.weapon_transparency)
				t19:SetAttribute("OriginalTransparency", t19.Transparency)
			end
		end

		local s1_3, s2_4 = s3_5:GetDescendants()

		for _, s27_1 in r1_2, s1_3, s2_4 do
			s9_1(s27_1)
		end

		local s1_4 = r26(s3_5, "Attachments")

		if s1_4 and r155(s1_4, "Folder") then
			r337(0.1)
			local s1_5, s2_5 = s1_4:GetDescendants()

			for _, s29_1 in r1_2, s1_5, s2_5 do
				s9_1(s29_1)
			end
		end
	else
		for s24, s25_1 in r1_2, s4.weapon, nil do
			if s24 and s24.Parent then
				s25_1.surface.Parent = s25_1.parent
				r351.set_property(s24, "Material", Enum.Material.Plastic)
				r351.set_property(s24, "Color", r116(255, 255, 255))
				r351.set_property(s24, "Transparency", s24:GetAttribute("OriginalTransparency") or 0)
			end
		end

		s4.weapon = {}
	end

	s35 = s35 or r7("Highlight", {
		Enabled = false,
		DepthMode = Enum.HighlightDepthMode.Occluded,
		FillColor = r116(255, 98, 127),
		FillTransparency = 0,
		OutlineColor = r116(255, 98, 127),
		OutlineTransparency = 0,
		Parent = s33,
	})

	if s41.enabled then
		r351.set_enabled(s35, s41.highlight.enabled)
		r351.set_property(s35, "FillColor", s41.highlight.fill.color)
		r351.set_property(s35, "FillTransparency", s41.highlight.fill.transparency * s41.highlight.fill.multiplier)
		r351.set_property(s35, "OutlineColor", s41.highlight.outline.color)
		r351.set_property(s35, "OutlineTransparency", s41.highlight.outline.transparency * s41.highlight.outline.multiplier)
	end
end

r354.update_camera = function()
	local s17 = r384.visuals.local_self.aspect_ratio

	if s17.enabled then
		local s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14 = r289.CFrame:GetComponents()
		r289.CFrame = r303(s3, s4, s5, s6 * s17.horizontal / 100, s7 * s17.vertical / 100, s8, s9, s10 * s17.vertical / 100, s11, s12 * s17.horizontal / 100, s13 * s17.vertical / 100, s14)
	end
end

r354.preview_sound = function(arg1, arg2, arg3)
	local s3 = nil

	local s1 = r7("Sound", {
		SoundId = arg1,
		Volume = arg2,
		PlaybackSpeed = arg3,
		Parent = gethui(),
	})

	s1:Play()

	s3 = r100:connection(s1.Ended, function()
		s1:Destroy()
		r100:disconnect(s3)
	end)
end

r354.desync_visualizer = function()
	r354.joint_map = nil

	if r384.server_character then
		r384.server_character:Destroy()
		r384.server_character = nil
	end

	r3_7:WaitForChild("HumanoidRootPart")
	local s19 = {}
	r384.server_character = r7("Model", { Name = "server", Parent = r3_7 })
	local s10 = {}
	local s3, s4 = r3_7:GetChildren()

	for _, s4_1 in r1_2, s3, s4 do
		if r155(s4_1, "BasePart") and s4_1.Name ~= "FaceHitBox" and s4_1.Name ~= "HeadTopHitBox" then
			local s11_1 = r7("Part", {
				Name = s4_1.Name,
				Size = s4_1.Size,
				CFrame = s4_1.CFrame,
				Anchored = false,
				CanCollide = false,
				Transparency = 1,
				Parent = r384.server_character,
			})

			s10[s4_1] = s11_1

			if s4_1.Name ~= "HumanoidRootPart" then
				local s12 = r7("BoxHandleAdornment", {
					Adornee = s11_1,
					Size = s4_1.Size,
					Color3 = r116(255, 98, 127),
					Transparency = 0,
					AlwaysOnTop = true,
					ZIndex = 1,
					Shading = Enum.AdornShading.XRay,
					Parent = s11_1,
				})

				r327(s19, s12)
			end
		end
	end

	local s4_2 = {}

	for s7, s8 in r1_2, s10, nil do
		local s12_1, s13 = s7:GetChildren()

		for _, s13_1 in r1_2, s12_1, s13 do
			if r155(s13_1, "Motor6D") and s13_1.Part0 and s13_1.Part1 and s10[s13_1.Part0] and s10[s13_1.Part1] then
				r327(s4_2, {
					real = s13_1,
					clone = r7("Motor6D", {
						Name = s13_1.Name,
						Part0 = s10[s13_1.Part0],
						Part1 = s10[s13_1.Part1],
						C0 = s13_1.C0,
						C1 = s13_1.C1,
						Parent = s8,
					}),
				})
			end
		end
	end

	local s2_1 = s10[r3_7.HumanoidRootPart]
	s2_1.Anchored = true
	r384.server_character.PrimaryPart = s2_1

	r7("Humanoid", {
		Parent = r384.server_character,
	})

	r354.joint_map = s4_2
	return s19
end

do
	local r1333 = r354.desync_visualizer()

	r354.reset_animations = function()
		for s3, s4 in r1_2, r383.by_track, nil do
			if s4 then
				s4:Stop(0)
			end

			r383.by_track[s3] = nil
		end
	end

	r354.update_visualizer_cframe = function()
		local s14 = r384.server_character
		local s16 = r384.misc.desync.visualization.server
		if not s14 or not s16.enabled or not s14.PrimaryPart then
			return
		end
		local s5 = r26(r25, r97.Name)
		if not s5 then
			return
		end
		local s4 = r26(s5, "Status")
		if not s4 then
			return
		end
		local s6 = r26(s4, "UAC")
		if not s6 then
			return
		end
		local s2_1 = s6:GetAttribute("LastVerifiedPos")
		if not s2_1 then
			return
		end
		local s7 = r26(r3_7, "HumanoidRootPart")
		if not s7 then
			return
		end
		local s3_1 = s7.Rotation
		local s12 = r303(s2_1) * r302(r314(s3_1.X), r314(s3_1.Y), r314(s3_1.Z))
		local s2_2 = r384.misc.desync.rotation_spoofer

		if s2_2.enabled then
			local s3_2 = s2_2.spin
			local s4_1 = s3_2.pitch
			local s5_1 = s3_2.yaw
			local s3_3 = s3_2.roll
			s12 *= r302(r314(s4_1.enabled and s4_1.value or s2_2.pitch or 0), r314(s5_1.enabled and s5_1.value or s2_2.yaw or 0), r314(s3_3.enabled and s3_3.value or s2_2.roll or 0))
		end

		local s4_5 = s14.PrimaryPart

		if s16.use_tween then
			local s9 = r384.current_visualizer_tween

			if s9 then
				s9:Cancel()
			end

			r384.current_visualizer_tween = r179:Create(s4_5, r178(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { CFrame = s12 })
			r384.current_visualizer_tween:Play()
		else
			r351.set_property(s4_5, "CFrame", s12)
		end
	end

	r354.update_visualizer = function()
		if not r1333 then
			return
		end
		local s20 = r384.misc.desync.visualization.server
		local s2 = s20.color
		local s3 = s2.c
		local s4 = s2.f
		local s16 = s2.t
		local s7 = s3.R * 255 * s4
		local s8 = s3.G * 255 * s4
		local s9 = s3.B * 255 * s4

		local s17 = ({
			Default = Enum.AdornShading.XRay,
			Flat = Enum.AdornShading.Default,
			Shaded = Enum.AdornShading.XRayShaded,
		})[s20.cham_type]

		for _, s4_1 in r1_2, r1333, nil do
			local s6 = s20.enabled

			if s6 then
				s6 = not (s20.third_person_only and not r384.visuals.local_self.third_person)
			end

			r351.set_visible(s4_1, s6)
			r351.set_property(s4_1, "Color3", r116(s7, s8, s9))
			r351.set_property(s4_1, "Transparency", s16)

			if s17 then
				r351.set_property(s4_1, "Shading", s17)
			end
		end
	end

	r354.update_visualizer()

	r354.create_sline = function()
		r379.screen_gui = r7("ScreenGui", {
			Enabled = true,
			DisplayOrder = 9999999,
			IgnoreGuiInset = true,
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Global,
			Parent = gethui(),
		})

		r379.snapline_holder = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BackgroundColor3 = r116(255, 255, 255),
			BorderSizePixel = 0,
			Position = r22(0.5, 0, 0.5, 0),
			Size = r295(0, r384.combat.visualization.snapline_thickness),
			Visible = false,
			Parent = r379.screen_gui,
		})

		r379.snapline_gradient = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 98, 127)),
				r300(1, r116(203, 79, 104)),
			}),
			Parent = r379.snapline_holder,
		})

		r379.snapline_stroke = r7("UIStroke", {
			Enabled = true,
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = r379.snapline_holder,
		})
	end

	r354.create_sline()

	r354.create_fov = function()
		r378.screen_gui = r7("ScreenGui", {
			Enabled = true,
			IgnoreGuiInset = true,
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Global,
			Parent = gethui(),
		})

		r378.fov_holder = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = r22(0.5, 0, 0.5, 0),
			Size = r22(0, 150, 0, 150),
			Parent = r378.screen_gui,
		})

		r378.fov_fill = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = r22(0.5, 0, 0.5, 0),
			Size = r22(1, 2, 1, 2),
			ZIndex = 2,
			Parent = r378.fov_holder,
		})

		local s5 = 1

		r378.fov_fill_gradient = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 98, 127)),
				r300(s5, r116(203, 79, 104)),
			}),
			Parent = r378.fov_fill,
		})

		r378.fill_ui_corner = r7("UICorner", {
			CornerRadius = r293(0, 1000),
			Parent = r378.fov_fill,
		})

		r378.fill_ui_stroke = r7("UIStroke", {
			Enabled = true,
			Color = r116(255, 255, 255),
			Thickness = 1,
			Parent = r378.fov_fill,
		})

		r378.fill_gradient = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 98, 127)),
				r300(1, r116(203, 79, 104)),
			}),
			Parent = r378.fill_ui_stroke,
		})

		r378.fov_outline = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = r22(0.5, 0, 0.5, 0),
			Size = r22(1, 0, 1, 0),
			Parent = r378.fov_holder,
		})

		r378.outline_ui_corner = r7("UICorner", {
			CornerRadius = r293(0, 1000),
			Parent = r378.fov_outline,
		})

		r378.outline_ui_stroke = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 3,
			Parent = r378.fov_outline,
		})

		r378.glow = r7("ImageLabel", {
			AnchorPoint = r23(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = r22(0.5, 0, 0.5, 0),
			Size = r22(1.245, 0, 1.245, 0),
			ImageColor3 = r116(255, 255, 255),
			Image = r100.images["Fov Glow"],
			ZIndex = 0,
			Parent = r378.fov_holder,
		})

		local s8 = 1

		r378.glow_gradient = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 98, 127)),
				r300(1, r116(203, s8, 104)),
			}),
			Transparency = r301({
				r144(0, 0.5),
				r144(s8, 0.5),
			}),
			Parent = r378.glow,
		})
	end

	r354.create_fov()

	r354.create_crosshair = function()
		r380.screen_gui = r7("ScreenGui", {
			Enabled = true,
			DisplayOrder = 9999999,
			IgnoreGuiInset = true,
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Global,
			Parent = gethui(),
		})

		r380.crosshair_holder = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = r22(0.5, 0, 0.5, 0),
			Size = r22(0, 50, 0, 50),
			Parent = r380.screen_gui,
		})

		r380.spoke_top = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = r116(255, 255, 255),
			Position = r22(0.5, 0, 0, 0),
			Size = r22(0, 1, 0, 38),
			ZIndex = 5,
			Parent = r380.crosshair_holder,
		})

		local s7 = 255

		r380.spoke_gradient_top = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 72, 118)),
				r300(1, r116(s7, 72, 118)),
			}),
			Rotation = 90,
			Parent = r380.spoke_top,
		})

		r380.top_outline = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = r380.spoke_top,
		})

		r380.spoke_right = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = r116(255, 255, 255),
			Position = r22(1, 0, 0.5, 0),
			Size = r22(0, 38, 0, 1),
			ZIndex = 5,
			Parent = r380.crosshair_holder,
		})

		local s5 = 1

		r380.spoke_gradient_right = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 72, 118)),
				r300(s5, r116(255, 72, 118)),
			}),
			Rotation = -180,
			Parent = r380.spoke_right,
		})

		r380.right_outline = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = r380.spoke_right,
		})

		r380.spoke_bottom = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = r116(255, 255, 255),
			Position = r22(0.5, 0, 1, 0),
			Size = r22(0, 1, 0, 38),
			ZIndex = 5,
			Parent = r380.crosshair_holder,
		})

		r380.spoke_gradient_bottom = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 72, 118)),
				r300(1, r116(255, 72, 118)),
			}),
			Rotation = -90,
			Parent = r380.spoke_bottom,
		})

		r380.bottom_outline = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = r380.spoke_bottom,
		})

		r380.spoke_left = r7("Frame", {
			AnchorPoint = r23(0.5, 0.5),
			BorderSizePixel = 0,
			BackgroundColor3 = r116(255, 255, 255),
			Position = r22(0, 0, 0.5, 0),
			Size = r22(0, 38, 0, 1),
			ZIndex = 5,
			Parent = r380.crosshair_holder,
		})

		local s7_1 = 255

		r380.spoke_gradient_left = r7("UIGradient", {
			Color = r299({
				r300(0, r116(255, 72, 118)),
				r300(1, r116(s7_1, 72, 118)),
			}),
			Rotation = 0,
			Parent = r380.spoke_left,
		})

		r380.left_outline = r7("UIStroke", {
			Color = r116(0, 0, 0),
			Thickness = 1,
			LineJoinMode = Enum.LineJoinMode.Miter,
			Parent = r380.spoke_left,
		})
	end

	r354.create_crosshair()

	r354.update_character = function()
		local s13 = r97.Character
		if not s13 then
			return
		end
		local s21 = r384.character_cache
		local s23 = r384.visuals.local_self

		if not s23.player_chams then
			for s3 in r1_2, s21.transparency, nil do
				if s3 and s3.Parent then
					r351.set_property(s3, "Transparency", s21.transparency[s3])
					r351.set_property(s3, "Color", s21.color[s3])
					r351.set_property(s3, "Material", s21.material[s3])
				end
			end

			for s3_1, s4_1 in r1_2, s21.surface_appearances, nil do
				if s4_1 and s3_1 then
					s4_1.Parent = s3_1
				end
			end

			s21.surface_appearances = {}
			return
		end

		local s5, s6 = s13:GetChildren()

		for _, s6_1 in r1_2, s5, s6 do
			if r155(s6_1, "MeshPart") and s6_1.Name ~= "FaceHitBox" and s6_1.Name ~= "HeadTopHitBox" then
				if not s21.transparency[s6_1] then
					s21.transparency[s6_1] = s6_1.Transparency
					s21.color[s6_1] = s6_1.Color
					s21.material[s6_1] = s6_1.Material
				end

				r351.set_property(s6_1, "Transparency", s23.player_transparency)
				r351.set_property(s6_1, "Color", s23.player_color)
				r351.set_property(s6_1, "Material", Enum.Material[s23.player_material] or s6_1.Material)
			end
		end

		local s5_4, s6_2 = s13:GetChildren()

		for _, s8 in r1_2, s5_4, s6_2 do
			if r155(s8, "Model") and s8:GetAttribute("ItemType") then
				local s15, s16 = s8:GetChildren()

				for _, s11 in r1_2, s15, s16 do
					if r155(s11, "MeshPart") then
						if not s21.transparency[s11] then
							s21.transparency[s11] = s11.Transparency
							s21.color[s11] = s11.Color
							s21.material[s11] = s11.Material
						end

						if s23.remove_clothing then
							r351.set_property(s11, "Transparency", 1)
							r351.set_property(s13.Pants, "PantsTemplate", "rbxassetid://0")
							r351.set_property(s13.Shirt, "ShirtTemplate", "rbxassetid://0")
						else
							r351.set_property(s11, "Transparency", s23.player_transparency)
							r351.set_property(s11, "Color", s23.player_color)
							r351.set_property(s11, "Material", Enum.Material[s23.player_material] or s11.Material)
							r351.set_property(s13.Pants, "PantsTemplate", "rbxassetid://224941104")
							r351.set_property(s13.Shirt, "ShirtTemplate", "rbxassetid://5812338094")
						end

						local s14_3 = r287(s11, "SurfaceAppearance")

						if s14_3 then
							s21.surface_appearances[s11] = s14_3
							s14_3.Parent = r278
						end
					end
				end
			end
		end
	end

	r354.update_snapline = function()
		local s10 = r384.combat.visualization
		r351.set_enabled(r379.screen_gui, s10.snapline_enabled)
		r351.set_visible(r379.snapline_holder, r384.combat.aiming.silent_aim)
		if not s10.snapline_enabled then
			return
		end
		local s6 = s10.snapline_color_2

		local s5 = r299({
			r300(0, s10.snapline_color_1),
			r300(1, s6),
		})

		r351.set_property(r379.snapline_gradient, "Color", s5)
		local s6_1 = s10.snapline_transparency_2

		local s5_1 = r301({
			r144(0, s10.snapline_transparency_1),
			r144(1, s6_1),
		})

		r351.set_property(r379.snapline_gradient, "Transparency", s5_1)
		r351.set_enabled(r379.snapline_stroke, s10.snapline_outline)
		r351.set_property(r379.snapline_stroke, "Color", s10.snapline_outline_color)
		r351.set_property(r379.snapline_stroke, "Transparency", s10.snapline_outline_transparency)
	end

	r354.update_fov = function()
		local s14 = r384.combat.visualization
		r351.set_enabled(r378.screen_gui, s14.fov_enabled)
		r351.set_property(r378.fov_holder, "Size", r22(0, r384.combat.aiming.fov_radius * 2, 0, r384.combat.aiming.fov_radius * 2))
		r351.set_property(r378.fov_fill, "BackgroundTransparency", s14.fov_fill and 0 or 1)
		local s11_1 = 1
		local s12 = s14.fov_fill_color_2

		local s11_2 = r299({
			r300(0, s14.fov_fill_color_1),
			r300(s11_1, s12),
		})

		r351.set_property(r378.fov_fill_gradient, "Color", s11_2)
		local s12_1 = s14.fov_fill_transparency_2

		local s11_3 = r301({
			r144(0, s14.fov_fill_transparency_1),
			r144(1, s12_1),
		})

		r351.set_property(r378.fov_fill_gradient, "Transparency", s11_3)
		local s12_2 = s14.fov_color_2

		local s11_4 = r299({
			r300(0, s14.fov_color_1),
			r300(1, s12_2),
		})

		r351.set_property(r378.fill_gradient, "Color", s11_4)
		local s12_3 = s14.fov_transparency_2

		local s11_5 = r301({
			r144(0, s14.fov_transparency_1),
			r144(1, s12_3),
		})

		r351.set_property(r378.fill_gradient, "Transparency", s11_5)
		r351.set_enabled(r378.outline_ui_stroke, s14.fov_outline)
		r351.set_property(r378.outline_ui_stroke, "Color", s14.fov_outline_color)
		r351.set_property(r378.outline_ui_stroke, "Transparency", s14.fov_outline_transparency)
		r351.set_visible(r378.glow, s14.fov_fill_glow)
		local s11_6 = 1
		local s12_4 = s14.fill_glow_color_2

		local s11_7 = r299({
			r300(0, s14.fill_glow_color_1),
			r300(s11_6, s12_4),
		})

		r351.set_property(r378.glow_gradient, "Color", s11_7)
		local s12_5 = s14.fill_glow_transparency_2

		local s11_8 = r301({
			r144(0, s14.fill_glow_transparency_1),
			r144(1, s12_5),
		})

		r351.set_property(r378.glow_gradient, "Transparency", s11_8)
		r351.set_property(r378.fill_ui_stroke, "Thickness", s14.thickness)
		r351.set_property(r378.outline_ui_stroke, "Thickness", 2 + s14.thickness)

		if not s14.spin_gradients then
			r351.set_property(r378.fov_fill_gradient, "Rotation", 0)
			r351.set_property(r378.fill_gradient, "Rotation", 0)
			r351.set_property(r378.glow_gradient, "Rotation", 0)
		end
	end

	r354.update_crosshair = function()
		local s36 = r384.visuals.crosshair
		r351.set_enabled(r380.screen_gui, s36.enabled)
		local s4 = s36.gap
		local s20 = s36.length
		local s18 = s36.width
		local s3 = r380.crosshair_holder
		r351.set_property(s3, "Size", r22(0, s20 + s4, 0, s20 + s4))

		if not s36.spin then
			r351.set_property(s3, "Rotation", s36.rotation)
		end

		if s36.position == "Center" then
			r351.set_property(s3, "Position", r22(0.5, 0, 0.5, 0))
		end

		local s2 = r380.spoke_gradient_top
		local s3_1 = r380.spoke_gradient_right
		local s4_1 = r380.spoke_gradient_bottom
		local s15 = r380.spoke_gradient_left
		local s9 = s36.color_2

		local s14 = r299({
			r300(0, s36.color_1),
			r300(1, s9),
		})

		local s8 = 1
		local s9_1 = s36.color_transparency_2

		local s5 = r301({
			r144(0, s36.color_transparency_1),
			r144(s8, s9_1),
		})

		r351.set_property(s2, "Color", s14)
		r351.set_property(s3_1, "Color", s14)
		r351.set_property(s4_1, "Color", s14)
		r351.set_property(s15, "Color", s14)
		r351.set_property(s2, "Transparency", s5)
		r351.set_property(s3_1, "Transparency", s5)
		r351.set_property(s4_1, "Transparency", s5)
		r351.set_property(s15, "Transparency", s5)
		r351.set_property(r380.spoke_top, "Size", r22(0, s18, 0, s20))
		r351.set_property(r380.spoke_bottom, "Size", r22(0, s18, 0, s20))
		r351.set_property(r380.spoke_left, "Size", r22(0, s20, 0, s18))
		r351.set_property(r380.spoke_right, "Size", r22(0, s20, 0, s18))
		local s18_1 = r380.top_outline
		local s22 = r380.right_outline
		local s27 = r380.bottom_outline
		local s32 = r380.left_outline
		r351.set_enabled(s18_1, s36.outline)
		r351.set_enabled(s22, s36.outline)
		r351.set_enabled(s27, s36.outline)
		r351.set_enabled(s32, s36.outline)
		r351.set_property(s18_1, "Color", s36.outline_color)
		r351.set_property(s22, "Color", s36.outline_color)
		r351.set_property(s27, "Color", s36.outline_color)
		r351.set_property(s32, "Color", s36.outline_color)
		r351.set_property(s18_1, "Transparency", s36.outline_transparency)
		r351.set_property(s22, "Transparency", s36.outline_transparency)
		r351.set_property(s27, "Transparency", s36.outline_transparency)
		r351.set_property(s32, "Transparency", s36.outline_transparency)
	end

	r354.update_reports = function()
		local s8 = r384.misc.notifications.report

		if s8.enabled then
			r100:notification({
				text = "You have been reported! Current report count: " .. (r370:GetAttribute(r384.reports.attribute) or 1),
				flashing = s8.flashing,
				time = s8.duration,
				sound = s8.sound,
				volume = s8.volume,
			})
		end
	end

	r354.update_report_count = function()
		local s3 = r370:GetAttribute(r384.reports.attribute) or 0
		local s2_1 = s3 > 0

		if s2_1 then
			s2_1 = "You have been reported " .. s3 .. " time" .. (s3 == 1 and "" or "s") .. "!"
		end

		r100:notification({
			text = s2_1 or "You have not been reported",
			flashing = r384.misc.notifications.report.flashing,
			time = r384.misc.notifications.report.duration,
		})
	end

	r354.log_player_action = function(s5, s6)
		local s14 = r384.misc.notifications[s6]
		if not s14.enabled then
			return
		end
		local s4_2

		if s6 == "join" then
			local s6_1 = r25:WaitForChild(s5.Name, 15)
			local s2 = nil
			local s18 = nil

			if s6_1 then
				local s6_2 = s6_1:WaitForChild("Status", 15)
				s2 = nil
				s18 = nil

				if s6_2 then
					local s6_3 = s6_2:WaitForChild("Journey", 15)
					s2 = nil
					s18 = nil

					if s6_3 then
						local s6_4 = s6_3:WaitForChild("Statistics", 15)
						s2 = nil
						s18 = nil

						if s6_4 then
							r337(1)
							local s7 = s6_4:GetAttribute("K_PVP")
							local s8 = s6_4:GetAttribute("D_PVP")
							local s9 = s6_4:GetAttribute("TimePlayed")
							local s4 = s7 and s8 and s9
							s2 = nil
							s18 = nil

							if s4 then
								s2 = nil

								if s14.kd then
									local s4_1 = s7 == 0 and 0
									local s12

									if s4_1 then
										s12 = s4_1
									else
										s12 = s7 / (s8 == 0 and 1 or s8)
									end

									s2 = r323("%.2f", s12)
								end

								s18 = nil

								if s14.hours_played then
									s18 = r324(r310(s9 / 3600 * 100) / 100)
								end
							end
						end
					end
				end
			end

			s4_2 = s5.Name .. " has joined the game"

			if s2 and s18 then
				s4_2 ..= " (KD: " .. s2 .. " / Time Played: " .. s18 .. "h)"
			elseif s2 then
				s4_2 ..= " (KD: " .. s2 .. ")"
			elseif s18 then
				s4_2 ..= " (Time Played: " .. s18 .. "h)"
			end
		else
			s4_2 = s5.Name .. " has left the game"
		end

		r100:notification({
			text = s4_2,
			flashing = s14.flashing,
			time = s14.duration,
		})
	end

	r354.draw_snapline = function(s15)
		if not r384.combat.visualization.snapline_enabled or not s15 then
			r351.set_property(r379.snapline_holder, "Visible", false)
			return
		end
		local s2_1 = r289.ViewportSize
		local s16 = r23(s2_1.X / 2, s2_1.Y / 2)
		local s17, s18 = r351.get_screen_pos(s15.Position)

		if s18 then
			local s2_2 = r23(s17.X, s17.Y)

			if (s2_2 - s16).Magnitude <= r384.combat.aiming.fov_radius then
				local s4 = s2_2 - s16
				local s12 = (s2_2 + s16) / 2
				local s16_1 = s4.Magnitude
				local s5 = r312(r313(s4.Y, s4.X))
				r351.set_property(r379.snapline_holder, "Position", r295(s12.X, s12.Y))
				r351.set_property(r379.snapline_holder, "Rotation", s5)
				r351.set_property(r379.snapline_holder, "Size", r295(s16_1, r384.combat.visualization.snapline_thickness))
				r351.set_property(r379.snapline_holder, "Visible", true)
				return
			end
		end

		r351.set_property(r379.snapline_holder, "Visible", false)
	end

	r354.create_tracer = function(s17)
		r336(function()
			local t15 = r351.get_head_pos()
			if not t15 then
				return
			end
			local t17 = r384.combat.visualization.bullet_tracers

			local t7 = r7("Part", {
				Anchored = true,
				Size = r24(0.01, 0.01, 0.01),
				Position = t15.Position,
				CanCollide = false,
				CanQuery = false,
				Transparency = 1,
				Parent = r371.no_collision,
			})

			local t4 = r7("Part", {
				Anchored = true,
				Size = r24(0.01, 0.01, 0.01),
				Position = s17,
				CanCollide = false,
				CanQuery = false,
				Transparency = 1,
				Parent = r371.no_collision,
			})

			local t9 = r7("Attachment", { Parent = t7 })
			local t10 = r7("Attachment", { Parent = t4 })
			local t18 = t17.randomize_curve and (r308(0, 1) == 0 and -r307(t17.curve_1) or r307(t17.curve_1)) or t17.curve_1
			local t2 = t17.randomize_curve

			if t2 then
				local t3 = 0
				t2 = r308(0, 1) == t3 and -r307(t17.curve_2) or r307(t17.curve_2)
			end

			local t13 = t2 or t17.curve_2
			local t12 = t17.transparency_2

			local t10_1 = r7("Beam", {
				Attachment0 = t9,
				Attachment1 = t10,
				Color = r299({
					r300(0, t17.color_1),
					r300(1, t12),
				}),
				Width0 = t17.width,
				Width1 = t17.width,
				FaceCamera = true,
				Transparency = r301({
					r144(0, t17.transparency_1),
					r144(1, t12),
				}),
				LightEmission = 1,
				Texture = t17.bullet_textures[t17.texture],
				TextureSpeed = t17.texture_speed,
				TextureLength = r292(s17 - t15.Position),
				Segments = t17.segments,
				CurveSize0 = t18,
				CurveSize1 = t13,
				Parent = t7,
			})

			r337(t17.lifetime)

			for t2_1 = 0, 1, 0.1 do
				t10_1.Transparency = r301(t2_1)
				r337()
			end

			t7:Destroy()
			t4:Destroy()
			return
		end)
	end

	r354.create_hitmarker = function(s17)
		r336(function()
			local t20 = r384.combat.visualization.hitmarkers

			local t7 = r7("Part", {
				Anchored = true,
				Size = r24(0.1, 0.1, 0.1),
				Position = s17,
				CanCollide = false,
				CanQuery = false,
				Transparency = 1,
				Parent = r371.no_collision,
			})

			local t9 = r7("BillboardGui", {
				Size = r22(0, 10, 0, 10),
				AlwaysOnTop = true,
				Enabled = true,
				LightInfluence = 0,
				Adornee = t7,
				Parent = t7,
			})

			local t11 = r7("ImageLabel", {
				Size = r22(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = r100.images.hitmarkers[t20.image],
				ImageTransparency = t20.transparency,
				ImageColor3 = t20.color,
				ResampleMode = Enum.ResamplerMode.Pixelated,
				ZIndex = 99999,
				Parent = t9,
			})

			local t13 = r7("ImageLabel", {
				Visible = t20.outline,
				Size = r22(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = r100.images.hitmarkers["Outline " .. t20.image],
				ImageTransparency = t20.outline_transparency,
				ImageColor3 = t20.outline_color,
				ResampleMode = Enum.ResamplerMode.Pixelated,
				ZIndex = 99999,
				Parent = t11,
			})

			r337(t20.lifetime)

			for t2 = t11.ImageTransparency + 0.1, 1, 0.1 do
				t11.ImageTransparency = t2
				t13.ImageTransparency = t2
				r337()
			end

			t11.ImageTransparency = 1
			t13.ImageTransparency = 1
			t7:Destroy()
		end)
	end

	r354.create_impact = function(s6)
		r336(function()
			local t5 = r384.combat.visualization.bullet_impacts

			local t10 = r7("Part", {
				Anchored = true,
				Material = Enum.Material[t5.material],
				Color = t5.color,
				Size = r24(0.5, 0.5, 0.5),
				Position = s6,
				CanCollide = false,
				CanQuery = false,
				Transparency = start_transparency,
				Parent = r371.no_collision,
			})

			r337(t5.lifetime)

			for t5_1 = t10.Transparency + 0.1, 1, 0.1 do
				t10.Transparency = t5_1
				r337()
			end

			t10.Transparency = 1
			t10:Destroy()
		end)
	end

	r354.create_vfx = function(s32)
		r336(function()
			local t13 = r384.combat.visualization.hit_vfx

			local t10 = r7("Part", {
				Anchored = true,
				Size = r24(0.1, 0.1, 0.1),
				Position = s32,
				CanCollide = false,
				CanQuery = false,
				Transparency = 1,
				Parent = r371.no_collision,
			})

			local t5 = {}
			local t3 = t13.particles or {}

			for _, t4 in r1_2, t3, nil do
				local t6 = r1276[t4:lower()]:Clone()
				t6.Parent = t10
				t6.Enabled = true

				if t13.rate then
					t6.Rate = t13.rate
				end

				if t13.color then
					t6.Color = r299(t13.color)
				end

				r327(t5, t6)
			end

			r337(t13.lifetime or 0.3)

			for _, t4_1 in r1_2, t5, nil do
				t4_1.Enabled = false
			end

			r337(0.75)
			t10:Destroy()
		end)
	end

	r353.update_humanoid_state = function()
		r2_9:SetStateEnabled(Enum.HumanoidStateType.Swimming, not r384.misc.movement.remove_water_physics)
	end

	r353.update_pitch = function()
		local s4 = r26(r3_7, "UpperTorso")
		if not s4 then
			return
		end
		local s3 = r26(s4, "Waist")
		if not s3 then
			return
		end
		local s10 = r384.visuals.local_self
		if not s10.third_person then
			r351.set_property(s3, "C0", r302(0, 0, 0))
			return
		end
		local s13 = r384.misc.pitch
		local s4_1 = 0

		if s10.visualize_pitch then
			s4_1 = s13.enabled and s13.value or r3_7:GetAttribute("UpAngle") or 0
		end

		r351.set_property(s3, "C0", r302(s4_1, 0, 0))
		local s10_1 = r26(r3_7, "server")

		if s10_1 then
			local s4_2 = r26(s10_1, "UpperTorso")
			if not s4_2 then
				return
			end
			local s3_1 = r26(s4_2, "Waist")
			if not s3_1 then
				return
			end
			r351.set_property(s3_1, "C0", r302(s13.enabled and s13.value or r3_7:GetAttribute("UpAngle") or 0, 0, 0))
		end
	end

	r353.update_humanoid = function(s26)
		if r384.misc.movement.speedhack.enabled then
			r351.set_property(s26, "WalkSpeed", r384.misc.movement.speedhack.value)
		end

		if r384.misc.movement.jumphack.enabled then
			r351.set_property(s26, "JumpHeight", r384.misc.movement.jumphack.value)
		end

		if r384.misc.movement.gravity.enabled then
			r351.set_property(r95, "Gravity", r384.misc.movement.gravity.value)
		end

		if r384.misc.movement.max_slope_angle.enabled then
			r351.set_property(s26, "MaxSlopeAngle", r384.misc.movement.max_slope_angle.value)
		end
	end

	r353.fly = function(s31)
		local s5 = r384.misc.movement.flyhack
		if not s5.enabled or not r5_1 then
			return
		end
		local s1_1 = r289.CFrame.LookVector
		local s3 = r289.CFrame.RightVector
		local s27 = r24(s1_1.X, 0, s1_1.Z)
		local s1_2 = r24(s3.X, 0, s3.Z)
		local s2 = r292(s27) > 0 and s27.Unit or Vector3.zero
		local s4 = r292(s1_2) > 0 and s1_2.Unit or Vector3.zero
		local s1_3 = Vector3.zero

		if r285(r276, Enum.KeyCode.W) then
			s1_3 += s2
		end

		if r285(r276, Enum.KeyCode.S) then
			s1_3 -= s2
		end

		if r285(r276, Enum.KeyCode.D) then
			s1_3 += s4
		end

		if r285(r276, Enum.KeyCode.A) then
			s1_3 -= s4
		end

		if r285(r276, Enum.KeyCode.Space) then
			s1_3 += r24(0, 1, 0)
		end

		if r285(r276, Enum.KeyCode.LeftShift) then
			s1_3 -= r24(0, 1, 0)
		end

		local s2_1 = s5.speed_horizontal * s5.multiplier * s31
		local s3_2 = s5.speed_vertical * s5.multiplier * s31

		if s1_3.X ~= 0 or s1_3.Z ~= 0 then
			r5_1.CFrame = r5_1.CFrame + r24(s1_3.X, 0, s1_3.Z).Unit * s2_1
		end

		if s1_3.Y ~= 0 then
			r5_1.CFrame = r5_1.CFrame + r24(0, s1_3.Y, 0).Unit * s3_2
		end

		r5_1.Velocity = Vector3.zero
	end

	r353.toggle_fly = function(arg1)
		r384.misc.movement.flyhack.enabled = arg1

		if r5_1 then
			r5_1.Velocity = Vector3.zero
			r5_1.Anchored = false
		end
	end

	r353.long_jump = function()
		local s7 = r384.misc.movement.long_jump
		if s7.using then
			return
		end
		s7.using = true
		r2_9:ChangeState(Enum.HumanoidStateType.Jumping)
		local s2 = r5_1.AssemblyMass
		local s3 = r2_9.MoveDirection
		local s5 = 0

		if r292(s3) == s5 then
			s3 = r5_1.CFrame.LookVector
		end

		r5_1:ApplyImpulse(s3.Unit * s7.forward_force * s2 * 5 + r24(0, s7.upward_force * s2, 0))

		r339(s7.cooldown, function()
			s7.using = false
		end)
	end

	r353.spawn_uaz = function()
		if not r3_7 or not r2_9 then
			return r100:notification({ text = "Couldn't find local character", flashing = true, time = 3 })
		end
		local s10 = r26(r3_7, "HumanoidRootPart")
		if not s10 then
			return
		end
		local s14 = r384.misc.uaz_spawn_type or "Nearest"
		local s5 = {}
		local s3, s4 = r371.vehicles:GetChildren()

		for _, s4_1 in r1_2, s3, s4 do
			if r26(s4_1, "Body") and r287(s4_1.Body, "MeshPart") then
				r327(s5, s4_1)
			end
		end

		if #s5 == 0 then
			return r100:notification({ text = "Couldn't find a UAZ nearby", flashing = true, time = 8 })
		end
		local s8 = nil

		if s14 == "Random" then
			s8 = s5[r308(1, #s5)]
		else
			local s11_1 = s14 == "Nearest" and r315 or -r315

			for _, s4_2 in r1_2, s5, nil do
				local s5_2 = r287(s4_2.Body, "MeshPart")

				if s5_2 then
					local s5_3 = (s5_2.Position - s10.Position).Magnitude

					if s14 == "Nearest" and s5_3 < s11_1 then
						s8 = s4_2
						s11_1 = s5_3
					elseif s14 == "Farthest" and s5_3 > s11_1 then
						s8 = s4_2
						s11_1 = s5_3
					end
				end
			end
		end

		if not s8 then
			return r100:notification({ text = "Couldn't select a UAZ", flashing = true, time = 8 })
		end
		local s17 = s8.Body.FRdoor.FR_Door

		if r2_9 then
			local s5_1 = r26(s8, "Chassis")

			if s5_1 then
				local s2_1 = r26(s5_1, "SeatFR")

				if s2_1 then
					s2_1:Sit(r2_9)
				end
			end
		end

		local function s2_2(arg1)
			r122.VehicleInteractions:FireServer({ Vehicle = s8, Action = arg1, Door = s17 })
		end

		for s3_2 = 1, 2 do
			s2_2("Enter")
			r337(0.2)
		end

		s8.Remotes.ExitSeat:FireServer()
		r337(0.1)
		s2_2("Exit")
		s8.Remotes.ExitSeat:FireServer()
		r337(1)
		r2_9:Move(r24(0, 10, 0))

		r100:notification({
			text = "Successfully spawned a UAZ (" .. s14 .. ")",
			flashing = false,
			time = 5,
		})
	end

	r353.explode_landmines = function()
		if r371.landmines then
			local s3 = r371.landmines:GetChildren()
			if #s3 == 0 then
				r100:notification({ text = "Couldn't find any landmines.", time = 3 })
				return
			end
			local s13 = r384.misc.detonation_mode or "All"
			local s15 = 0

			for _, s4 in r1_2, s3, nil do
				local s5 = r26(s4, "Trigger")

				if s5 and r155(s5, "BasePart") then
					firetouchinterest(r5_1, s5, 0)
					r337()
					firetouchinterest(r5_1, s5, 1)
					s15 += 1
					if s13 ~= "One" then
						continue
					end
				else
					continue
				end

				break
			end

			if s13 == "One" then
				r100:notification({ text = "Successfully exploded a landmine.", time = 3 })
			else
				r100:notification({
					text = "Successfully exploded " .. r324(s15) .. " landmines.",
					time = 3,
				})
			end

			return
		end

		r100:notification({ text = "Couldn't find any landmines.", time = 3 })
		return
	end

	r353.get_item_handle = function(s20)
		if s20.PrimaryPart then
			return s20.PrimaryPart
		end
		local s2, s3 = s20:GetChildren()

		for _, s3_1 in r1_2, s2, s3 do
			if r155(s3_1, "BasePart") then
				return s3_1
			end
		end

		return nil
	end

	local r12_4 = r26(r122, "Take")

	r353.item_aura = function()
		if not r3_7 then
			return
		end

		if not r5_1 then
			return
		end
		local s11 = r5_1.Position
		local s3, s4 = r371.dropped_items:GetChildren()

		for _, s4_1 in r1_2, s3, s4 do
			local s8 = r353.get_item_handle(s4_1)

			if s8 then
				if (s8.Position - s11).Magnitude <= r384.misc.item_aura.range then
					r12_4:FireServer(unpack({
						s4_1,
						s8.Position,
					}))
				end
			end
		end
	end

	r353.unlock_npcs = function()
		for _, s4 in r1_2, {
			r26(r95, "Boss"),
			r26(r95, "Jake"),
		}, nil do
			if s4 then
				s4:SetAttribute("Hidden", false)
				local s6, s7 = s4:GetDescendants()

				for _, s7_1 in r1_2, s6, s7 do
					if s7_1:IsA("BasePart") then
						if not (s7_1.Parent and s7_1.Parent.Name == "Hint") then
							if s7_1.Name ~= "HumanoidRootPart" and s7_1.Name ~= "FaceHitBox" and s7_1.Name ~= "HeadTopHitBox" then
								s7_1.Transparency = 0
							end
						end
					elseif s7_1:IsA("Decal") and s7_1.Name == "face" then
						s7_1.Transparency = 0
					elseif s7_1:IsA("BillboardGui") and s7_1.Parent then
						if s7_1.Parent.Name == "TargetAttachment" or s7_1.Parent.Name == "Head" then
							r351.set_enabled(s7_1, true)
						end
					end
				end
			end
		end
	end

	r353.teleport_npcs = function()
		if not r3_7 or not r5_1 then
			return
		end
		local s3 = r384.misc.selected_npcs
		local s14 = #s3

		for s3_1, s4 in r1_2, s3, nil do
			local s6 = r26(r95, s4)

			if s6 then
				local s7 = r26(s6, "HumanoidRootPart")

				if s7 then
					local s8 = s3_1 / s14 * r316 * 2
					s7.CFrame = CFrame.lookAt(r5_1.Position + r24(r317(s8) * 6, 0, r309(s8) * 6), r5_1.Position)
					local s7_1, s8_1 = s6:GetDescendants()

					for _, s8_2 in r1_2, s7_1, s8_1 do
						if r155(s8_2, "BasePart") then
							s8_2.CanCollide = false
						end
					end
				end
			end
		end
	end

	r353.position_connection = function(s33)
		if s33 == r97 then
			return
		end
		local s30 = r26(r25, s33.Name)
		local s29 = s30 and r26(s30, "Status")
		local s1 = s29 and r26(s29, "UAC")
		if not s1 then
			return
		end
		local s30_1 = s1:GetAttribute("LastVerifiedPos")

		if typeof(s30_1) == "Vector3" and s33.Character and r26(s33.Character, "HumanoidRootPart") then
			r351.set_property(s33.Character.HumanoidRootPart, "CFrame", r303(s30_1))
		end

		if not r384.resolver_connections.resolver_signals[s33] then
			r384.resolver_connections.resolver_signals[s33] = function()
				local t5 = s1:GetAttribute("LastVerifiedPos")

				if typeof(t5) == "Vector3" and s33.Character and r26(s33.Character, "HumanoidRootPart") then
					r351.set_property(s33.Character.HumanoidRootPart, "CFrame", r303(t5))
				end
			end
		end

		if r384.combat.resolvers.server_desync_resolver.enabled and not r384.resolver_connections.resolver[s33] then
			local s3 = r384.resolver_connections.resolver_signals[s33]
			r384.resolver_connections.resolver[s33] = r100:connection(s1:GetAttributeChangedSignal("LastVerifiedPos"), s3)
		end
	end

	r353.position_verify = function()
		for s3, s4 in r1_2, r384.resolver_connections.resolver, nil do
			if not r384.combat.resolvers.server_desync_resolver.enabled then
				r100:disconnect(s4)
				r384.resolver_connections.resolver[s3] = nil
			end
		end

		if r384.combat.resolvers.server_desync_resolver.enabled then
			for _, s10 in r283(r275) do
				if not r384.resolver_connections.resolver[s10] then
					r353.position_connection(s10)
				end
			end
		end
	end

	r353.underground_resolve = function()
		local s8 = r384.combat.resolvers.underground_resolver
		if not (s8.enabled and s8.bind) then
			return
		end
		local s10 = s8.method or "Classic"
		local s12 = r351.get_root_cframe(r5_1)
		local s13 = s8.depth
		local s15 = false
		s8.using = true

		if r384.combat.resolvers.use_sit then
			r351.set_property(r2_9, "Sit", true)
		end

		local s2_2 = r100:connection(r342, function()
			if not s8.using then
				return
			end
			s15 = not s15
			local t2_1 = r303(0, -(s15 and s13 + 10 or s13), 0)

			if s10 == "CFrame" and r5_1 then
				r5_1.CFrame = s12 * t2_1
				r2_9:ChangeState(Enum.HumanoidStateType.Running)
				r342:Wait()
				r5_1.CFrame = s12
			else
				r3_7:PivotTo(s12 * t2_1)
				r2_9:ChangeState(Enum.HumanoidStateType.Running)
				r342:Wait()
				r3_7:PivotTo(s12)
			end
		end)

		r337(s8.timeout)
		r351.set_property(r2_9, "Sit", false)
		s8.using = false
		r100:disconnect(s2_2)
	end

	r353.peek_resolve = function()
		local s8 = r384.combat.resolvers.peek
		if not (s8.enabled and s8.bind) then
			return
		end
		local s11 = s8.method or "Classic"
		local s13 = r351.get_root_cframe(r5_1)
		local s15 = s8.height
		local s16 = false
		s8.using = true

		if r384.combat.resolvers.use_sit then
			r351.set_property(r2_9, "Sit", true)
		end

		local s2_2 = r100:connection(r342, function()
			if s8.using then
				local t4 = s15

				if s11 == "CFrame" then
					s16 = not s16
					t4 = s16 and s15 + 5 or s15
				end

				local t2 = r303(0, t4, 0)

				if s11 == "CFrame" and r5_1 then
					r5_1.CFrame = s13 * t2
					r2_9:ChangeState(Enum.HumanoidStateType.Running)
					r342:Wait()
					r5_1.CFrame = s13
				else
					r3_7:PivotTo(s13 * t2)
					r2_9:ChangeState(Enum.HumanoidStateType.Running)
					r342:Wait()
					r3_7:PivotTo(s13)
				end

				return
			end

			return
		end)

		r337(s8.timeout)
		r351.set_property(r2_9, "Sit", false)
		s8.using = false
		r100:disconnect(s2_2)
	end

	r353.tp_peek_resolve = function()
		local s9 = r384.combat.resolvers.tp_peek
		local s4 = r384.targeting.current_target
		if not (s9.enabled and s9.bind and s4 and r26(s4, "HumanoidRootPart")) then
			return
		end
		local s11 = s4.HumanoidRootPart
		local s8 = r26(r3_7, "HumanoidRootPart")
		if not s8 then
			return
		end
		local s12 = s9.method or "Classic"
		local s14 = s9.height
		local s16 = false
		local s17 = r351.get_root_cframe(s8)
		s9.using = true

		if r384.combat.resolvers.use_sit then
			r351.set_property(r2_9, "Sit", true)
		end

		local s2_2 = r100:connection(r342, function()
			if not s9.using then
				return
			end
			local t5 = s14

			if s12 == "CFrame" then
				s16 = not s16
				t5 = s16 and s14 + 5 or s14
			end

			local t2 = r303(s11.Position.X, s11.Position.Y + t5, s11.Position.Z)
			r289.CFrame = r303(t2.Position, s11.Position)

			if s12 == "CFrame" and s8 then
				s8.CFrame = t2
				r2_9:ChangeState(Enum.HumanoidStateType.Running)
				r342:Wait()
				s8.CFrame = s17
			else
				r3_7:PivotTo(t2)
				r2_9:ChangeState(Enum.HumanoidStateType.Running)
				r342:Wait()
				s8.CFrame = s17
			end
		end)

		r337(s9.timeout)
		r351.set_property(r2_9, "Sit", false)
		s9.using = false
		r100:disconnect(s2_2)
	end

	r353.get_closest_target = function()
		if not (r97.Character and r5_1) then
			return nil
		end
		local s1_1 = r289.ViewportSize
		local s9 = r23(s1_1.X / 2, s1_1.Y / 2)
		local s15 = r351.get_world_pos(r5_1)
		local s17 = r384.combat.aiming
		local s18 = { Enemy = 0, Neutral = 1, Friendly = 2 }
		local s19 = { hitbox = nil, character = nil, player = nil, value = r315, priority = r315 }
		r384.targeting.current_target = nil
		r351.refresh_teammates()

		local function s20(t22)
			if not s17.prioritize_enemies then
				return 1
			end
			local t1 = r100.playerlist_data[r324(t22)]
			return s18[t1 and t1.priority or "Neutral"] or 1
		end

		local function s21(arg1, arg2)
			return r305(r292(arg1 - arg2) * 0.333)
		end

		local function s22(t2, t3, t4, t5)
			local t9 = r351.get_world_pos(t2)
			local t11 = s21(s15, t9)
			local t18 = r384.combat.aiming
			if t18.max_distance.enabled and t11 > t18.max_distance.value then
				return
			end
			local t7_1, t8_1 = r289:WorldToViewportPoint(t9)
			if not t18.ignore_fov and not t8_1 then
				return
			end

			if t18.wall_check and not r351.is_visible(r5_1.Position, t3, t2) then
				return
			end
			local t7_2 = (r23(t7_1.X, t7_1.Y) - s9).Magnitude
			if not t18.ignore_fov and t7_2 > t18.fov_radius then
				return
			end
			t7_2 = t18.targeting_type == "closest_to_mouse" and t7_2

			if t7_2 then
				t11 = t7_2
			else
				t11 = t18.targeting_type == "distance" and t11
			end

			t11 = t11 or r315
			if not (t5 < s19.priority or t5 == s19.priority and t11 < s19.value) then
				return
			end
			s19 = { hitbox = t2, character = t3, player = t4, value = t11, priority = t5 }
			r384.targeting.current_target = t3
		end

		local function s24(t6, t7)
			if not t6 then
				return
			end
			local t9 = r26(t6, "Humanoid")
			if t9 and s17.dead_check and t9.Health <= 0 then
				return
			end
			local t9_1 = typeof(t7) == "Instance" and r155(t7, "Player")
			local t17 = 1

			if t9_1 then
				t17 = s20(t7)
				local t2_1 = r100.playerlist_data[r324(t7)]
				t2_1 = t2_1 and t2_1.priority or "Neutral"
				if not s17.target_friendlies and t2_1 == "Friendly" then
					return
				end

				if not s17.target_friendlies and r384.clan_data.teammates[t7.Name] and t2_1 ~= "Enemy" then
					return
				end
			end

			local t10 = r351.get_hitboxes(t6)
			if not t10 then
				return
			end

			for _, t11 in r1_2, t10, nil do
				s22(t11, t6, t7, t17)
			end
		end

		if s17.target_players then
			for _, s3 in r283(r275) do
				if s3 ~= r97 and s3.Character then
					s24(s3.Character, s3)
				end
			end
		end

		if s17.target_ai then
			local s4_1, s5_1 = r371.zones:GetChildren()

			for _, s5_2 in r1_2, s4_1, s5_1 do
				local s7, s8 = s5_2:GetChildren()

				for _, s8_1 in r1_2, s7, s8 do
					if r26(s8_1, "HumanoidRootPart") then
						s24(s8_1, s8_1)
					end
				end
			end
		end

		if s17.target_heli then
			local s6 = r26(r371.zones, "HeliAirfield")

			if s6 then
				local s5_3 = r26(s6, "MI24V")

				if s5_3 and r26(s5_3, "Pilots") then
					s24(s5_3, s5_3)
				end
			end
		end

		if r100.inv_configuration.enabled then
			r360.view(s19.character and s19.character.Name or "")
		end

		if r356.enabled then
			r359.update_target(s19.character)
		end

		if not s19.hitbox then
			return nil
		end
		return s19.hitbox, s19.character, s19.player
	end

	if r351.is_debug() then
		print("[backtrack.tech:project_delta] hooking")
		r337(0.15)
	end

	local function r6_3()
		local R, L = getgc(true)

		for k, k in r1_2, R, L do
			if type(k) == "table" then
				if rawget(k, "updateClient") then
					r384.framework.fps = k
				end
			end
		end
	end

	r6_3()

	r353.new_framework = function()
		local s4, s5 = getgc(true)
		local s14 = nil

		for _, s5_1 in r1_2, s4, s5 do
			if type(s5_1) ~= "table" then
				s14 = nil
			else
				local s7 = rawget(s5_1, "springs")

				if type(s7) == "table" and rawget(s7, "sway") then
					if typeof(rawget(rawget(s7, "sway"), "Position")) == "Vector3" then
						s14 = s5_1
						break
					else
						s14 = nil
					end
				else
					s14 = nil
				end
			end
		end

		r384.framework.data = s14
	end

	local r6_4 = r384.framework.fps.updateClient

	r384.framework.fps.updateClient = function(...)
		local s3 = {
			...,
		}

		local s32 = s3[1]
		local s8 = r384.framework.data.springs
		local s9 = r384.framework.old.springs

		if r384.combat.gun_mods.rapid_fire.enabled then
			s32.FireRate = 1 / r384.combat.gun_mods.rapid_fire.value
		end

		if r384.combat.gun_mods.instant_aim and rawget(s32, "AimInSpeed") and rawget(s32, "AimOutSpeed") then
			s32.AimInSpeed = 0
			s32.AimOutSpeed = 0
		end

		if r384.combat.gun_mods.unlock_firemodes and rawget(s32, "FireModes") then
			s32.FireModes = { "Auto", "Semi" }
		end

		if r384.combat.gun_mods.remove_obstructions and rawget(s32, "TouchWallPosY") then
			s32.TouchWallPosY = 0
			s32.TouchWallPosZ = 0
			s32.TouchWallRotX = 0
			s32.TouchWallRotY = 0
		end

		if r384.framework.data then
			if r384.combat.gun_mods.instant_lean then
				s8.leanAlpha.Force = 25
				s8.leanAlpha.Speed = 50
			else
				s8.leanAlpha.Force = 50
				s8.leanAlpha.Speed = 4
			end

			if r384.combat.gun_mods.no_bobbing then
				s8.jumpTilt.Force = 0
				s8.jumpTilt.Speed = 0
				s8.walkCycle.Speed = 0
				s8.walkCycle.Force = 0
				s8.sprintCycle.Speed = 0
				s8.sprintCycle.Force = 0
				s8.strafeTilt.Speed = 0
				s8.strafeTilt.Force = 0
			else
				s8.jumpTilt.Force = s9.jumpTilt.Force
				s8.jumpTilt.Speed = s9.jumpTilt.Speed
				s8.walkCycle.Speed = s9.walkCycle.Speed
				s8.walkCycle.Force = s9.walkCycle.Force
				s8.sprintCycle.Speed = s9.sprintCycle.Speed
				s8.sprintCycle.Force = s9.sprintCycle.Force
				s8.strafeTilt.Speed = s9.strafeTilt.Speed
				s8.strafeTilt.Force = s9.strafeTilt.Force
			end

			if r384.combat.gun_mods.no_recoil then
				s8.cameraRecoil.Force = 0
				s8.cameraRecoil.Speed = 0
				s8.recoilRot.Force = 0
				s8.recoilRot.Speed = 0
			else
				s8.cameraRecoil.Force = s9.cameraRecoil.Force
				s8.cameraRecoil.Speed = s9.cameraRecoil.Speed
				s8.recoilRot.Force = s9.recoilRot.Force
				s8.recoilRot.Speed = s9.recoilRot.Speed
			end

			if r384.combat.gun_mods.no_sway then
				s8.sway.Position = r24(0, 0, 0)
				s8.sway.Force = 0
				s8.sway.Speed = 0
			else
				s8.sway.Force = s9.sway.Force
				s8.sway.Speed = s9.sway.Speed
			end

			if r384.combat.gun_mods.remove_obstructions then
				s8.wallTouchTilt.Force = 0
				s8.wallTouchTilt.Speed = 0
			else
				s8.wallTouchTilt.Force = s9.wallTouchTilt.Force
				s8.wallTouchTilt.Speed = s9.wallTouchTilt.Speed
			end
		end

		return r6_4(unpack(s3))
	end

	r353.new_framework()

	r372.bullet.CreateBullet = function(...)
		local s29 = {
			...,
		}

		local s1 = r384.combat.aiming
		local s5 = r384.combat.visualization

		if r382 then
			if s1.silent_aim and r384.targeting.current_target and r351.calculate_chance(s1.hitchance) then
				s29[8] = {
					ClassName = "Part",
					CFrame = r303(r289.CFrame.p, r382.Position),
				}
			end

			if s5.bullet_tracers.enabled then
				r354.create_tracer(r382.Position)
			end

			if s5.bullet_impacts.enabled then
				r354.create_impact(r382.Position)
			end

			if s5.hitmarkers.enabled then
				r354.create_hitmarker(r382.Position)
			end

			if s5.hit_vfx.enabled then
				r354.create_vfx(r382.Position)
			end
		end

		if r384.combat.gun_mods.double_tap then
			r372.old.bullet(unpack(s29))
		end

		return r372.old.bullet(unpack(s29))
	end

	if r351.is_debug() then
		print("[backtrack.tech:project_delta] loops")
		r337(0.15)
	end

	local function r6_5()
		r273:BindToRenderStep("update_esp", 0, function(R)
			if not r376 or not r289 then
				return
			end
			local L = r384.esp
			if r345() - L.last_update < 1 / L.update_rate then
				return
			end
			L.last_update = r345()
			R = r97.Character and (r351.get_world_pos(r5_1))
			if not R then
				return
			end
			local k = L.distance_unit == "meters" and 0.333 or 1
			local J = L.other

			for r, g in r1_2, r376, nil do
				local x = g.hrp
				if not x then
					continue
				end
				local a = g.holder
				if not a then
					continue
				end
				local N = g.bot and L.bots or L
				if not N.enabled then
					r351.set_visible(a, false)
					continue
				end
				local u = r305(r292(R - x.Position) * k)
				if u > N.render_distance then
					r351.set_visible(a, false)
					continue
				end
				r352.update_model(x.Position, a, g.directory.distance_label, u, r)
			end

			for r, g in r1_2, r377.tracked, nil do
				L = g and g.gui and g.gui.label
				if not L then
					continue
				end

				if not J.enabled then
					r351.set_visible(L, false)
					continue
				end
				local x = J[g.element_type]
				if not (x and x.enabled) then
					r351.set_visible(L, false)
					continue
				end
				local a = r305(r292(R - r351.get_world_pos(r)) * k)
				if a > J.render_distance then
					r351.set_visible(L, false)
					continue
				end
				r352.update_instance(r, L, x, g.base_text, a)
			end
		end)

		local R, L, k = 0, 0, r384.misc.desync
		local J, r, g = k.rotation_spoofer.spin, r384.combat.aiming.auto_shoot, r384.visuals.crosshair
		local x = g.animation

		r100:connection(r343, function(a)
			r354.update_camera()
			R += a
			L = (L or 0) + a

			if r384.combat.visualization.spin_gradients then
				local N = (r378.fov_fill_gradient.Rotation + r384.combat.visualization.spin_speed) % 360
				r351.set_property(r378.fov_fill_gradient, "Rotation", N)
				r351.set_property(r378.fill_gradient, "Rotation", N)
				r351.set_property(r378.glow_gradient, "Rotation", N)
			end

			if x.resize then
				local N, u = g.length, g.gap

				if x.length.resize or x.gap.resize then
					local _ = (x.t or 0) + x.speed * a

					if _ >= 1 then
						x.going_out = not x.going_out
						_ = 0
					end

					x.t = _
					local E = x.going_out and _ or 1 - _
					N, u = if x.length.resize then g.length + (x.length.value - g.length) * E else N, if x.gap.resize then g.gap + (x.gap.value - g.gap) * E else u
				end

				local x = r380.crosshair_holder
				r351.set_property(x, "Size", r22(0, N + u, 0, N + u))
				r351.set_property(r380.spoke_top, "Size", r22(0, g.width, 0, N))
				r351.set_property(r380.spoke_bottom, "Size", r22(0, g.width, 0, N))
				r351.set_property(r380.spoke_left, "Size", r22(0, N, 0, g.width))
				r351.set_property(r380.spoke_right, "Size", r22(0, N, 0, g.width))
			end

			if g.spin then
				local x = r380.crosshair_holder
				r351.set_property(x, "Rotation", (x.Rotation + g.spin_speed) % 360)
			end

			r353.fly(a)

			if r384.visuals.crosshair.position == "Mouse" then
				a = r276:GetMouseLocation()
				r351.set_property(r380.crosshair_holder, "Position", r22(0, a.X, 0, a.Y))
			elseif r384.visuals.crosshair.position == "Target" then
				if r382 then
					local g, x = r351.get_screen_pos(r382.Position)
					r351.set_property(r380.crosshair_holder, "Position", x and (r22(0, g.X, 0, g.Y)) or (r22(0.5, 0, 0.5, 0)))
				else
					r351.set_property(r380.crosshair_holder, "Position", r22(0.5, 0, 0.5, 0))
				end
			end

			if k.rotation_spoofer.enabled then
				if J.roll.enabled then
					J.roll.value = (J.roll.value + J.roll.speed) % 360
				end

				if J.pitch.enabled then
					J.pitch.value = (J.pitch.value + J.pitch.speed) % 360
				end

				if J.yaw.enabled then
					J.yaw.value = (J.yaw.value + J.yaw.speed) % 360
				end
			end

			if R >= 0.0125 then
				if r384.combat.aiming.silent_aim or r384.combat.aiming.aim_assist.bind then
					r382 = r353.get_closest_target()
					r354.draw_snapline(r382)
				else
					r382 = nil
				end

				if r384.combat.aiming.aim_assist.bind then
					if not r382 then
						return
					end
					local J, g = r384.combat.aiming.aim_assist.type, r384.combat.aiming.aim_assist.smoothness

					if J == "Camera" then
						local x = r289.CFrame.Position
						r289.CFrame = r289.CFrame:Lerp(r303(x, r382.Position), g)
					elseif J == "Mouse" then
						local J, x = r351.get_screen_pos(r382.Position)

						if x then
							a = r276:GetMouseLocation()
							local x, N = J.X - a.X, J.Y - a.Y
							mousemoverel(x * g, N * g)
						end
					end
				end

				if r362.get_state() then
					r362.update()
				end

				if r384.misc.movement.jesus then
					local J, J, g, g = r95:FindPartOnRayWithWhitelist(Ray.new(r5_1.Position, r24(0, -10, 0)), {
						r95.Terrain,
					})

					if g == Enum.Material.Water then
						if not r384.water_part then
							r384.water_part = r7("Part", {
								Transparency = 1,
								Size = r24(15, 1, 15),
								CanCollide = true,
								Anchored = true,
								Parent = r371.no_collision,
							})
						end

						r351.set_property(r384.water_part, "Position", J)
					end
				end

				if r354.joint_map and k.visualization.server.visualize_animations then
					for J, J in r1_2, r354.joint_map, nil do
						J.clone.Transform = J.real.Transform
					end
				end

				if k.animations.enabled and r4_6 then
					local k = r4_6:GetPlayingAnimationTracks()

					for J = 1, #k, 1 do
						local g = k[J]
						J = g.Animation

						if J and J.AnimationId ~= r384.misc.desync.animations.animation then
							g:Stop()
						end
					end
				end

				R = 0
			end

			if L >= r.interval then
				if r384.combat.aiming.silent_aim and r.enabled and r5_1 and r384.targeting.current_target and r382 and not r100.menu_opened and (r351.is_visible(r5_1.Position, r384.targeting.current_target, r382)) then
					r351.simulate_click()
				end

				L = 0
			end
		end)

		r100:connection(r341, function()
			r355.think()
		end)

		r100:connection(r97.CharacterAdded, function(R)
			r336(function()
				r384.framework.data = nil
				r337(3)
				r353.new_framework()
			end)

			r100:disconnect(r384.pitch_connection)

			repeat
				r337()
			until r97.Character and (r287(r97.Character, "Humanoid"))

			r3_7 = R
			r2_9 = R:WaitForChild("Humanoid")
			r4_6 = r2_9:WaitForChild("Animator")
			r5_1 = R:WaitForChild("HumanoidRootPart")
			r381:AddToFilter(R)
			r1333 = r354.desync_visualizer()

			if r383.track then
				r383.track:Stop()
				r383.track:Destroy()
			end

			r383.track = nil

			r100:connection(r2_9:GetPropertyChangedSignal("WalkSpeed"), function()
				if r384.misc.movement.speedhack.enabled then
					r353.update_humanoid(r2_9)
				end
			end)

			r100:connection(r2_9:GetPropertyChangedSignal("JumpHeight"), function()
				if r384.misc.movement.jumphack.enabled then
					r353.update_humanoid(r2_9)
				end
			end)

			r100:connection(r2_9.StateChanged, function(R, R)
				if r384.misc.nofall.enabled and (R == Enum.HumanoidStateType.FallingDown or R == Enum.HumanoidStateType.Freefall) then
					r2_9:ChangeState(Enum.HumanoidStateType.Running)
				end
			end)

			r100:connection(r2_9:GetAttributeChangedSignal("JumpCooldown"), function()
				if r384.misc.movement.remove_jump_cooldown and r2_9:GetAttribute("JumpCooldown") ~= 0 then
					r2_9:SetAttribute("JumpCooldown", 0)
				end
			end)

			r384.pitch_connection = r100:connection(r3_7:GetAttributeChangedSignal("UpAngle"), function()
				r353.update_pitch()
			end)

			r118 = r26(r119, "MainGui")

			if r118 then
				r354.fix_visualizer_clones()
				r354.hitsounds()
				r354.update_ui()
			end

			r353.update_humanoid(r2_9)
			r354.update_visualizer()
			r354.update_character()
			r351.setup_child_added()
		end)

		r384.pitch_connection = r100:connection(r3_7:GetAttributeChangedSignal("UpAngle"), function()
			r353.update_pitch()
		end)

		r351.setup_child_added()

		r100:connection(r289.ChildAdded, function(R)
			r354.update_viewmodel()

			if r155(R, "Model") and R.Name == "ViewModel" then
				local L = r26(R, "Humanoid")
				if not L then
					return
				end
				local k = r26(L, "Animator")
				if not k then
					return
				end

				if L then
					if r384.viewmodel_connection then
						r100:disconnect(r384.viewmodel_connection)
					end

					if r384.use_connection then
						r100:disconnect(r384.use_connection)
					end

					if r384.combat.gun_mods.instant_equip then
						for J, J in k:GetPlayingAnimationTracks() do
							if J.Animation.Name == "Equip" then
								J:AdjustSpeed(15)
								J.TimePosition = J.Length - 0.01
							end
						end
					end

					r384.use_connection = r100:connection(L.AnimationPlayed, function(L)
						if not L.Animation then
							return
						end
						local k = L.Animation.Name

						if r384.combat.gun_mods.no_recoil and k == "Use" then
							L:AdjustSpeed(9000000000)
						end

						if r384.combat.gun_mods.rapid_knife.enabled and (k == "Use" or k == "UseAlt" or k == "Stab") then
							L:AdjustSpeed(r384.combat.gun_mods.rapid_knife.rate)
						end
					end)

					r384.viewmodel_connection = r100:connection(R.DescendantAdded, function()
						r354.update_viewmodel()
					end)
				end
			end
		end)

		r100:connection(r371.no_collision.Effects.ChildAdded, function(R)
			local L = r384.visuals.world.notifications
			if not L.flare_fired then
				return
			end
			r337(0.1)

			if R.Name == "FlareGun" then
				r100:notification({
					text = "Someone has just fired an EDF Flare!",
					flashing = L.flashing,
					time = L.duration,
					sound = L.sound,
					volume = L.volume,
				})
			elseif R.Name == "SPSh44" then
				r100:notification({
					text = "Someone has just fired an SPSh44 Flare!",
					flashing = L.flashing,
					time = L.duration,
					sound = L.sound,
					volume = L.volume,
				})
			end
		end)

		r100:connection(r95.Containers.ChildAdded, function(R)
			if not r384.visuals.world.notifications.airdrop_dropped then
				return
			end
			r337(0.1)

			if R.Name == "SupplyDropMilitary" then
				r100:notification({
					text = "An airplane has just dropped an SPSh44 Flare!",
					flashing = r384.visuals.world.notifications.flashing,
					time = r384.visuals.world.notifications.duration,
				})
			elseif R.Name == "SupplyDropEDF" then
				r100:notification({
					text = "An airplane has just dropped an EDF Flare!",
					flashing = r384.visuals.world.notifications.flashing,
					time = r384.visuals.world.notifications.duration,
				})
			end
		end)

		if r370:GetAttribute(r384.reports.attribute) ~= nil then
			r100:connection(r370:GetAttributeChangedSignal(r384.reports.attribute), function()
				r354.update_reports()
			end)
		else
			local R

			R = r370.AttributeChanged:Connect(function(L)
				if r384.reports.attribute == L then
					R:Disconnect()

					r100:connection(r370:GetAttributeChangedSignal(r384.reports.attribute), function()
						r354.update_reports()
					end)
				end
			end)
		end

		r100:connection(r363.statistics:GetAttributeChangedSignal("K_PVP"), r351.update_session_data)
		r100:connection(r363.statistics:GetAttributeChangedSignal("D_PVP"), r351.update_session_data)

		r100:connection(r124.Changed, function()
			r354.update_lighting()
		end)

		r100:connection(r123:GetPropertyChangedSignal("Density"), function()
			r354.update_atmosphere()
		end)

		r100:connection(r2_9:GetPropertyChangedSignal("WalkSpeed"), function()
			r353.update_humanoid(r2_9)
		end)

		r100:connection(r2_9:GetPropertyChangedSignal("JumpHeight"), function()
			if r2_9.JumpHeight ~= 0 then
				r353.update_humanoid(r2_9)
			end
		end)

		r100:connection(r95:GetPropertyChangedSignal("Gravity"), function()
			r353.update_humanoid(r2_9)
		end)

		r100:connection(r2_9:GetAttributeChangedSignal("JumpCooldown"), function()
			if r384.misc.movement.remove_jump_cooldown and r2_9:GetAttribute("JumpCooldown") ~= 0 then
				r2_9:SetAttribute("JumpCooldown", 0)
			end
		end)

		r100:connection(r2_9.StateChanged, function(R, R)
			if r384.misc.nofall.enabled and (R == Enum.HumanoidStateType.FallingDown or R == Enum.HumanoidStateType.Freefall) then
				r2_9:ChangeState(Enum.HumanoidStateType.Landed)
			end
		end)

		if r123 then
			r100:connection(r123.Changed, function()
				r354.update_atmosphere()
			end)
		end

		if r125 then
			r100:connection(r125.Changed, function()
				r354.update_bloom()
			end)
		end

		r100:connection(r25[r97.Name].Status.UAC:GetAttributeChangedSignal("LastVerifiedPos"), function()
			r354.update_visualizer_cframe()
		end)

		r100:connection(r281, function(R)
			if r384.combat.resolvers.server_desync_resolver.enabled then
				r353.position_connection(R)
			end

			if r351.is_admin(R) then
				r351.add_admin(R)
			end

			r362.add_player(R)

			if R.Character then
				r352:new_model(R.Character)
			end

			r384.esp.character_added_connections[R] = r100:connection(R.CharacterAdded, function(L)
				r352:new_model(L)
			end)

			r351.update_session_data()
			r354.log_player_action(R, "join")
		end)

		r100:connection(r282, function(R)
			local L = r384.resolver_connections.resolver[R]

			if L then
				r100:disconnect(L)
				r384.resolver_connections.resolver[R] = nil
			end

			if r384.admins[R] then
				r351.remove_admin(R)
			end

			r362.remove_player(R)
			L = r384.esp.character_added_connections[R]

			if L then
				r100:disconnect(L)
				r384.esp.character_added_connections[R] = nil
			end

			r384.resolver_connections.resolver_signals[R] = nil
			r351.update_session_data()
			r354.log_player_action(R, "leave")
		end)

		for R, L in r283(r275) do
			r353.position_connection(L)

			r336(function()
				if r351.is_admin(L) then
					r351.add_admin(L)
				end
			end)

			if L ~= r97 then
				R = L.Character
				r362.add_player(L)

				if R then
					r352:new_model(R)
				end

				r384.esp.character_added_connections[L] = r100:connection(L.CharacterAdded, function(R)
					r352:new_model(R)
				end)
			end
		end

		local R, L = r371.zones:GetChildren()

		for k, k in r1_2, R, L do
			local J, r = k:GetChildren()

			for g, g in r1_2, J, r do
				if r155(g, "Model") and (r26(g, "Humanoid")) then
					r352:new_model(g, true)
				end
			end

			r100:connection(k.ChildAdded, function(k)
				if not r155(k, "Model") then
					return
				end

				if r26(k, "Humanoid") then
					r352:new_model(k, true)
				else
					r339(0.25, function()
						if k.Parent and (r26(k, "Humanoid")) then
							r352:new_model(k, true)
						end
					end)
				end
			end)
		end

		if r371.dropped_items then
			L, R = r371.dropped_items:GetChildren()

			for k, k in r1_2, L, R do
				if r155(k, "Model") and (r26(k, "Humanoid")) then
					r352.new_instance(k, "body")
				elseif r155(k, "Model") and (k:GetAttribute("Collectable")) then
					r352.new_instance(k, "item")
				end
			end

			r100:connection(r371.dropped_items.ChildAdded, function(k)
				if not r155(k, "Model") then
					return
				end

				if r26(k, "Humanoid") then
					r352.new_instance(k, "body")
				elseif k:GetAttribute("Collectable") then
					r352.new_instance(k, "item")
				else
					r339(0.25, function()
						if not k.Parent then
							return
						end

						if r26(k, "Humanoid") then
							r352.new_instance(k, "body")
						elseif k:GetAttribute("Collectable") then
							r352.new_instance(k, "item")
						end
					end)
				end
			end)
		end

		if r371.vehicles then
			L, R = r371.vehicles:GetChildren()

			for k, k in r1_2, L, R do
				r352.new_instance(k, "uaz")
			end

			r100:connection(r371.vehicles.ChildAdded, function(k)
				r352.new_instance(k, "uaz")
			end)
		end

		if r371.no_collision and (r26(r371.no_collision, "ExitLocations")) then
			R, L = r371.no_collision.ExitLocations:GetChildren()

			for k, k in r1_2, R, L do
				r352.new_instance(k, "exit")
			end

			r100:connection(r371.no_collision.ExitLocations.ChildAdded, function(k)
				r352.new_instance(k, "exit")
			end)
		end

		if r371.zones and (r26(r371.zones, "HeliAirfield")) then
			R, L = r371.zones.HeliAirfield:GetChildren()

			for k, k in r1_2, R, L do
				if r155(k, "Model") then
					r352.new_instance(k, "heli")
				end
			end

			r100:connection(r371.zones.HeliAirfield.ChildAdded, function(R)
				if r155(R, "Model") then
					r352.new_instance(R, "heli")
				end
			end)
		end

		r336(function()
			while r337(0.2) do
				if not r5_1 then
					continue
				end

				for R, L in r1_2, r376, nil do
					local k, J = L.hrp, L.directory

					if not k or not k.Parent then
						if L.visible_last ~= false then
							L.visible_last = false
							r351.set_property(J.visible_label, "Text", "")
							r351.set_visible(J.visible_label, false)
						end

						continue
					end

					if not (L.bot and r384.esp.bots or r384.esp).visible_enabled then
						continue
					end
					k = r351.is_visible(r5_1.Position, R, L.hrp)

					if k ~= L.visible_last then
						L.visible_last = k

						if k then
							r351.set_property(J.visible_label, "Text", r352.format_text("Visible", r384.esp.text_case))
							r351.set_visible(J.visible_label, true)
						else
							r351.set_property(J.visible_label, "Text", "")
							r351.set_visible(J.visible_label, false)
						end
					end
				end
			end
		end)

		r336(function()
			while true do
				if r384.misc.item_aura.enabled then
					r353.item_aura()
				end

				r337(r384.misc.item_aura.interval)
			end
		end)

		r336(function()
			while r337(0.5) do
				if not r384.stream_sync.enabled then
					continue
				end
				local R = r351.get_root_cframe(r5_1)
				if not R or not r25 then
					continue
				end
				local L, k, J = R.Position, tick(), r384.stream_sync.last_requested

				for r, g in r283(r275) do
					if g == r97 then
						continue
					end
					r = g.Character
					if r and (r26(r, "HumanoidRootPart")) then
						continue
					end
					r = r26(r25, g.Name)
					if not r then
						continue
					end
					R = r26(r, "Status")
					r = R and (r26(R, "UAC"))
					local R = r and (r:GetAttribute("LastVerifiedPos"))
					if typeof(R) ~= "Vector3" then
						continue
					end

					if (R - L).Magnitude > 12000 then
						continue
					end

					if J[g] and k - J[g] <= 1.5 then
						continue
					end
					J[g] = k

					r336(function()
						pcall(r97.RequestStreamAroundAsync, r97, R, 0.5)
					end)

					r337(0.2)
				end
			end
		end)

		r336(function()
			while r337(10) do
				if not (r384.visuals.world.remove_foliage and r371.foliage) then
					continue
				end
				local R, L = r371.foliage:GetDescendants()

				for k, k in r1_2, R, L do
					r354.check_foliage(k)
				end
			end
		end)

		r336(function()
			while r337(20) do
				local R, L = r283(r275)

				for k, k in r1_2, R, L do
					if k ~= r97 then
						local R = k.Character

						if R and not r376[R] then
							r352:new_model(R, false)
						end
					end
				end
			end
		end)
	end

	r6_5()
end

if r351.is_debug() then
	print("[backtrack.tech:project_delta] loading menu")
	r337(0.15)
end

local r13_2, r14_2

do
	local r152 = r11_2:tab({ name = "Combat" })
	local r12_5 = r11_2:tab({ name = "Players" })
	r13_2 = r11_2:tab({ name = "Misc" })
	r14_2 = r11_2:tab({ name = "Visuals" })
	local r156 = r152:column()
	local r6_6 = r152:column()
	local r157 = r6_6:column()

	local r15, r16 = r156:multi_section({
		names = { "Aiming", "Visualization" },
	})

	local r17 = r6_6:section({ name = "Other" })
	local r156_1 = r157:section({ name = "Weapon Modifications" })
	r152.open_tab()

	r15:toggle({
		name = "Silent Aim",
		flag = "silent_aim",
		callback = function(arg1)
			r384.combat.aiming.silent_aim = arg1
			r354.update_snapline()
		end,
	}):configuration({ name = "Silent Aim Options" }, function(s7)
		s7:toggle({
			name = "Force Hit",
			flag = "force_hit",
			callback = function(arg1)
				r384.combat.gun_mods.wallbang = arg1
			end,
		}):keybind({
			name = "Force Hit",
			flag = "force_hit_bind",
			callback = function(arg1)
				r384.combat.gun_mods.wallbang = arg1
			end,
		})

		s7:splitter({ offset = 1 })

		s7:toggle({
			name = "Target Friendlies",
			flag = "target_friends",
			callback = function(arg1)
				r384.combat.aiming.target_friendlies = arg1
				r354.update_snapline()
			end,
		}):keybind({
			name = "Target Friendlies",
			flag = "target_friends_bind",
			callback = function(t37)
				r384.combat.aiming.target_friendlies = t37
				r354.update_snapline()
				return
			end,
		})

		s7:toggle({
			name = "Prioritize Enemies",
			default = true,
			flag = "prioritize_enemies",
			callback = function(arg1)
				r384.combat.aiming.prioritize_enemies = arg1
				r354.update_snapline()
			end,
		}):keybind({
			name = "Prioritize Enemies",
			flag = "prioritize_enemies_bind",
			callback = function(arg1)
				r384.combat.aiming.prioritize_enemies = arg1
				r354.update_snapline()
			end,
		})

		s7:splitter({ offset = 1 })

		s7:dropdown({
			name = "Target Sorting Type",
			flag = "target_sorting",
			items = { "Closest To Mouse", "Distance" },
			default = "Closest To Mouse",
			callback = function(arg1)
				r384.combat.aiming.targeting_type = arg1:lower():gsub("%s+", "_")
			end,
		})

		s7:splitter({ offset = 1 })

		s7:toggle({
			name = "Target Players",
			flag = "target_players",
			default = true,
			callback = function(arg1)
				r384.combat.aiming.target_players = arg1
				r354.update_snapline()
			end,
		}):keybind({
			name = "Target Players",
			flag = "target_players_bind",
			callback = function(arg1)
				r384.combat.aiming.target_players = arg1
				r354.update_snapline()
			end,
		})

		s7:toggle({
			name = "Target AI",
			default = true,
			flag = "target_ai",
			callback = function(arg1)
				r384.combat.aiming.target_ai = arg1
				r354.update_snapline()
			end,
		}):keybind({
			name = "Target AI",
			flag = "target_ai_bind",
			callback = function(arg1)
				r384.combat.aiming.target_ai = arg1
				r354.update_snapline()
			end,
		})

		s7:toggle({
			name = "Target MI24V Helicopter",
			default = true,
			flag = "target_heli",
			callback = function(arg1)
				r384.combat.aiming.target_heli = arg1
				r354.update_snapline()
			end,
		}):keybind({
			name = "Target MI24V",
			flag = "target_heli_bind",
			callback = function(t31)
				r384.combat.aiming.target_heli = t31
				r354.update_snapline()
			end,
		})
	end):keybind({
		name = "Silent Aim",
		flag = "silent_aim_bind",
		callback = function(arg1)
			r384.combat.aiming.silent_aim = arg1
			r354.update_snapline()
		end,
	})

	r15:toggle({
		name = "Aim Assist",
		flag = "aim_assist",
		callback = function(arg1)
			r384.combat.aiming.aim_assist.enabled = arg1
			r354:update_snapline()
		end,
	}):configuration({ name = "Aim Assist Options" }, function(s18)
		s18:dropdown({
			name = "Method",
			flag = "aim_assist_method",
			items = { "Camera", "Mouse" },
			default = "Camera",
			callback = function(arg1)
				r384.combat.aiming.aim_assist.type = arg1
			end,
		})

		s18:slider({
			name = "Smoothing",
			min = 1,
			max = 100,
			default = 20,
			interval = 1,
			flag = "aim_assist_smoothing",
			callback = function(arg1)
				r384.combat.aiming.aim_assist.smoothness = arg1 / 100
				r354:update_snapline()
			end,
		})
	end):keybind({
		name = "Aim Assist",
		mode = "hold",
		flag = "aim_assist_bind",
		callback = function(s15)
			if not r384.combat.aiming.aim_assist.enabled then
				return
			end
			r384.combat.aiming.aim_assist.bind = s15
			r354:update_snapline()
		end,
	})

	r15:splitter()

	r15:toggle({
		name = "Auto Shoot",
		flag = "auto_shoot",
		callback = function(arg1)
			r384.combat.aiming.auto_shoot.enabled = arg1
			r354.update_snapline()
		end,
	}):configuration({ name = "Auto Shoot Options" }, function(s22)
		s22:slider({
			name = "Delay",
			min = 0,
			max = 1,
			default = 0.01,
			suffix = "s",
			interval = 0.01,
			flag = "auto_shoot_delay",
			callback = function(arg1)
				r384.combat.aiming.auto_shoot.delay = arg1
			end,
		})

		s22:slider({
			name = "Scan Rate",
			min = 0.01,
			max = 1,
			default = 0.2,
			suffix = "s",
			interval = 0.01,
			flag = "auto_shoot_rate",
			callback = function(arg1)
				r384.combat.aiming.auto_shoot.interval = arg1
			end,
		})
	end):keybind({
		name = "Auto Shoot",
		flag = "auto_shoot_bind",
		callback = function(arg1)
			r384.combat.aiming.auto_shoot.enabled = arg1
			r354.update_snapline()
		end,
	})

	r15:splitter()

	r15:toggle({
		name = "Wall Check",
		flag = "wall_check",
		callback = function(arg1)
			r384.combat.aiming.wall_check = arg1
			r354.update_snapline()
		end,
	}):keybind({
		name = "Wall Check",
		flag = "wall_check_bind",
		callback = function(arg1)
			r384.combat.aiming.wall_check = arg1
			r354.update_snapline()
		end,
	})

	r15:toggle({
		name = "Dead Check",
		flag = "dead_check",
		callback = function(arg1)
			r384.combat.aiming.dead_check = arg1
			r354.update_snapline()
			return
		end,
	}):keybind({
		name = "Dead Check",
		flag = "dead_check_bind",
		callback = function(arg1)
			r384.combat.aiming.dead_check = arg1
			r354.update_snapline()
		end,
	})

	r15:toggle({
		name = "Distance Check",
		flag = "distance_check",
		callback = function(arg1)
			r384.combat.aiming.max_distance.enabled = arg1
			r354.update_snapline()
		end,
	}):configuration({ name = "Distance Check Options" }, function(arg1)
		arg1:slider({
			name = "Maximum Distance",
			min = 1,
			max = 3000,
			default = 1300,
			suffix = "m",
			interval = 1,
			flag = "distance_check_value",
			callback = function(arg1)
				r384.combat.aiming.max_distance.value = arg1
				r354.update_snapline()
			end,
		})
	end):keybind({
		name = "Distance Check",
		flag = "distance_check_bind",
		callback = function(arg1)
			r384.combat.aiming.max_distance.enabled = arg1
			r354.update_snapline()
		end,
	})

	r15:splitter()

	r15:toggle({
		name = "Use FOV",
		flag = "use_fov",
		default = true,
		callback = function(arg1)
			r384.combat.aiming.ignore_fov = not arg1
		end,
	}):keybind({
		name = "Use FOV",
		flag = "use_fov_bind",
		callback = function(arg1)
			r384.combat.aiming.ignore_fov = not arg1
		end,
	})

	r15:slider({
		name = "FOV Radius",
		min = 1,
		max = 1250,
		default = 150,
		interval = 1,
		flag = "fov_radius",
		callback = function(arg1)
			r384.combat.aiming.fov_radius = arg1
			r354.update_fov()
		end,
	})

	r15:slider({
		name = "Hitchance",
		min = 1,
		max = 100,
		default = 100,
		suffix = "%",
		interval = 1,
		flag = "hit_chance",
		callback = function(arg1)
			r384.combat.aiming.hitchance = arg1
		end,
	})

	r15:dropdown({
		name = "Hitboxes",
		scrolling = true,
		flag = "hitboxes",
		items = r384.combat.aiming.existing_hitboxes,
		multi = true,
		default = "Head",
		callback = function(s8)
			r384.combat.aiming.hitboxes = type(s8) == "table" and s8 or { s8 }
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r16:toggle({
		name = "Target Indicator",
		flag = "target_indicator",
		callback = function(s12)
			r356.enabled = s12
			r359.set_visible(s12)
		end,
	}):configuration({ name = "Indicator Options" }, function(s1)
		s1:slider({
			name = "Delay",
			min = 0.1,
			max = 5,
			default = 0.2,
			interval = 0.01,
			flag = "indicator_delay",
			callback = function(arg1)
				r356.delay = arg1
			end,
		})

		s1:toggle({
			name = "Animate",
			flag = "animate_indicator",
			callback = function(arg1)
				r356.use_tween = arg1
			end,
		})

		s1:slider({
			slider_type = "normal",
			suffix = "s",
			flag = "indicator_time",
			min = 0.05,
			max = 1,
			default = 0.15,
			interval = 0.01,
			callback = function(arg1)
				r356.time = arg1
			end,
		})

		s1:dropdown({
			name = "Easing Style",
			scrolling = true,
			flag = "indicator_style",
			items = r100.easing_style_index,
			default = "Circular",
			callback = function(arg1)
				r356.style = Enum.EasingStyle[arg1]
			end,
		})

		s1:dropdown({
			name = "Direction",
			flag = "indicator_direction",
			items = r100.easing_direction_index,
			default = "InOut",
			callback = function(arg1)
				r356.direction = Enum.EasingDirection[arg1]
			end,
		})
	end):colorpicker({
		name = "High",
		flag = "indicator_high",
		color = r116(124, 255, 139),
		alpha = 1,
		callback = function(arg1)
			r356.high = arg1
			r359.refresh_healthbar()
		end,
	}):colorpicker({
		name = "Low",
		flag = "indicator_low",
		color = r116(255, 72, 118),
		alpha = 1,
		callback = function(arg1)
			r356.low = arg1
			r359.refresh_healthbar()
		end,
	})

	r16:toggle({
		name = "Inventory Viewer",
		flag = "inventory_viewer",
		callback = r360.set_visible,
	}):configuration({ name = "Inventory Viewer Options" }, function(s26)
		s26:label({ name = "Colors" }):colorpicker({
			name = "Section Title Color",
			flag = "section_title_color",
			color = r116(255, 98, 127),
			alpha = 1,
			callback = function(t36)
				r100.inv_configuration.colors.section_title = r100.to_hex(t36)
				r360.render()
			end,
		}):colorpicker({
			name = "Attachment Color",
			flag = "attachment_color",
			color = r116(224, 224, 224),
			alpha = 1,
			callback = function(t12)
				r100.inv_configuration.colors.attachment = r100.to_hex(t12)
				r360.render()
			end,
		}):colorpicker({
			name = "Stack Color",
			flag = "stack_color",
			color = r116(224, 224, 224),
			alpha = 1,
			callback = function(t22)
				r100.inv_configuration.colors.stack = r100.to_hex(t22)
				r360.render()
			end,
		}):colorpicker({
			name = "Item Name Color",
			flag = "item_name_color",
			color = r116(224, 224, 224),
			alpha = 1,
			callback = function(t12)
				r100.inv_configuration.colors.item_name = r100.to_hex(t12)
				r360.render()
			end,
		}):colorpicker({
			name = "Amount Color",
			flag = "amount_color",
			color = r116(224, 224, 224),
			alpha = 1,
			callback = function(t29)
				r100.inv_configuration.colors.amount = r100.to_hex(t29)
				r360.render()
			end,
		})

		s26:dropdown({
			name = "Inventory Sections",
			multi = true,
			items = { "Hotbar", "Armor", "Miscellaneous", "Containers" },
			default = { "Hotbar", "Armor", "Miscellaneous", "Containers" },
			flag = "inventory_viewer_sections",
			callback = function(arg1)
				r100.inv_configuration.sections = arg1
				r360.render()
			end,
		})

		s26:slider({
			name = "Delay",
			min = 0.25,
			max = 5,
			default = 1,
			interval = 0.01,
			flag = "inventory_viewer_delay",
			callback = function(arg1)
				r100.inv_configuration.delay = arg1
			end,
		})
	end):keybind({
		name = "Inventory Viewer",
		flag = "inventory_viewer_bind",
		callback = r360.set_visible,
	})

	r16:splitter()

	if r351.is_debug() then
		r337(0.1)
	end

	r16:toggle({
		name = "Enable FOV",
		flag = "fov_enabled",
		callback = function(arg1)
			r384.combat.visualization.fov_enabled = arg1
			r354.update_fov()
		end,
	}):configuration({ name = "FOV Options" }, function(s27)
		s27:slider({
			name = "Thickness",
			min = 1,
			max = 5,
			default = 1,
			interval = 1,
			flag = "fov_thickness",
			callback = function(arg1)
				r384.combat.visualization.thickness = arg1
				r354.update_fov()
			end,
		})

		s27:toggle({
			name = "Outline",
			flag = "fov_outline",
			callback = function(arg1)
				r384.combat.visualization.fov_outline = arg1
				r354.update_fov()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "fov_outline_color",
			color = r116(0, 0, 0),
			alpha = 1,
			callback = function(arg1, t10)
				r384.combat.visualization.fov_outline_color = arg1
				r384.combat.visualization.fov_outline_transparency = 1 - t10
				r354.update_fov()
			end,
		})

		s27:toggle({
			name = "FOV Fill",
			flag = "fov_fill",
			callback = function(arg1)
				r384.combat.visualization.fov_fill = arg1
				r354.update_fov()
			end,
		}):colorpicker({
			name = "Gradient Color Left",
			flag = "fov_fill_gradient_left",
			color = r116(255, 98, 127),
			alpha = 0.5,
			callback = function(arg1, t31)
				r384.combat.visualization.fov_fill_color_1 = arg1
				r384.combat.visualization.fov_fill_transparency_1 = 1 - t31
				r354.update_fov()
			end,
		}):colorpicker({
			name = "Gradient Color Right",
			flag = "fov_fill_gradient_right",
			color = r116(203, 79, 104),
			alpha = 0.5,
			callback = function(arg1, t18)
				r384.combat.visualization.fov_fill_color_2 = arg1
				r384.combat.visualization.fov_fill_transparency_2 = 1 - t18
				r354.update_fov()
			end,
		})

		s27:toggle({
			name = "Glow",
			flag = "fov_glow",
			callback = function(arg1)
				r384.combat.visualization.fov_fill_glow = arg1
				r354.update_fov()
			end,
		}):colorpicker({
			name = "Gradient Color Left",
			flag = "fov_fill_glow_gradient_left",
			color = r116(255, 98, 127),
			alpha = 0.5,
			callback = function(arg1, t11)
				r384.combat.visualization.fill_glow_color_1 = arg1
				r384.combat.visualization.fill_glow_transparency_1 = 1 - t11
				r354.update_fov()
			end,
		}):colorpicker({
			name = "Gradient Color Right",
			flag = "fov_fill_glow_gradient_right",
			color = r116(203, 79, 104),
			alpha = 0.5,
			callback = function(arg1, t37)
				r384.combat.visualization.fill_glow_color_2 = arg1
				r384.combat.visualization.fill_glow_transparency_2 = 1 - t37
				r354.update_fov()
			end,
		})

		s27:toggle({
			name = "Spin",
			flag = "fov_spin",
			callback = function(arg1)
				r384.combat.visualization.spin_gradients = arg1
				r354.update_fov()
			end,
		})

		s27:slider({
			slider_type = "normal",
			min = -5,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "fov_spin_speed",
			callback = function(arg1)
				r384.combat.visualization.spin_speed = arg1
			end,
		})
	end):colorpicker({
		name = "Gradient Color Left",
		flag = "fov_gradient_left",
		color = r116(255, 98, 127),
		alpha = 1,
		callback = function(arg1, s36)
			r384.combat.visualization.fov_color_1 = arg1
			r384.combat.visualization.fov_transparency_1 = 1 - s36
			r354.update_fov()
		end,
	}):colorpicker({
		name = "Gradient Color Right",
		flag = "fov_gradient_right",
		color = r116(203, 79, 104),
		alpha = 1,
		callback = function(arg1, s22)
			r384.combat.visualization.fov_color_2 = arg1
			r384.combat.visualization.fov_transparency_2 = 1 - s22
			r354.update_fov()
		end,
	})

	r16:toggle({
		name = "Enable Snapline",
		flag = "snapline_enabled",
		callback = function(arg1)
			r384.combat.visualization.snapline_enabled = arg1
			r354.update_snapline()
		end,
	}):configuration({ name = "Snapline Options" }, function(s17)
		s17:toggle({
			name = "Outline",
			flag = "snapline_outline",
			callback = function(arg1)
				r384.combat.visualization.snapline_outline = arg1
				r354.update_snapline()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "snapline_outline_color",
			color = r116(0, 0, 0),
			alpha = 1,
			callback = function(arg1, t32)
				r384.combat.visualization.snapline_outline_color = arg1
				r384.combat.visualization.snapline_outline_transparency = 1 - t32
				r354.update_snapline()
			end,
		})

		s17:slider({
			name = "Thickness",
			suffix = "px",
			min = 1,
			max = 3,
			default = 1,
			interval = 1,
			flag = "snapline_thickness",
			callback = function(t22)
				r384.combat.visualization.snapline_thickness = t22
			end,
		})
	end):colorpicker({
		name = "Gradient Color Mouse",
		flag = "snapline_gradient_mouse",
		color = r116(255, 98, 127),
		alpha = 1,
		callback = function(arg1, s20)
			r384.combat.visualization.snapline_color_1 = arg1
			r384.combat.visualization.snapline_transparency_1 = 1 - s20
			r354.update_snapline()
		end,
	}):colorpicker({
		name = "Gradient Color Target",
		flag = "snapline_gradient_target",
		color = r116(203, 79, 104),
		alpha = 1,
		callback = function(arg1, s32)
			r384.combat.visualization.snapline_color_2 = arg1
			r384.combat.visualization.snapline_transparency_2 = 1 - s32
			r354.update_snapline()
		end,
	})

	r16:splitter()

	r16:toggle({
		name = "Override Headshot Hitsound",
		flag = "enable_head_hitsound",
		callback = function(arg1)
			r384.combat.visualization.hitsounds.head.enabled = arg1
		end,
	}):configuration({ name = "Hitsound Options" }, function(s34)
		s34:dropdown({
			name = "Sound",
			scrolling = true,
			flag = "head_hitsound_type",
			items = r384.combat.visualization.hitsounds.hitsound_index,
			default = "Neverlose",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.head.sound = arg1

				if not r100.loading and not r100.unloading then
					r354.preview_sound(r100.hitsounds[r384.combat.visualization.hitsounds.head.sound], r384.combat.visualization.hitsounds.head.volume, r384.combat.visualization.hitsounds.head.pitch)
				end
			end,
		})

		s34:slider({
			name = "Volume",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "head_hitsound_volume",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.head.volume = arg1
			end,
		})

		s34:slider({
			name = "Pitch",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "head_hitsound_pitch",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.head.pitch = arg1
			end,
		})
	end)

	r16:toggle({
		name = "Override Body Hitsound",
		flag = "enable_body_hitsound",
		callback = function(arg1)
			r384.combat.visualization.hitsounds.body.enabled = arg1
		end,
	}):configuration({ name = "Hitsound Options" }, function(s33)
		s33:dropdown({
			name = "Sound",
			scrolling = true,
			flag = "body_hitsound_type",
			items = r384.combat.visualization.hitsounds.hitsound_index,
			default = "Cod",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.body.sound = arg1

				if not r100.loading and not r100.unloading then
					r354.preview_sound(r100.hitsounds[r384.combat.visualization.hitsounds.body.sound], r384.combat.visualization.hitsounds.body.volume, r384.combat.visualization.hitsounds.body.pitch)
				end
			end,
		})

		s33:slider({
			name = "Volume",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "body_hitsound_volume",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.body.volume = arg1
			end,
		})

		s33:slider({
			name = "Pitch",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "body_hitsound_pitch",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.body.pitch = arg1
			end,
		})

		return
	end)

	r16:toggle({
		name = "Override Killsound",
		flag = "enable_kill_sound",
		callback = function(arg1)
			r384.combat.visualization.hitsounds.kill.enabled = arg1
		end,
	}):configuration({ name = "Killsound Options" }, function(s15)
		s15:dropdown({
			name = "Sound",
			scrolling = true,
			flag = "killsound_type",
			items = r384.combat.visualization.hitsounds.hitsound_index,
			default = "Landing",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.kill.sound = arg1

				if not r100.loading and not r100.unloading then
					r354.preview_sound(r100.hitsounds[r384.combat.visualization.hitsounds.kill.sound], r384.combat.visualization.hitsounds.kill.volume, r384.combat.visualization.hitsounds.kill.pitch)
				end
			end,
		})

		s15:slider({
			name = "Volume",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "killsound_volume",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.kill.volume = arg1
			end,
		})

		s15:slider({
			name = "Pitch",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "killsound_pitch",
			callback = function(arg1)
				r384.combat.visualization.hitsounds.kill.pitch = arg1
			end,
		})
	end)

	r16:splitter()

	if r351.is_debug() then
		r337(0.1)
	end

	r16:toggle({
		name = "Override Shoot Sound",
		flag = "enable_custom_shoot_sound",
		callback = function(arg1)
			r384.combat.visualization.custom_shoot_sound.enabled = arg1
		end,
	}):configuration({ name = "Shoot Sound Options" }, function(s19)
		s19:dropdown({
			name = "Type",
			scrolling = true,
			flag = "shoot_sound_type",
			items = r384.combat.visualization.custom_shoot_sound.sound_index,
			default = r384.combat.visualization.custom_shoot_sound.sound,
			callback = function(arg1)
				r384.combat.visualization.custom_shoot_sound.sound = arg1

				if not r100.loading and not r100.unloading then
					r354.preview_sound("rbxassetid://" .. r384.combat.visualization.custom_shoot_sound.sounds[r384.combat.visualization.custom_shoot_sound.sound], r384.combat.visualization.custom_shoot_sound.volume, r384.combat.visualization.custom_shoot_sound.pitch)
				end
			end,
		})

		s19:slider({
			name = "Volume",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "shoot_sound_volume",
			callback = function(arg1)
				r384.combat.visualization.custom_shoot_sound.volume = arg1
			end,
		})

		s19:slider({
			name = "Pitch",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "shoot_sound_pitch",
			callback = function(arg1)
				r384.combat.visualization.custom_shoot_sound.pitch = arg1
			end,
		})
	end)

	r16:splitter()

	r16:toggle({
		name = "Bullet Tracers",
		flag = "enable_bullet_tracers",
		callback = function(arg1)
			r384.combat.visualization.bullet_tracers.enabled = arg1
		end,
	}):configuration({ name = "Bullet Tracer Options" }, function(s24)
		s24:dropdown({
			name = "Texture",
			scrolling = true,
			items = { "DNA", "Energy", "Laser", "Lightning", "Neon", "Pulsing" },
			default = "Neon",
			flag = "bullet_tracer_texture",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.texture = arg1
			end,
		})

		s24:slider({
			name = "Texture Speed",
			min = 0.1,
			max = 5,
			default = 1,
			interval = 0.1,
			flag = "bullet_tracer_texture_speed",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.texture_speed = arg1
			end,
		})

		s24:toggle({
			name = "Randomize Curve",
			flag = "randomize_curve",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.randomize_curve = arg1
			end,
		})

		s24:slider({
			name = "Curve Close",
			min = -20,
			max = 20,
			default = 0,
			interval = 0.1,
			flag = "curve_1",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.curve_1 = arg1
			end,
		})

		s24:slider({
			name = "Curve Far",
			min = -20,
			max = 20,
			default = 0,
			interval = 0.1,
			flag = "curve_2",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.curve_2 = arg1
			end,
		})

		s24:slider({
			name = "Curve Segments",
			min = 1,
			max = 75,
			default = 10,
			interval = 0.01,
			flag = "curve_segments",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.segments = arg1
			end,
		})

		s24:slider({
			name = "Width",
			min = 0.01,
			max = 5,
			default = 0.1,
			interval = 0.01,
			flag = "bullet_tracer_width",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.width = arg1
			end,
		})

		s24:slider({
			name = "Lifetime",
			min = 0.1,
			max = 10,
			suffix = "s",
			default = 1.5,
			interval = 0.1,
			flag = "bullet_tracer_lifetime",
			callback = function(arg1)
				r384.combat.visualization.bullet_tracers.lifetime = arg1
			end,
		})
	end):colorpicker({
		name = "Color 1",
		flag = "bullet_tracer_color_1",
		color = r116(255, 98, 127),
		alpha = 1,
		callback = function(arg1, s12)
			r384.combat.visualization.bullet_tracers.color_1 = arg1
			r384.combat.visualization.bullet_tracers.transparency_1 = 1 - s12
		end,
	}):colorpicker({
		name = "Color 2",
		flag = "bullet_tracer_color_2",
		color = r116(203, 79, 104),
		alpha = 1,
		callback = function(arg1, s24)
			r384.combat.visualization.bullet_tracers.color_2 = arg1
			r384.combat.visualization.bullet_tracers.transparency_2 = 1 - s24
		end,
	})

	r16:toggle({
		name = "Hitmarkers",
		flag = "enable_hitmarkers",
		callback = function(arg1)
			r384.combat.visualization.hitmarkers.enabled = arg1
		end,
	}):configuration({ name = "Hitmarker Options" }, function(s19)
		s19:toggle({
			name = "Outline",
			flag = "hitmarker_outline",
			callback = function(t19)
				r384.combat.visualization.hitmarkers.outline = t19
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "hitmarker_outline_color",
			color = r116(0, 0, 0),
			alpha = 1,
			callback = function(arg1, t25)
				r384.combat.visualization.hitmarkers.outline_color = arg1
				r384.combat.visualization.hitmarkers.outline_transparency = 1 - t25
			end,
		})

		s19:dropdown({
			name = "Image",
			flag = "hitmarker_image",
			items = { "Arrow", "Box", "Cross", "Diamond", "Heart", "Plus" },
			default = "Arrow",
			callback = function(arg1)
				r384.combat.visualization.hitmarkers.image = arg1
			end,
		})

		s19:slider({
			name = "Lifetime",
			min = 0.1,
			max = 10,
			suffix = "s",
			default = 1.5,
			interval = 0.1,
			flag = "hitmarker_lifetime",
			callback = function(arg1)
				r384.combat.visualization.hitmarkers.lifetime = arg1
			end,
		})
	end):colorpicker({
		name = "Instance Color",
		flag = "hitmarker_color",
		color = r116(255, 98, 127),
		alpha = 1,
		callback = function(arg1, s31)
			r384.combat.visualization.hitmarkers.color = arg1
			r384.combat.visualization.hitmarkers.transparency = 1 - s31
		end,
	})

	r16:toggle({
		name = "Bullet Impacts",
		flag = "enable_bullet_impacts",
		callback = function(arg1)
			r384.combat.visualization.bullet_impacts.enabled = arg1
		end,
	}):configuration({ name = "Bullet Impact Options" }, function(s2)
		s2:dropdown({
			name = "Material",
			flag = "bullet_impact_material",
			items = { "ForceField", "Glass", "Neon", "SmoothPlastic" },
			default = "ForceField",
			callback = function(arg1)
				r384.combat.visualization.bullet_impacts.material = arg1
			end,
		})

		s2:slider({
			name = "Lifetime",
			min = 0.1,
			max = 10,
			suffix = "s",
			default = 1.5,
			interval = 0.1,
			flag = "bullet_impact_lifetime",
			callback = function(arg1)
				r384.combat.visualization.bullet_impacts.lifetime = arg1
			end,
		})
	end):colorpicker({
		name = "Instance Color",
		flag = "bullet_impact_color",
		color = r116(255, 98, 127),
		alpha = 1,
		callback = function(arg1, s13)
			r384.combat.visualization.bullet_impacts.color = arg1
			r384.combat.visualization.bullet_impacts.transparency = 1 - s13
		end,
	})

	r16:toggle({
		name = "Hit VFX",
		flag = "enable_hit_vfx",
		callback = function(arg1)
			r384.combat.visualization.hit_vfx.enabled = arg1
		end,
	}):configuration({ name = "Hit VFX Options" }, function(s15)
		s15:dropdown({
			name = "Particles",
			multi = true,
			flag = "hit_vfx_texture",
			items = { "Glow", "Shards", "Shine", "Star" },
			default = { "Shards" },
			callback = function(arg1)
				r384.combat.visualization.hit_vfx.particles = arg1
			end,
		})

		s15:slider({
			name = "Rate",
			min = 10,
			max = 100,
			default = 40,
			interval = 1,
			flag = "hit_vfx_rate",
			callback = function(arg1)
				r384.combat.visualization.hit_vfx.rate = arg1
			end,
		})

		s15:slider({
			name = "Lifetime",
			min = 0.1,
			max = 1,
			suffix = "s",
			default = 0.3,
			interval = 0.1,
			flag = "hit_vfx_lifetime",
			callback = function(arg1)
				r384.combat.visualization.hit_vfx.lifetime = arg1
			end,
		})
	end):colorpicker({
		name = "VFX Color",
		flag = "hit_vfx_color",
		color = r116(255, 98, 127),
		alpha = 1,
		callback = function(arg1)
			r384.combat.visualization.hit_vfx.color = arg1
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r156_1:toggle({
		name = "Instant Aim",
		flag = "instant_aim",
		callback = function(arg1)
			r384.combat.gun_mods.instant_aim = arg1
		end,
	})

	r156_1:toggle({
		name = "Instant Bullet",
		flag = "instant_bullet",
		callback = function(arg1)
			r384.combat.gun_mods.instant_bullet = arg1
		end,
	})

	r156_1:toggle({
		name = "Instant Equip",
		flag = "instant_equip",
		callback = function(arg1)
			r384.combat.gun_mods.instant_equip = arg1
		end,
	})

	r156_1:toggle({
		name = "Instant Lean",
		flag = "instant_lean",
		callback = function(arg1)
			r384.combat.gun_mods.instant_lean = arg1
		end,
	})

	r156_1:toggle({
		name = "No Bobbing",
		flag = "no_bobbing",
		callback = function(arg1)
			r384.combat.gun_mods.no_bobbing = arg1
		end,
	})

	r156_1:toggle({
		name = "No Recoil",
		flag = "no_recoil",
		callback = function(arg1)
			r384.combat.gun_mods.no_recoil = arg1
		end,
	})

	r156_1:toggle({
		name = "No Sway",
		flag = "no_sway",
		callback = function(arg1)
			r384.combat.gun_mods.no_sway = arg1
		end,
	})

	r156_1:toggle({
		name = "Remove Muzzle Effects",
		flag = "remove_muzzle_effects",
		callback = function(arg1)
			r384.combat.gun_mods.remove_muzzle_effects = arg1
		end,
	})

	r156_1:toggle({
		name = "Remove Obstructions",
		flag = "remove_obstructions",
		callback = function(arg1)
			r384.combat.gun_mods.remove_obstructions = arg1
		end,
	})

	r156_1:toggle({
		name = "Remove Sprinting Animation",
		flag = "remove_sprinting_animation",
		callback = function(arg1)
			r384.combat.gun_mods.remove_sprint_animation = arg1
		end,
	})

	r156_1:toggle({
		name = "Remove Spread",
		flag = "remove_spread",
		callback = function(arg1)
			r384.combat.gun_mods.remove_spread = arg1
		end,
	})

	r156_1:toggle({
		name = "Unlock Firemodes",
		flag = "unlock_firemodes",
		callback = function(arg1)
			r384.combat.gun_mods.unlock_firemodes = arg1
		end,
	})

	r156_1:toggle({
		name = "Double Tap",
		flag = "double_tap",
		callback = function(arg1)
			r384.combat.gun_mods.double_tap = arg1
		end,
	}):keybind({
		name = "Double Tap",
		flag = "double_tap_bind",
		callback = function(arg1)
			r384.combat.gun_mods.double_tap = arg1
		end,
	})

	r156_1:toggle({
		name = "Rapid Fire",
		flag = "rapid_fire",
		callback = function(arg1)
			r384.combat.gun_mods.rapid_fire.enabled = arg1
		end,
	}):configuration({ name = "Rapid Fire Options" }, function(arg1)
		arg1:slider({
			name = "Fire Rate",
			min = 1,
			max = 100,
			default = 1,
			interval = 1,
			flag = "fire_rate",
			callback = function(arg1)
				r384.combat.gun_mods.rapid_fire.value = arg1
			end,
		})
	end)

	r156_1:toggle({
		name = "Rapid Knife",
		flag = "rapid_knife",
		callback = function(arg1)
			r384.combat.gun_mods.rapid_knife.enabled = arg1
		end,
	}):configuration({ name = "Rapid Knife Options" }, function(arg1)
		arg1:slider({
			name = "Swing Rate",
			min = 1,
			max = 100,
			default = 1,
			interval = 1,
			flag = "swing_rate",
			callback = function(arg1)
				r384.combat.gun_mods.rapid_knife.rate = arg1
			end,
		})
	end)

	if r351.is_debug() then
		r337(0.1)
	end

	r17:toggle({
		name = "Server Desync Resolver",
		flag = "server_desync_resolver",
		callback = function(arg1)
			r384.combat.resolvers.server_desync_resolver.enabled = arg1
			r353.position_verify()
		end,
	}):keybind({
		name = "Server Desync Resolver",
		flag = "server_desync_resolver_bind",
		callback = function(arg1)
			r384.combat.resolvers.server_desync_resolver.enabled = arg1
			r353.position_verify()
		end,
	})

	r17:toggle({
		name = "Stream Sync",
		tooltip = "Loads all player positions in the game",
		flag = "stream_sync",
		callback = function(arg1)
			r384.stream_sync.enabled = arg1
		end,
	}):keybind({
		name = "Stream Async",
		flag = "stream_sync_bind",
		callback = function(arg1)
			r384.stream_sync.enabled = arg1
		end,
	})

	r17:splitter()

	r17:toggle({
		name = "Sit on Resolve",
		flag = "sit",
		callback = function(s9)
			r384.combat.resolvers.use_sit = s9
			return
		end,
	}):keybind({
		name = "Sit on Resolve",
		flag = "sit_bind",
		callback = function(arg1)
			r384.combat.resolvers.use_sit = arg1
		end,
	})

	r17:splitter()

	r17:toggle({
		name = "Underground Resolver",
		flag = "underground_resolver",
		callback = function(arg1)
			r384.combat.resolvers.underground_resolver.enabled = arg1
		end,
	}):configuration({ name = "Underground Resolver Options" }, function(s17)
		s17:slider({
			name = "Depth",
			min = 5,
			max = 50,
			default = 15,
			suffix = "m",
			interval = 1,
			flag = "underground_resolver_depth",
			callback = function(arg1)
				r384.combat.resolvers.underground_resolver.depth = arg1
			end,
		})

		s17:slider({
			name = "Timeout",
			min = 0.1,
			max = 3,
			default = 1,
			suffix = "s",
			interval = 0.1,
			flag = "underground_resolver_timeout",
			callback = function(arg1)
				r384.combat.resolvers.underground_resolver.timeout = arg1
			end,
		})

		s17:dropdown({
			name = "Method",
			flag = "underground_resolver_method",
			items = { "Classic", "CFrame" },
			default = "Classic",
			callback = function(arg1)
				r384.combat.resolvers.underground_resolver.method = arg1
			end,
		})
	end):keybind({
		name = "Underground Resolver",
		mode = "hold",
		flag = "underground_resolver_bind",
		callback = function(arg1)
			r384.combat.resolvers.underground_resolver.bind = arg1
			r353.underground_resolve()
		end,
	})

	r17:toggle({
		name = "Sky Peek",
		flag = "sky_peek",
		callback = function(arg1)
			r384.combat.resolvers.peek.enabled = arg1
		end,
	}):configuration({ name = "Sky Peek Options" }, function(s33)
		s33:slider({
			name = "Height",
			min = 10,
			max = 300,
			default = 30,
			suffix = "m",
			interval = 1,
			flag = "sky_peek_depth",
			callback = function(arg1)
				r384.combat.resolvers.peek.height = arg1
			end,
		})

		s33:slider({
			name = "Timeout",
			min = 0.1,
			max = 3,
			default = 1,
			suffix = "s",
			interval = 0.1,
			flag = "sky_peek_timeout",
			callback = function(arg1)
				r384.combat.resolvers.peek.timeout = arg1
			end,
		})

		s33:dropdown({
			name = "Method",
			flag = "sky_peek_method",
			items = { "Classic", "CFrame" },
			default = "Classic",
			callback = function(arg1)
				r384.combat.resolvers.peek.method = arg1
			end,
		})
	end):keybind({
		name = "Sky Peek",
		mode = "hold",
		flag = "sky_peek_bind",
		callback = function(s33)
			r384.combat.resolvers.peek.bind = s33
			r353.peek_resolve()
			return
		end,
	})

	r17:toggle({
		name = "TP Peek",
		flag = "tp_peek",
		callback = function(arg1)
			r384.combat.resolvers.tp_peek.enabled = arg1
		end,
	}):configuration({ name = "TP Peek Options" }, function(s15)
		s15:slider({
			name = "Height",
			min = 1,
			max = 300,
			default = 50,
			suffix = "m",
			interval = 1,
			flag = "tp_peek_height",
			callback = function(arg1)
				r384.combat.resolvers.tp_peek.height = arg1
			end,
		})

		s15:slider({
			name = "Timeout",
			min = 0.1,
			max = 3,
			default = 1,
			suffix = "s",
			interval = 0.1,
			flag = "tp_peek_timeout",
			callback = function(arg1)
				r384.combat.resolvers.tp_peek.timeout = arg1
			end,
		})

		s15:dropdown({
			name = "Method",
			flag = "tp_peek_method",
			items = { "Classic", "CFrame" },
			default = "Classic",
			callback = function(arg1)
				r384.combat.resolvers.tp_peek.method = arg1
			end,
		})

		return
	end):keybind({
		name = "TP Peek",
		mode = "hold",
		flag = "tp_peek_bind",
		callback = function(arg1)
			r384.combat.resolvers.tp_peek.bind = arg1
			r353.tp_peek_resolve()
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	local r159 = r12_5:column()
	local r6_7 = r12_5:column()
	local r161 = r6_7:column()

	local r158, r159_1, r160 = r159:multi_section({
		names = { "Players", "NPC", "Other" },
	})

	r6_7:section({ name = "ESP Preview" })
	local r15_1 = r161:section({ name = "Options" })

	r160:toggle({
		name = "ESP Enabled",
		flag = "other_esp_enabled",
		callback = function(arg1)
			r384.esp.other.enabled = arg1
		end,
	}):configuration({ name = "ESP Options" }, function(arg1)
		arg1:slider({
			name = "Render Distance",
			min = 1,
			max = 1300,
			default = 1300,
			suffix = "m",
			interval = 1,
			flag = "other_render_distance",
			callback = function(arg1)
				r384.esp.other.render_distance = arg1
			end,
		})
	end):keybind({
		name = "Other ESP",
		flag = "other_esp_enabled_bind",
		callback = function(arg1)
			r384.esp.other.enabled = arg1
		end,
	})

	r160:splitter()

	r160:toggle({
		name = "Exits",
		flag = "exit_enabled",
		callback = function(arg1)
			r384.esp.other.exit.enabled = arg1
			r352.refresh_custom()
		end,
	}):configuration({ name = "Exit Options" }, function(s37)
		s37:toggle({
			name = "Render Outline",
			flag = "exit_outline",
			default = true,
			callback = function(arg1)
				r384.esp.other.exit.outline = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "exit_outline_color",
			color = r116(0, 0, 0),
			callback = function(arg1, t37)
				r384.esp.other.exit.outline_color = arg1
				r384.esp.other.exit.outline_transparency = 1 - t37
				r352.refresh_custom()
			end,
		})

		s37:splitter({ offset = 1 })

		s37:toggle({
			name = "Icon",
			flag = "exit_icon",
			callback = function(arg1)
				r384.esp.other.exit.icon = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Image Color",
			flag = "exit_icon_color",
			color = r116(255, 255, 255),
			callback = function(arg1, t25)
				r384.esp.other.exit.icon_color = arg1
				r384.esp.other.exit.icon_transparency = 1 - t25
				r352.refresh_custom()
			end,
		})

		s37:toggle({
			name = "Distance",
			flag = "exit_distance",
			callback = function(arg1)
				r384.esp.other.exit.distance = arg1
				r352.refresh_custom()
			end,
		})

		s37:splitter({ offset = 1 })

		s37:dropdown({
			name = "Font",
			scrolling = true,
			flag = "exit_font",
			items = r98,
			default = "Tahoma",
			callback = function(arg1)
				r384.esp.other.exit.font = arg1
				r352.refresh_custom()
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = "exit_color",
		color = r116(255, 255, 255),
		callback = function(arg1, s26)
			r384.esp.other.exit.color = arg1
			r384.esp.other.exit.transparency = 1 - s26
			r352.refresh_custom()
		end,
	})

	r160:toggle({
		name = "Vehicles",
		flag = "vehicle_enabled",
		callback = function(arg1)
			r384.esp.other.uaz.enabled = arg1
			r352.refresh_custom()
		end,
	}):configuration({ name = "Vehicle Options" }, function(s26)
		s26:toggle({
			name = "Render Outline",
			flag = "vehicle_outline",
			default = true,
			callback = function(arg1)
				r384.esp.other.uaz.outline = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "vehicle_outline_color",
			color = r116(0, 0, 0),
			callback = function(arg1, t35)
				r384.esp.other.uaz.outline_color = arg1
				r384.esp.other.uaz.outline_transparency = 1 - t35
				r352.refresh_custom()
			end,
		})

		s26:splitter({ offset = 1 })

		s26:toggle({
			name = "Icon",
			flag = "vehicle_icon",
			callback = function(arg1)
				r384.esp.other.uaz.icon = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Image Color",
			flag = "vehicle_icon_color",
			color = r116(255, 255, 255),
			callback = function(arg1, t16)
				r384.esp.other.uaz.icon_color = arg1
				r384.esp.other.uaz.icon_transparency = 1 - t16
				r352.refresh_custom()
			end,
		})

		s26:toggle({
			name = "Distance",
			flag = "vehicle_distance",
			callback = function(arg1)
				r384.esp.other.uaz.distance = arg1
				r352.refresh_custom()
			end,
		})

		s26:splitter({ offset = 1 })

		s26:dropdown({
			name = "Font",
			scrolling = true,
			flag = "vehicle_font",
			items = r98,
			default = "Tahoma",
			callback = function(arg1)
				r384.esp.other.uaz.font = arg1
				r352.refresh_custom()
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = "vehicle_color",
		color = r116(255, 255, 255),
		callback = function(arg1, s3)
			r384.esp.other.uaz.color = arg1
			r384.esp.other.uaz.transparency = 1 - s3
			r352.refresh_custom()
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r160:toggle({
		name = "Corpses",
		flag = "corpse_enabled",
		callback = function(arg1)
			r384.esp.other.body.enabled = arg1
			r352.refresh_custom()
		end,
	}):configuration({ name = "Corpse Options" }, function(s7)
		s7:toggle({
			name = "Render Outline",
			flag = "corpse_outline",
			default = true,
			callback = function(arg1)
				r384.esp.other.body.outline = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "corpse_outline_color",
			color = r116(0, 0, 0),
			callback = function(arg1, t34)
				r384.esp.other.body.outline_color = arg1
				r384.esp.other.body.outline_transparency = 1 - t34
				r352.refresh_custom()
			end,
		})

		s7:splitter({ offset = 1 })

		s7:toggle({
			name = "Icon",
			flag = "body_icon",
			callback = function(arg1)
				r384.esp.other.body.icon = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Image Color",
			flag = "body_icon_color",
			color = r116(255, 255, 255),
			callback = function(arg1, t24)
				r384.esp.other.body.icon_color = arg1
				r384.esp.other.body.icon_transparency = 1 - t24
				r352.refresh_custom()
			end,
		})

		s7:toggle({
			name = "Distance",
			flag = "body_distance",
			callback = function(arg1)
				r384.esp.other.body.distance = arg1
				r352.refresh_custom()
			end,
		})

		s7:splitter({ offset = 1 })

		s7:toggle({
			name = "Local Corpse",
			flag = "highlight_local_corpse",
			callback = function(arg1)
				r384.esp.other.body.highlight_self_body = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Text Color",
			flag = "self_corpse_color",
			color = r116(255, 255, 255),
			callback = function(arg1, t3)
				r384.esp.other.body.self_color = arg1
				r384.esp.other.body.self_transparency = 1 - t3
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Image Color",
			flag = "self_corpse_icon_color",
			color = r116(255, 255, 255),
			callback = function(t37, t38)
				r384.esp.other.body.self_color_image = t37
				r384.esp.other.body.self_transparency_image = 1 - t38
				r352.refresh_custom()
				return
			end,
		})

		s7:splitter({ offset = 1 })

		s7:dropdown({
			name = "Font",
			scrolling = true,
			flag = "corpse_font",
			items = r98,
			default = "Tahoma",
			callback = function(arg1)
				r384.esp.other.body.font = arg1
				r352.refresh_custom()
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = "body_color",
		color = r116(255, 255, 255),
		callback = function(arg1, s20)
			r384.esp.other.body.color = arg1
			r384.esp.other.body.transparency = 1 - s20
			r352.refresh_custom()
		end,
	})

	r160:toggle({
		name = "Dropped Items",
		flag = "item_enabled",
		callback = function(arg1)
			r384.esp.other.item.enabled = arg1
			r352.refresh_custom()
		end,
	}):configuration({ name = "Dropped Item Options" }, function(s35)
		s35:toggle({
			name = "Render Outline",
			flag = "item_outline",
			default = true,
			callback = function(arg1)
				r384.esp.other.item.outline = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "item_outline_color",
			color = r116(0, 0, 0),
			callback = function(arg1, t12)
				r384.esp.other.item.outline_color = arg1
				r384.esp.other.item.outline_transparency = 1 - t12
				r352.refresh_custom()
			end,
		})

		s35:splitter({ offset = 1 })

		s35:toggle({
			name = "Icon",
			flag = "item_icon",
			callback = function(arg1)
				r384.esp.other.item.icon = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Image Color",
			flag = "item_icon_color",
			color = r116(255, 255, 255),
			callback = function(arg1, t23)
				r384.esp.other.item.icon_color = arg1
				r384.esp.other.item.icon_transparency = 1 - t23
				r352.refresh_custom()
			end,
		})

		s35:toggle({
			name = "Distance",
			flag = "item_distance",
			callback = function(arg1)
				r384.esp.other.item.distance = arg1
				r352.refresh_custom()
			end,
		})

		s35:splitter({ offset = 1 })

		s35:dropdown({
			name = "Font",
			scrolling = true,
			flag = "item_font",
			items = r98,
			default = "Tahoma",
			callback = function(arg1)
				r384.esp.other.item.font = arg1
				r352.refresh_custom()
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = "item_color",
		color = r116(255, 255, 255),
		callback = function(arg1, s22)
			r384.esp.other.item.color = arg1
			r384.esp.other.item.transparency = 1 - s22
			r352.refresh_custom()
		end,
	})

	r160:toggle({
		name = "MI24V Helicopter",
		flag = "heli_enabled",
		callback = function(arg1)
			r384.esp.other.heli.enabled = arg1
			r352.refresh_custom()
		end,
	}):configuration({ name = "Heli Options" }, function(s33)
		s33:toggle({
			name = "Render Outline",
			flag = "heli_outline",
			default = true,
			callback = function(arg1)
				r384.esp.other.heli.outline = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Outline Color",
			flag = "heli_outline_color",
			color = r116(0, 0, 0),
			callback = function(arg1, t35)
				r384.esp.other.heli.outline_color = arg1
				r384.esp.other.heli.outline_transparency = 1 - t35
				r352.refresh_custom()
			end,
		})

		s33:splitter({ offset = 1 })

		s33:toggle({
			name = "Icon",
			flag = "heli_icon",
			callback = function(arg1)
				r384.esp.other.heli.icon = arg1
				r352.refresh_custom()
			end,
		}):colorpicker({
			name = "Image Color",
			flag = "heli_icon_color",
			color = r116(255, 255, 255),
			callback = function(arg1, t17)
				r384.esp.other.heli.icon_color = arg1
				r384.esp.other.heli.icon_transparency = 1 - t17
				r352.refresh_custom()
			end,
		})

		s33:toggle({
			name = "Distance",
			flag = "heli_distance",
			callback = function(arg1)
				r384.esp.other.heli.distance = arg1
				r352.refresh_custom()
			end,
		})

		s33:splitter({ offset = 1 })

		s33:dropdown({
			name = "Font",
			scrolling = true,
			flag = "heli_font",
			items = r98,
			default = "Tahoma",
			callback = function(arg1)
				r384.esp.other.heli.font = arg1
				r352.refresh_custom()
			end,
		})
	end):colorpicker({
		name = "Text Color",
		flag = "heli_color",
		color = r116(255, 255, 255),
		callback = function(arg1, s28)
			r384.esp.other.heli.color = arg1
			r384.esp.other.heli.transparency = 1 - s28
			r352.refresh_custom()
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r15_1:dropdown({
		name = "Bounding Type",
		flag = "esp_sizing_type",
		items = { "Static", "Dynamic" },
		default = "Static",
		callback = function(arg1)
			r384.esp.box_type = arg1
		end,
	})

	r15_1:slider({
		name = "Dynamic Padding",
		min = 0.7,
		max = 2,
		default = 1,
		interval = 0.01,
		flag = "dynamic_padding",
		callback = function(arg1)
			r384.esp.dynamic_padding = arg1
		end,
	})

	r15_1:slider({
		name = "Static Width",
		min = 2,
		max = 4,
		default = 3.6,
		interval = 0.1,
		flag = "size_static_x",
		callback = function(arg1)
			r384.esp.box_size = r23(arg1, r384.esp.box_size.Y)
		end,
	})

	r15_1:slider({
		name = "Static Height",
		min = 5,
		max = 5.5,
		default = 5,
		interval = 0.1,
		flag = "size_static_y",
		callback = function(s34)
			r384.esp.box_size = r23(r384.esp.box_size.X, s34)
		end,
	})

	r15_1:splitter()

	r15_1:toggle({
		name = "Display Measurement Unit",
		flag = "esp_measurement_unit_enabled",
		default = true,
		callback = function(arg1)
			r384.esp.show_distance_format = arg1
		end,
	})

	r15_1:dropdown({
		name = "Measurement Unit",
		flag = "esp_measurement_unit",
		items = { "Studs", "Meters" },
		default = "Meters",
		callback = function(s32)
			local s1 = r320(s32)
			r384.esp.distance_unit = s1
			r384.esp.distance_format = r352.format_text(s1 == "studs" and "st" or s1 == "meters" and "m" or "", r384.esp.text_case)
		end,
	})

	r15_1:splitter()

	r15_1:dropdown({
		name = "Font Case",
		flag = "esp_text_case",
		items = { "Uppercase", "Lowercase", "Titlecase" },
		default = "Lowercase",
		tooltip = "Updates the case for ESP labels",
		callback = function(s32)
			r384.esp.text_case = s32
			r384.esp.distance_format = r352.format_text(r384.esp.distance_unit == "studs" and "st" or "m", s32)
			r352.refresh(false)
			r352.refresh(true)
			r352.refresh_custom()
		end,
	})

	r15_1:slider({
		name = "Update Rate",
		suffix = "hz",
		min = 30,
		max = 240,
		default = 240,
		interval = 1,
		flag = "esp_update_rate",
		tooltip = "Lowering this value will result in a boost of performance",
		callback = function(arg1)
			r384.esp.update_rate = arg1
		end,
	})

	r15_1:splitter()
	r15_1:button_holder({})

	r15_1:button({
		name = "Test Healthbar Animation",
		tooltip = "Animates every healthbar from 0 to their current health value",
		callback = function()
			r352.test_animation()
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r352.tab(r158, "esp", false)
	r352.tab(r159_1, "esp.bots", true)
end

if r351.is_debug() then
	r337(0.1)
end

do
	local r165 = r13_2:column()
	local r6_8 = r13_2:column()
	local r168 = r6_8:column()

	local r163, r164 = r165:multi_section({
		names = { "Movement", "Exploits" },
	})

	local r165_1, r166 = r6_8:multi_section({
		names = { "Local", "Chat" },
	})

	local r167, r168_1 = r168:multi_section({
		names = { "Replication", "Visualization" },
	})

	r163:toggle({
		name = "Flyhack",
		flag = "flyhack",
		callback = function(s23)
			r353.toggle_fly(s23)
		end,
	}):configuration({ name = "Flyhack Options" }, function(s19)
		s19:slider({
			name = "Horizontal Speed",
			min = 0.1,
			max = 100,
			interval = 0.1,
			default = 20,
			flag = "flyhack_horizontal_speed",
			callback = function(arg1)
				r384.misc.movement.flyhack.speed_horizontal = arg1
			end,
		})

		s19:slider({
			name = "Vertical Speed",
			min = 0.1,
			max = 100,
			interval = 0.1,
			default = 20,
			flag = "flyhack_vertical_speed",
			callback = function(arg1)
				r384.misc.movement.flyhack.speed_vertical = arg1
			end,
		})

		s19:slider({
			name = "Speed Multiplier",
			min = 0.1,
			max = 10,
			interval = 0.1,
			default = 1,
			flag = "flyhack_multiplier",
			callback = function(arg1)
				r384.misc.movement.flyhack.multiplier = arg1
			end,
		})
	end):keybind({
		name = "Flyhack",
		flag = "flyhack_bind",
		callback = function(s24)
			r353.toggle_fly(s24)
		end,
	})

	r163:toggle({
		name = "Long Jump",
		flag = "long_jump",
		callback = function(arg1)
			r384.misc.movement.long_jump.enabled = arg1
		end,
	}):configuration({ name = "Long Jump Options" }, function(s21)
		s21:slider({
			name = "Forward Force",
			min = 1,
			max = 15,
			interval = 0.1,
			default = 8,
			flag = "forward_force_value",
			callback = function(arg1)
				r384.misc.movement.long_jump.forward_force = arg1
			end,
		})

		s21:slider({
			name = "Upward Force",
			min = 0,
			max = 10,
			interval = 0.1,
			default = 1.5,
			flag = "upward_force_value",
			callback = function(arg1)
				r384.misc.movement.long_jump.upward_force = arg1
			end,
		})

		s21:slider({
			name = "Cooldown",
			min = 0.1,
			max = 3,
			interval = 0.1,
			default = 1,
			flag = "long_jump_cooldown",
			callback = function(arg1)
				r384.misc.movement.long_jump.cooldown = arg1
			end,
		})
	end):keybind({
		name = "Long Jump",
		mode = "hold",
		flag = "long_jump_bind",
		callback = function()
			if not r384.misc.movement.long_jump.enabled then
				return
			end
			r353.long_jump()
		end,
	})

	r163:splitter()

	r163:toggle({
		name = "Speedhack",
		flag = "speed_hack",
		callback = function(arg1)
			r384.misc.movement.speedhack.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	}):configuration({ name = "Speedhack Options" }, function(arg1)
		arg1:slider({
			name = "Speed",
			min = 0.1,
			max = 30,
			interval = 0.1,
			default = 20,
			flag = "speed_hack_value",
			callback = function(arg1)
				r384.misc.movement.speedhack.value = arg1
				r353.update_humanoid(r2_9)
			end,
		})
	end):keybind({
		name = "Speedhack",
		flag = "speed_hack_bind",
		callback = function(arg1)
			r384.misc.movement.speedhack.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	})

	r163:toggle({
		name = "Jumphack",
		flag = "jump_hack",
		callback = function(arg1)
			r384.misc.movement.jumphack.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	}):configuration({ name = "Jumphack Options" }, function(arg1)
		arg1:slider({
			name = "Height",
			min = 0.1,
			max = 20,
			interval = 0.1,
			default = 3,
			flag = "jump_hack_value",
			callback = function(arg1)
				r384.misc.movement.jumphack.value = arg1
				r353.update_humanoid(r2_9)
			end,
		})
	end):keybind({
		name = "Jumphack",
		flag = "jump_hack_bind",
		callback = function(arg1)
			r384.misc.movement.jumphack.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	})

	r163:toggle({
		name = "Gravity",
		flag = "gravity",
		callback = function(arg1)
			r384.misc.movement.gravity.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	}):configuration({ name = "Gravity Options" }, function(arg1)
		arg1:slider({
			name = "Gravity",
			min = 1,
			max = 300,
			interval = 1,
			default = r95.Gravity,
			flag = "gravity_value",
			callback = function(arg1)
				r384.misc.movement.gravity.value = arg1
				r353.update_humanoid(r2_9)
			end,
		})
	end):keybind({
		name = "Gravity",
		flag = "gravity_bind",
		callback = function(arg1)
			r384.misc.movement.gravity.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	})

	r163:toggle({
		name = "Max Slope Angle",
		flag = "max_slope_angle",
		callback = function(arg1)
			r384.misc.movement.max_slope_angle.enabled = arg1
			r353.update_humanoid(r2_9)
		end,
	}):configuration({ name = "Gravity Options" }, function(arg1)
		arg1:slider({
			name = "Slope Angle",
			min = 1,
			max = 89,
			interval = 1,
			default = r95.Gravity,
			flag = "max_slope_angle_value",
			callback = function(arg1)
				r384.misc.movement.max_slope_angle.value = arg1
				r353.update_humanoid(r2_9)
			end,
		})
	end)

	if r351.is_debug() then
		r337(0.1)
	end

	r163:splitter()

	r163:toggle({
		name = "Bunnyhop",
		flag = "remove_jump_cooldown",
		callback = function(arg1)
			r384.misc.movement.remove_jump_cooldown = arg1
		end,
	}):keybind({
		name = "Bunnyhop",
		flag = "remove_jump_cooldown_bind",
		callback = function(arg1)
			r384.misc.movement.remove_jump_cooldown = arg1
			return
		end,
	})

	r163:toggle({
		name = "Remove Fall Damage",
		flag = "remove_fall_damage",
		callback = function(arg1)
			r384.misc.nofall.enabled = arg1
		end,
	}):keybind({
		name = "Remove Fall Damage",
		flag = "remove_fall_damage_bind",
		callback = function()
			r384.misc.nofall.enabled = bool
		end,
	})

	r165_1:toggle({
		name = "Jesus",
		flag = "jesus",
		callback = function(arg1)
			r384.misc.movement.jesus = arg1
		end,
	}):keybind({
		name = "Jesus",
		flag = "jesus_bind",
		callback = function(arg1)
			r384.misc.movement.jesus = arg1
		end,
	})

	r165_1:toggle({
		name = "No Drown",
		flag = "remove_drowning",
		callback = function(arg1)
			r384.misc.movement.no_drown = arg1
			r354.update_water_blur()
		end,
	}):keybind({
		name = "No Drown",
		flag = "remove_drowning_bind",
		callback = function(arg1)
			r384.misc.movement.no_drown = arg1
			r354.update_water_blur()
		end,
	})

	r165_1:toggle({
		name = "No Water Physics",
		flag = "remove_water_physics",
		callback = function(arg1)
			r384.misc.movement.remove_water_physics = arg1
			r353.update_humanoid_state()
		end,
	}):keybind({
		name = "No Water Physics",
		flag = "remove_water_physics_bind",
		callback = function(arg1)
			r384.misc.movement.remove_water_physics = arg1
			r353.update_humanoid_state()
		end,
	})

	r165_1:splitter()

	r165_1:toggle({
		name = "Multi Use",
		flag = "multi_use",
		callback = function(arg1)
			r384.misc.multi_use.enabled = arg1
		end,
	}):configuration({ name = "Multi Use Options" }, function(arg1)
		arg1:slider({
			name = "Times",
			suffix = "x",
			min = 2,
			max = 4,
			default = 3,
			interval = 1,
			flag = "multi_use_times",
			callback = function(arg1)
				r384.misc.multi_use.times = arg1 - 1
			end,
		})
	end):keybind({
		name = "Multi Use",
		flag = "multi_use_bind",
		callback = function(arg1)
			r384.misc.multi_use.enabled = arg1
		end,
	})

	r165_1:toggle({
		name = "Pickup Aura",
		flag = "pickup_aura",
		callback = function(arg1)
			r384.misc.item_aura.enabled = arg1
		end,
	}):configuration({ name = "Pickup Aura Options" }, function(s21)
		s21:slider({
			name = "Scan Interval",
			min = 0.1,
			max = 1,
			default = 1,
			interval = 0.01,
			flag = "pickup_aura_interval",
			callback = function(arg1)
				r384.misc.item_aura.interval = arg1
			end,
		})

		s21:slider({
			name = "Range",
			suffix = "st",
			min = 0.1,
			max = 20,
			default = 8,
			interval = 0.1,
			flag = "pickup_aura_range",
			callback = function(arg1)
				r384.misc.item_aura.range = arg1
			end,
		})
	end):keybind({
		name = "Pickup Aura",
		flag = "pickup_aura_bind",
		callback = function(arg1)
			r384.misc.item_aura.enabled = arg1
		end,
	})

	r166:toggle({
		name = "Trash Talk",
		flag = "trash_talk",
		callback = function(arg1)
			r384.misc.trash_talk.enabled = arg1
		end,
	}):keybind({
		name = "Trash Talk",
		flag = "trash_talk_bind",
		callback = function(s26)
			if not r384.misc.trash_talk.enabled then
				return
			end

			if s26 and not r384.misc.trash_talk.trash_talking then
				r384.misc.trash_talk.trash_talking = true
				local s2_1 = r384.misc.trash_talk.phrases[r320(r384.misc.trash_talk.tt_type)]

				if s2_1 and #s2_1 > 0 then
					local s4_1

					while true do
						s4_1 = s2_1[r308(1, #s2_1)]
						if not (s4_1 ~= r384.misc.trash_talk.last_phrase or #s2_1 == 1) then
							continue
						end
						break
					end

					r384.misc.trash_talk.last_phrase = s4_1
					r277.TextChannels.RBXGeneral:SendAsync(s4_1)
				end
			elseif not s26 then
				r384.misc.trash_talk.trash_talking = false
			end
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r166:dropdown({
		name = "Trash Talk Type",
		flag = "trash_talk_type",
		items = { "Backtrack", "Casual", "Exploit", "Passive" },
		default = "Backtrack",
		callback = function(arg1)
			r384.misc.trash_talk.tt_type = arg1
		end,
	})

	r167:toggle({
		name = "Position Spoofer",
		flag = "position_spoofer",
		callback = function(s29)
			r384.misc.desync.position_spoofer.enabled = s29
			r2_9:SetStateEnabled(Enum.HumanoidStateType.FallingDown, not s29)
		end,
	}):keybind({
		name = "Position Spoofer",
		flag = "position_spoofer_bind",
		callback = function(s22)
			r384.misc.desync.position_spoofer.enabled = s22
			r2_9:SetStateEnabled(Enum.HumanoidStateType.FallingDown, not s22)
		end,
	})

	r167:slider({
		name = "X Offset",
		min = -10,
		max = 10,
		default = 0,
		interval = 0.1,
		flag = "offset_x",
		callback = function(arg1)
			r384.misc.desync.position_spoofer.x = arg1
		end,
	})

	r167:slider({
		name = "Y Offset",
		min = -4,
		max = 6,
		default = 0,
		interval = 0.1,
		flag = "offset_y",
		callback = function(arg1)
			r384.misc.desync.position_spoofer.y = arg1
		end,
	})

	r167:slider({
		name = "Z Offset",
		min = -10,
		max = 10,
		default = 0,
		interval = 0.1,
		flag = "offset_z",
		callback = function(arg1)
			r384.misc.desync.position_spoofer.z = arg1
		end,
	})

	r167:splitter()

	r167:toggle({
		name = "Rotation Spoofer",
		flag = "rotation_spoofer",
		callback = function(arg1)
			r384.misc.desync.rotation_spoofer.enabled = arg1
		end,
	}):configuration({ name = "Rotation Spoofer Options" }, function(s6)
		s6:toggle({
			name = "Spin Roll",
			flag = "spin_roll",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.roll.enabled = arg1
			end,
		}):keybind({
			name = "Spin Roll",
			flag = "spin_roll_bind",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.roll.enabled = arg1
			end,
		})

		s6:slider({
			slider_type = "normal",
			suffix = "",
			min = 0.1,
			max = 25,
			default = 1,
			interval = 0.1,
			flag = "spin_roll_speed",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.roll.speed = arg1
			end,
		})

		s6:toggle({
			name = "Spin Pitch",
			flag = "spin_pitch",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.pitch.enabled = arg1
			end,
		}):keybind({
			name = "Spin Pitch",
			flag = "spin_pitch_bind",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.pitch.enabled = arg1
			end,
		})

		s6:slider({
			slider_type = "normal",
			suffix = "",
			min = 0.1,
			max = 25,
			default = 1,
			interval = 0.1,
			flag = "spin_pitch_speed",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.pitch.speed = arg1
			end,
		})

		s6:toggle({
			name = "Spin Yaw",
			flag = "spin_yaw",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.yaw.enabled = arg1
			end,
		}):keybind({
			name = "Spin Yaw",
			flag = "spin_yaw_bind",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.yaw.enabled = arg1
			end,
		})

		s6:slider({
			slider_type = "normal",
			suffix = "",
			min = 0.1,
			max = 25,
			default = 1,
			interval = 0.1,
			flag = "spin_yaw_speed",
			callback = function(arg1)
				r384.misc.desync.rotation_spoofer.spin.yaw.speed = arg1
			end,
		})
	end):keybind({
		name = "Rotation Spoofer",
		flag = "rotation_spoofer_bind",
		callback = function(arg1)
			r384.misc.desync.rotation_spoofer.enabled = arg1
		end,
	})

	r167:slider({
		name = "Roll",
		min = -180,
		max = 180,
		default = 0,
		interval = 1,
		flag = "rotation_roll",
		callback = function(arg1)
			r384.misc.desync.rotation_spoofer.roll = arg1
		end,
	})

	r167:slider({
		name = "Pitch",
		min = -180,
		max = 180,
		default = 0,
		interval = 1,
		flag = "rotation_pitch",
		callback = function(arg1)
			r384.misc.desync.rotation_spoofer.pitch = arg1
		end,
	})

	r167:slider({
		name = "Yaw",
		min = -180,
		max = 180,
		default = 0,
		interval = 1,
		flag = "rotation_yaw",
		callback = function(arg1)
			r384.misc.desync.rotation_spoofer.yaw = arg1
		end,
	})

	r167:splitter()

	if r351.is_debug() then
		r337(0.1)
	end

	r167:toggle({
		name = "Play Animation",
		flag = "play_animation",
		callback = function(arg1)
			r384.misc.desync.animations.enabled = arg1
			r355.update_animation()
		end,
	}):configuration({ name = "Animation Options" }, function(s13)
		s13:textbox({
			flag = "animation_id",
			tooltip = "Using abnormal animations may result in detection",
			max = 30,
			placeholder = "Enter Animation ID",
			callback = function(t17)
				if not t17 or t17 == "" then
					return
				end
				local t2_1 = t17:gsub("^rbxassetid://", "")

				if not t2_1:match("^%d+$") then
					r100:notification({ text = "Invalid animation ID. Please enter a valid numeric asset ID.", flashing = true, time = 5 })

					r100.output.create_output({
						text = "Invalid animation ID provided.",
						prefix = "WARN",
						color = r100.colors.warning,
					})

					return
				end

				r384.misc.desync.animations.animation = "rbxassetid://" .. t2_1
				r355.update_animation()
			end,
		})

		s13:slider({
			name = "Time Position",
			min = 0,
			max = 15,
			default = 0,
			interval = 0.0001,
			flag = "animation_time_position",
			callback = function(arg1)
				r384.misc.desync.animations.time_position = arg1

				if r384.misc.desync.animations.enabled then
					r355.update_time_position()
				end
			end,
		})

		s13:slider({
			name = "Speed",
			min = 0,
			max = 10,
			default = 0,
			interval = 0.1,
			flag = "spoofer_animation_speed",
			callback = function(arg1)
				r384.misc.desync.animations.speed = arg1

				if r384.misc.desync.animations.enabled then
					r355.update_animation_speed()
				end

				return
			end,
		})
	end):keybind({
		name = "Animation",
		flag = "play_animation_bind",
		callback = function(arg1)
			r384.misc.desync.animations.enabled = arg1
			r355.update_animation()
		end,
	})

	r167:splitter()

	r167:toggle({
		name = "Custom Pitch",
		flag = "pitch",
		callback = function(arg1)
			r384.misc.pitch.enabled = arg1
			r353.update_pitch()
		end,
	}):keybind({
		name = "Custom Pitch",
		flag = "pitch_bind",
		callback = function()
			r384.misc.pitch.enabled = bool
			r353.update_pitch()
		end,
	})

	r167:slider({
		slider_type = "normal",
		min = -0.7,
		max = 0.7,
		interval = 0.1,
		flag = "pitch_value",
		callback = function(arg1)
			r384.misc.pitch.value = arg1
			r353.update_pitch()
		end,
	})

	r168_1:toggle({
		name = "Visualize Server Position",
		flag = "server_position_visualizer",
		callback = function(arg1)
			r384.misc.desync.visualization.server.enabled = arg1
			r354.update_visualizer()
		end,
	}):configuration({ name = "Cham Options" }, function(s29)
		s29:slider({
			name = "Glow Intensity",
			min = 1,
			max = 5,
			default = 1.5,
			interval = 0.01,
			flag = "server_position_glow_intensity",
			callback = function(arg1)
				r384.misc.desync.visualization.server.color.f = arg1
				r354.update_visualizer()
			end,
		})

		s29:dropdown({
			name = "Type",
			flag = "server_position_visualizer_material",
			items = { "Default", "Flat", "Shaded" },
			default = "Default",
			callback = function(arg1)
				r384.misc.desync.visualization.server.cham_type = arg1
				r354.update_visualizer()
			end,
		})
	end):colorpicker({
		name = "Instance Color",
		flag = "server_position_visualizer_color",
		color = r116(255, 98, 127),
		callback = function(arg1, s22)
			r384.misc.desync.visualization.server.color.c = arg1
			r384.misc.desync.visualization.server.color.t = 1 - s22
			r354.update_visualizer()
		end,
	})

	r168_1:toggle({
		name = "Third Person Only",
		flag = "server_position_third_person_only",
		callback = function(arg1)
			r384.misc.desync.visualization.server.third_person_only = arg1
			r354.update_visualizer()
		end,
	})

	r168_1:toggle({
		name = "Tween Position",
		tooltip = "Smooths visualizer movement for appearance, may slightly reduce positional accuracy",
		flag = "server_position_tween",
		callback = function(arg1)
			r384.misc.desync.visualization.server.use_tween = arg1
		end,
	})

	r168_1:toggle({
		name = "Animate",
		tooltip = "Animates the visualizer using your local character's current animations",
		default = true,
		flag = "server_position_animation",
		callback = function(arg1)
			r384.misc.desync.visualization.server.visualize_animations = arg1
		end,
	})

	r164:button_holder({})

	r164:button({
		name = "Reset Character",
		confirm = true,
		tooltip = "Instantly resets your character (counts as a death)",
		callback = function()
			local s8 = r26(r3_7, "Health")

			if s8 then
				local s10 = r26(s8, "Drowning")

				if s10 then
					s10:FireServer(250)
				end
			end
		end,
	})

	r164:splitter()

	r164:dropdown({
		name = "Detonation Mode",
		flag = "detonation_mode",
		items = { "All", "One" },
		default = "All",
		callback = function(arg1)
			r384.misc.detonation_mode = arg1
		end,
	})

	r164:button_holder({})

	r164:button({
		name = "Explode Landmines",
		confirm = true,
		tooltip = "Detonates every Outpost landmine currently placed on the map",
		callback = function()
			r353.explode_landmines()
		end,
	})

	r164:dropdown({
		name = "UAZ Spawn Type",
		flag = "uaz_spawn_type",
		items = { "Farthest", "Nearest", "Random" },
		default = "Nearest",
		callback = function(arg1)
			r384.misc.uaz_spawn_type = arg1
		end,
	})

	r164:button_holder({})

	r164:button({
		name = "Spawn UAZ",
		confirm = true,
		tooltip = "Teleports the nearest available UAZ vehicle directly to your position",
		callback = function()
			r353.spawn_uaz()
		end,
	})

	r164:splitter()

	r164:dropdown({
		name = "Traders",
		flag = "selected_traders",
		multi = true,
		items = { "Anna", "Blaze", "Boss", "Designer", "Jake", "Mihkel", "Nurse", "Seryozha" },
		default = { "Blaze", "Mihkel", "Nurse", "Seryozha" },
		callback = function(arg1)
			r384.misc.selected_npcs = arg1
		end,
	})

	r164:button_holder({})

	r164:button({
		name = "Teleport Traders",
		confirm = true,
		tooltip = "Summons all trader NPCs and positions them in a circle around you",
		callback = function()
			r353.teleport_npcs()
		end,
	})

	r164:button({
		name = "Unlock Traders",
		tooltip = "Unlocks trader NPCs that are normally locked behind quests",
		callback = function()
			r353.unlock_npcs()
		end,
	})

	r164:splitter()

	if r351.is_debug() then
		r337(0.1)
	end

	local r6_9

	r6_9 = {
		category_order = {
			"Keys",
			"Weapons",
			"Attachments",
			"Ammo",
			"Magazines",
			"Armor",
			"Clothing",
			"Backpacks",
			"Fabrics",
			"Utility",
			"Medical",
			"Treasure",
			"Trash",
			"Rubles",
		},
		get_rank = function(s24)
			for s26, s27 in r1_2, r6_9.category_order, nil do
				if s27 == s24 then
					return s26
				end
			end

			return 999
		end,
		get_item_props = function(s29)
			local s27 = r26(r96, s29)
			local s1 = s27 and r26(s27, "ItemProperties")
			if not s1 then
				return nil
			end

			return {
				ItemType = s1:GetAttribute("ItemType") or r26(s1, "ItemType") and s1.ItemType.Value or "",
				SlotType = s1:GetAttribute("SlotType") or r26(s1, "SlotType") and s1.SlotType.Value or "",
				Cost = tonumber(s1:GetAttribute("Cost") or s1:GetAttribute("Price")) or 0,
			}
		end,
		get_category = function(s8, s9)
			if not s9 then
				return "Trash"
			end
			local s4 = s9.ItemType
			local s2 = s9.SlotType
			local s5 = s9.Cost
			if s4 == "Material" and s8 == "Rubles" then
				return "Rubles"
			end

			if s4 == "Key" or s4 == "Keycard" then
				return "Keys"
			end

			if s4 == "Ammo" then
				return "Ammo"
			end

			if s4 == "Magazine" then
				return "Magazines"
			end

			if s4 == "RangedWeapon" and s2 ~= "FlareGun" or s4 == "Grenade" then
				return "Weapons"
			end

			if s4 == "Handle" or s4 == "Stock" or s4 == "Front" or s4 == "Muzzle" or s4 == "Sight" or s4 == "Extra" then
				return "Attachments"
			end
			local s7_5 = s4 == "Clothing"

			if s7_5 then
				s7_5 = s2 == "ClothingChestRig" or s2 == "ClothingHeadware" or s2 == "ClothingLegArmor"
			end

			if s7_5 or s4 == "Visor" then
				return "Armor"
			end
			local s7_6 = s4 == "Clothing"

			if s7_6 then
				s7_6 = s2 == "ClothingMask" or s2 == "ClothingShirt" or s2 == "ClothingPants" or s2 == "ClothingGloves"
			end

			if s7_6 or s4 == "Filter" then
				return "Clothing"
			end

			if s4 == "Clothing" and s2 == "ClothingBackpack" then
				return "Backpacks"
			end

			if s4 == "Barter" and string.find(s8, "Fabric") then
				return "Fabrics"
			end

			if s4 == "Medical" then
				return "Medical"
			end

			if s4 == "Equipment" or s4 == "Buildable" or s4 == "RepairKit" then
				return "Utility"
			end
			return s5 > 1000 and "Treasure" or "Trash"
		end,
		sort_items = function(arg1)
			local s1 = {}
			local s3 = {}

			for _, s21 in r1_2, arg1, nil do
				r327(s21.cat == "Rubles" and s3 or s1, s21)
			end

			r329(s1, function(t30, t31)
				if t30.cat ~= t31.cat then
					return r6_9.get_rank(t30.cat) < r6_9.get_rank(t31.cat)
				end

				if t30.cat == "Treasure" and t30.cost ~= t31.cost then
					return t30.cost > t31.cost
				end
				local t1_1 = t30.name .. "|" .. t30.skin
				local t2 = t31.name .. "|" .. t31.skin
				if t1_1 ~= t2 then
					return t1_1 < t2
				end

				if t30.durability ~= t31.durability then
					return t30.durability > t31.durability
				end

				if t30.loadedAmmo ~= t31.loadedAmmo then
					return t30.loadedAmmo > t31.loadedAmmo
				end
				return t30.amount ~= t31.amount and t30.amount > t31.amount
			end)

			r329(s3, function(arg1, arg2)
				return arg1.amount > arg2.amount
			end)

			local s5_1 = {}

			for _, s21_1 in r1_2, s1, nil do
				s5_1[#s5_1 + 1] = s21_1.obj
			end

			for _, s21_2 in r1_2, s3, nil do
				s5_1[#s5_1 + 1] = s21_2.obj
			end

			return s5_1, #s3
		end,
		sort_folder = function(s21, s22)
			local s10 = r26(r122, "InventoryMove")
			if not s10 or not s21 then
				return
			end
			local s5 = {}
			local s12 = {}
			local s14 = {}
			local s8 = 0
			local s19, s20 = s21:GetChildren()
			local s16 = nil

			for _, s4 in r1_2, s19, s20 do
				local s24 = s4:GetAttribute("Slot")

				if s24 then
					local s25, s26 = s24:match("^([a-zA-Z]+)(%d+)$")

					if s25 and s26 then
						local s6_1 = tonumber(s26)

						if s8 < s6_1 then
							s8 = s6_1
						end

						r327(s5, s4)
						s12[s24] = s4
						s14[s4] = s24
						s16 = s25
					end
				end
			end

			if #s5 == 0 or not s16 then
				return
			end
			s8 = s22 or s8
			local s25_1 = {}

			for _, s6_2 in r1_2, s5, nil do
				local s28 = r6_9.get_item_props(s6_2.Name)

				r327(s25_1, {
					obj = s6_2,
					name = s6_2.Name,
					slot = s14[s6_2],
					cat = r6_9.get_category(s6_2.Name, s28),
					cost = s28 and s28.Cost or 0,
					durability = s6_2:GetAttribute("Durability") or 0,
					skin = s6_2:GetAttribute("Skin") or "",
					loadedAmmo = s6_2:GetAttribute("LoadedAmmo") or 0,
					amount = s6_2:GetAttribute("Amount") or 1,
				})
			end

			local s7, s25_2 = r6_9.sort_items(s25_1)
			local s27 = #s7 - s25_2
			local s2_2 = {}

			for s3_3 = 1, s27 do
				s2_2[s7[s3_3]] = s16 .. s3_3
			end

			for s3_4 = 1, s25_2 do
				s2_2[s7[s27 + s3_4]] = s16 .. s8 - s25_2 + s3_4
			end

			for _, s8_1 in r1_2, s7, nil do
				local s19_1 = s2_2[s8_1]
				local s18 = s14[s8_1]

				if s19_1 and s18 ~= s19_1 then
					local s3_6 = s12[s19_1]
					s10:FireServer(s18, s19_1, s21, s21, nil)
					r337(0.02)
					s12[s19_1] = s8_1
					s14[s8_1] = s19_1

					if s3_6 then
						s12[s18] = s3_6
						s14[s3_6] = s18
					else
						s12[s18] = nil
					end
				end
			end
		end,
		sort_inventory = function()
			local s9 = r26(r25, r97.Name)
			local s6 = s9 and r26(s9, "Inventory")
			if not s6 then
				return
			end
			local s7, s8 = s6:GetChildren()

			for _, s8_1 in r1_2, s7, s8 do
				local s9_1 = r26(s8_1, "Inventory")

				if s9_1 then
					r6_9.sort_folder(s9_1)
				end
			end

			r100:notification({ text = "Inventory sorted successfully", flashing = true, time = 5 })
		end,
		sort_vault = function()
			local s4 = r26(r25, r97.Name)
			local s3 = s4 and r26(s4, "VaultStorage")
			local s2 = s3 and r26(s3, "Inventory")
			if not s2 then
				r100:notification({ text = "Vault not found", flashing = true, time = 5 })
				return
			end
			r6_9.sort_folder(s2, 200)
			r100:notification({ text = "Vault sorted successfully", flashing = true, time = 5 })
		end,
	}

	r164:button_holder({})

	r164:button({
		name = "Sort Inventory",
		confirm = true,
		tooltip = "Sorts all items in your inventory by category and value",
		callback = function()
			r336(r6_9.sort_inventory)
		end,
	})

	r164:button({
		name = "Sort Vault",
		confirm = true,
		tooltip = "Sorts all items in your vault by category and value",
		callback = function()
			r336(r6_9.sort_vault)
		end,
	})
end

do
	local r173 = r14_2:column()
	local r6_10 = r14_2:column()
	local r175 = r6_10:column()
	local r171 = r173:section({ name = "Notifiers", toggle = false })

	local r172, r173_1 = r6_10:multi_section({
		names = { "World", "Lighting" },
	})

	local r174, r175_1, r176 = r175:multi_section({
		names = { "Viewmodel", "Local", "Crosshair" },
	})

	r172:toggle({
		name = "Remove Grass",
		flag = "remove_grass",
		callback = function(arg1)
			sethiddenproperty(r95.Terrain, "Decoration", not arg1)
		end,
	})

	r172:toggle({
		name = "Remove Foliage",
		flag = "remove_foliage",
		callback = function(arg1)
			r384.visuals.world.remove_foliage = arg1
			r354.update_foliage()
		end,
	})

	r172:toggle({
		name = "Remove Trees",
		flag = "remove_trees",
		callback = function(arg1)
			r384.visuals.world.remove_trees = arg1
			r354.update_foliage()
		end,
	})

	r172:splitter()

	for _, r16_1 in r1_2, { "Grass", "Ground", "LeafyGrass", "Rock", "Sand" }, nil do
		r384.terrain[r16_1] = r95.Terrain:GetMaterialColor(Enum.Material[r16_1])

		r384.visuals.world.terrain_colors[r16_1] = r384.visuals.world.terrain_colors[r16_1] or {
			enabled = false,
			color = r384.terrain[r16_1],
		}

		r172:toggle({
			name = r16_1 .. " Color",
			flag = r16_1:lower() .. "_toggle",
			callback = function(arg1)
				r384.visuals.world.terrain_colors[r16_1].enabled = arg1
				r354.update_terrain()
			end,
		}):colorpicker({
			name = r16_1 .. " Color",
			flag = r16_1:lower() .. "_color",
			color = r384.visuals.world.terrain_colors[r16_1].color,
			callback = function(arg1)
				r384.visuals.world.terrain_colors[r16_1].color = arg1
				r354.update_terrain()
			end,
		})
	end

	r173_1:toggle({
		name = "Override Ambient",
		flag = "override_ambient",
		callback = function(arg1)
			r384.visuals.lighting.override_ambient = arg1
			r354.update_lighting()
		end,
	}):colorpicker({
		name = "Ambient Color",
		flag = "ambient_color",
		color = r297("#FFFFFF"),
		alpha = 1,
		callback = function(arg1)
			r384.visuals.lighting.ambient = arg1
			r354.update_lighting()
		end,
	}):colorpicker({
		name = "Outdoor Ambient Color",
		flag = "outdoor_ambient_color",
		color = r297("#FFFFFF"),
		alpha = 1,
		callback = function(s17)
			r384.visuals.lighting.outdoor_ambient = s17
			r354.update_lighting()
		end,
	})

	r173_1:splitter()

	r173_1:toggle({
		name = "Override Brightness",
		flag = "override_brightness",
		callback = function(arg1)
			r384.visuals.lighting.override_brightness = arg1
			r354.update_lighting()
		end,
	})

	r173_1:slider({
		name = "Brightness",
		min = 0,
		max = 75,
		default = 2,
		interval = 1,
		flag = "brightness_value",
		callback = function(arg1)
			r384.visuals.lighting.brightness = arg1
			r354.update_lighting()
		end,
	})

	r173_1:splitter()

	if r351.is_debug() then
		r337(0.1)
	end

	r173_1:toggle({
		name = "Override Clock Time",
		flag = "override_clock_time",
		callback = function(arg1)
			r384.visuals.lighting.override_clocktime = arg1
			r354.update_lighting()
		end,
	})

	r173_1:slider({
		name = "Clock Time",
		min = 0,
		max = 24,
		default = 22.9,
		interval = 0.1,
		flag = "clock_time",
		callback = function(arg1)
			r384.visuals.lighting.clock_time = arg1
			r354.update_lighting()
		end,
	})

	r173_1:splitter()

	r173_1:toggle({
		name = "Override Fog",
		flag = "override_fog",
		callback = function(arg1)
			r384.visuals.lighting.atmosphere.override_fog = arg1
			r354.update_atmosphere()
		end,
	}):configuration({ name = "Fog Options" }, function(s4)
		s4:slider({
			name = "Density",
			min = 0,
			max = 1,
			default = 0,
			interval = 0.01,
			flag = "atmosphere_density",
			callback = function(arg1)
				r384.visuals.lighting.atmosphere.density = arg1
				r354.update_atmosphere()
			end,
		})

		s4:slider({
			name = "Offset",
			min = 0,
			max = 1,
			default = 0,
			interval = 0.01,
			flag = "atmosphere_offset",
			callback = function(arg1)
				r384.visuals.lighting.atmosphere.offset = arg1
				r354.update_atmosphere()
			end,
		})
	end)

	r173_1:toggle({
		name = "Override Fog Colors",
		flag = "override_fog_colors",
		callback = function(arg1)
			r384.visuals.lighting.atmosphere.override_fog_colors = arg1
			r354.update_atmosphere()
		end,
	}):colorpicker({
		name = "Color",
		flag = "atmosphere_color",
		color = r116(255, 255, 255),
		callback = function(arg1)
			r384.visuals.lighting.atmosphere.color = arg1
			r354.update_atmosphere()
		end,
	}):colorpicker({
		name = "Decay",
		flag = "atmosphere_decay",
		color = r116(255, 255, 255),
		callback = function(arg1)
			r384.visuals.lighting.atmosphere.decay = arg1
			r354.update_atmosphere()
		end,
	})

	r173_1:splitter()

	r173_1:toggle({
		name = "Override Glare",
		flag = "override_glare",
		callback = function(arg1)
			r384.visuals.lighting.atmosphere.override_glare = arg1
			r354.update_atmosphere()
		end,
	}):configuration({ name = "Glare Options" }, function(arg1)
		arg1:slider({
			name = "Glare",
			min = 0,
			max = 10,
			default = 0,
			interval = 0.1,
			flag = "glare",
			callback = function(arg1)
				r384.visuals.lighting.atmosphere.glare = arg1
				r354.update_atmosphere()
			end,
		})
	end)

	r173_1:toggle({
		name = "Override Haze",
		flag = "override_haze",
		callback = function(arg1)
			r384.visuals.lighting.atmosphere.override_haze = arg1
			r354.update_atmosphere()
		end,
	}):configuration({ name = "Haze Options" }, function(arg1)
		arg1:slider({
			name = "Haze",
			min = 0,
			max = 10,
			default = 0,
			interval = 0.1,
			flag = "haze",
			callback = function(arg1)
				r384.visuals.lighting.atmosphere.haze = arg1
				r354.update_atmosphere()
			end,
		})
	end)

	r173_1:toggle({
		name = "Override Bloom",
		flag = "override_bloom",
		callback = function(arg1)
			r384.visuals.lighting.bloom.override_bloom = arg1
			r354.update_bloom()
		end,
	}):configuration({ name = "Bloom Options" }, function(s18)
		s18:slider({
			name = "Intensity",
			min = 0,
			max = 10,
			default = 0.5,
			interval = 0.1,
			flag = "bloom_intensity",
			callback = function(arg1)
				r384.visuals.lighting.bloom.intensity = arg1
				r354.update_bloom()
			end,
		})

		s18:slider({
			name = "Size",
			min = 0,
			max = 100,
			default = 56,
			interval = 0.1,
			flag = "bloom_size",
			callback = function(arg1)
				r384.visuals.lighting.bloom.size = arg1
				r354.update_bloom()
			end,
		})

		s18:slider({
			name = "Threshold",
			min = -1,
			max = 1,
			default = 0.8,
			interval = 0.1,
			flag = "bloom_threshold",
			callback = function(arg1)
				r384.visuals.lighting.bloom.threshold = arg1
				r354.update_bloom()
			end,
		})
	end)

	if r351.is_debug() then
		r337(0.1)
	end

	r174:toggle({
		name = "Override Viewmodel",
		flag = "viewmodel_override",
		callback = function(arg1)
			r384.visuals.viewmodel.enabled = arg1
			r354.update_viewmodel()
		end,
	}):configuration({ name = "Viewmodel Options" }, function(s33)
		s33:toggle({
			name = "Remove Clothing",
			flag = "viewmodel_remove_clothes",
			callback = function(arg1)
				r384.visuals.viewmodel.remove_clothing = arg1
				r354.update_viewmodel()
			end,
		})

		s33:toggle({
			name = "Apply Highlight",
			flag = "viewmodel_highlight",
			callback = function(arg1)
				r384.visuals.viewmodel.highlight.enabled = arg1
				r354.update_viewmodel()
			end,
		}):colorpicker({
			name = "Instance Fill Color",
			flag = "viewmodel_highlight_fill",
			alpha = 0.5,
			color = r116(255, 98, 127),
			callback = function(arg1, t11)
				r384.visuals.viewmodel.highlight.fill.color = arg1
				r384.visuals.viewmodel.highlight.fill.transparency = 1 - t11
				r354.update_viewmodel()
			end,
		}):colorpicker({
			name = "Instance Outline Color",
			flag = "viewmodel_highlight_outline",
			alpha = 0.5,
			color = r116(255, 98, 127),
			callback = function(arg1, t14)
				r384.visuals.viewmodel.highlight.outline.color = arg1
				r384.visuals.viewmodel.highlight.outline.transparency = 1 - t14
				r354.update_viewmodel()
			end,
		})

		s33:slider({
			name = "Fill Transparency Multiplier",
			min = -20,
			max = 20,
			default = 1,
			interval = 0.1,
			flag = "viewmodel_fill_mult",
			callback = function(arg1)
				r384.visuals.viewmodel.highlight.fill.multiplier = arg1
				r354.update_viewmodel()
			end,
		})

		s33:slider({
			name = "Outline Transparency Multiplier",
			min = -20,
			max = 20,
			default = 1,
			interval = 0.1,
			flag = "viewmodel_outline_mult",
			callback = function(t10)
				r384.visuals.viewmodel.highlight.outline.multiplier = t10
				r354.update_viewmodel()
			end,
		})
	end)

	r174:toggle({
		name = "Override Weapon",
		flag = "viewmodel_weapon",
		callback = function(arg1)
			r384.visuals.viewmodel.weapon_enabled = arg1
			r354.update_viewmodel()
		end,
	}):configuration({ name = "Weapon Options" }, function(arg1)
		arg1:dropdown({
			name = "Weapon Material",
			flag = "viewmodel_weapon_material",
			items = { "ForceField", "Glass", "Neon", "SmoothPlastic" },
			default = "ForceField",
			callback = function(arg1)
				r384.visuals.viewmodel.weapon_material = arg1
				r354.update_viewmodel()
			end,
		})
	end):colorpicker({
		name = "Instance Color",
		flag = "viewmodel_weapon_color",
		color = r116(255, 98, 127),
		callback = function(arg1, s13)
			r384.visuals.viewmodel.weapon_color = arg1
			r384.visuals.viewmodel.weapon_transparency = r306(0.99, 1 - s13)
			r354.update_viewmodel()
		end,
	})

	r174:toggle({
		name = "Override Arms",
		flag = "viewmodel_arms",
		callback = function(arg1)
			r384.visuals.viewmodel.arms_enabled = arg1
			r354.update_viewmodel()
		end,
	}):configuration({ name = "Arm Options" }, function(arg1)
		arg1:dropdown({
			name = "Arms Material",
			flag = "viewmodel_arms_material",
			items = { "ForceField", "Glass", "Neon", "SmoothPlastic" },
			default = "ForceField",
			callback = function(arg1)
				r384.visuals.viewmodel.arms_material = arg1
				r354.update_viewmodel()
			end,
		})
	end):colorpicker({
		name = "Instance Color",
		flag = "viewmodel_arms_color",
		color = r116(255, 98, 127),
		callback = function(arg1, s16)
			r384.visuals.viewmodel.arms_color = arg1
			r384.visuals.viewmodel.arms_transparency = 1 - s16
			r354.update_viewmodel()
		end,
	})

	r174:toggle({
		name = "Override Viewmodel Offset",
		flag = "viewmodel_offset",
		callback = function(arg1)
			r384.visuals.viewmodel.offset.enabled = arg1
			r354.update_viewmodel()
		end,
	}):configuration({ name = "Offset Options" }, function(s5)
		s5:slider({
			name = "X Offset",
			min = -5,
			max = 5,
			default = 0,
			interval = 0.01,
			flag = "viewmodel_x",
			callback = function(arg1)
				r384.visuals.viewmodel.offset.x = arg1
				r354.update_viewmodel()
			end,
		})

		s5:slider({
			name = "Y Offset",
			min = -5,
			max = 5,
			default = 0,
			interval = 0.01,
			flag = "viewmodel_y",
			callback = function(arg1)
				r384.visuals.viewmodel.offset.y = arg1
				r354.update_viewmodel()
			end,
		})

		s5:slider({
			name = "Z Offset",
			min = -5,
			max = 5,
			default = 0,
			interval = 0.01,
			flag = "viewmodel_z",
			callback = function(arg1)
				r384.visuals.viewmodel.offset.z = arg1
				r354.update_viewmodel()
			end,
		})
	end)

	if r351.is_debug() then
		r337(0.1)
	end

	r175_1:toggle({
		name = "Third Person",
		flag = "third_person",
		callback = function(arg1)
			r384.visuals.local_self.third_person = arg1
			r354.update_visualizer()
			r353.update_pitch()
		end,
	}):configuration({ name = "Third Person Options" }, function(s29)
		s29:slider({
			name = "Distance",
			min = 1,
			max = 20,
			default = 2,
			suffix = "m",
			interval = 0.1,
			flag = "third_person_distance",
			callback = function(arg1)
				r384.visuals.local_self.third_person_value = arg1
			end,
		})

		s29:toggle({
			name = "Visualize Pitch",
			flag = "visualize_pitch",
			callback = function(arg1)
				r384.visuals.local_self.visualize_pitch = arg1
				r353.update_pitch()
			end,
		})
	end):keybind({
		name = "Third Person",
		flag = "third_person_bind",
		callback = function(arg1)
			r384.visuals.local_self.third_person = arg1
			r354.update_visualizer()
			r353.update_pitch()
		end,
	})

	r175_1:splitter()

	r175_1:toggle({
		name = "Self Chams",
		flag = "self_chams",
		callback = function(arg1)
			r384.visuals.local_self.player_chams = arg1
			r354.update_character()
		end,
	}):configuration({ name = "Self Cham Options" }, function(s4)
		s4:dropdown({
			name = "Material",
			flag = "self_chams_material",
			items = { "ForceField", "Glass", "Neon", "SmoothPlastic" },
			default = "ForceField",
			callback = function(arg1)
				r384.visuals.local_self.player_material = arg1
				r354.update_character()
			end,
		})

		s4:toggle({
			name = "Remove Clothing",
			flag = "self_remove_clothing",
			callback = function(arg1)
				r384.visuals.local_self.remove_clothing = arg1
				r354.update_character()
			end,
		})
	end):colorpicker({
		name = "Instance Color",
		flag = "self_chams_color",
		color = r116(255, 98, 127),
		callback = function(arg1, s18)
			r384.visuals.local_self.player_color = arg1
			r384.visuals.local_self.player_transparency = r306(0.99, 1 - s18)
			r354.update_character()
		end,
	})

	r175_1:splitter()

	r175_1:toggle({
		name = "Aspect Ratio",
		flag = "aspect_ratio",
		callback = function(arg1)
			r384.visuals.local_self.aspect_ratio.enabled = arg1
			r354.update_camera()
		end,
	}):configuration({ name = "Aspect Ratio Options" }, function(s29)
		s29:slider({
			name = "Vertical",
			min = 1,
			max = 100,
			default = 100,
			interval = 0.1,
			suffix = "%",
			flag = "ratio_vertical",
			callback = function(arg1)
				r384.visuals.local_self.aspect_ratio.vertical = arg1
				r354.update_camera()
			end,
		})

		s29:slider({
			name = "Horizontal",
			min = 1,
			max = 100,
			default = 100,
			interval = 0.1,
			suffix = "%",
			flag = "ratio_horizontal",
			callback = function(arg1)
				r384.visuals.local_self.aspect_ratio.horizontal = arg1
				r354.update_camera()
			end,
		})

		return
	end)

	r175_1:toggle({
		name = "Override FOV",
		flag = "override_fov",
		callback = function(s29)
			r384.visuals.local_self.override_fov = s29

			if s29 then
				r384.visuals.local_self.default_fov = r25[r97.Name].Settings.GameplaySettings:GetAttribute("DefaultFOV")
				r25[r97.Name].Settings.GameplaySettings:SetAttribute("DefaultFOV", r384.visuals.local_self.fov_value)
			else
				r25[r97.Name].Settings.GameplaySettings:SetAttribute("DefaultFOV", r384.visuals.local_self.default_fov)
			end
		end,
	})

	r175_1:slider({
		name = "FOV Value",
		min = 1,
		max = 120,
		default = 90,
		interval = 1,
		flag = "fov_value",
		callback = function(s8)
			r384.visuals.local_self.fov_value = s8

			if r384.visuals.local_self.override_fov then
				r25[r97.Name].Settings.GameplaySettings:SetAttribute("DefaultFOV", s8)
			end
		end,
	})

	r175_1:splitter()

	r175_1:toggle({
		name = "Enable Removals",
		flag = "screen_removals",
		callback = function(arg1)
			r384.visuals.ui_removals.enabled = arg1
			r354.update_ui()
		end,
	})

	r175_1:dropdown({
		name = "Removals",
		scrolling = true,
		flag = "remove_elements",
		items = { "Flashbang", "Gas Mask", "Parallax", "Visor", "Inventory Background", "Inventory Blur", "Inventory Decoration" },
		default = { "Visor" },
		multi = true,
		callback = function(arg1)
			r384.visuals.ui_removals.elements = arg1
			r354.update_ui()
		end,
	})

	r175_1:toggle({
		name = "Override Whiz Volume",
		flag = "override_whiz",
		callback = function(arg1)
			r384.visuals.local_self.override_whiz = arg1
			r354.update_whiz()
		end,
	})

	r175_1:slider({
		slider_type = "normal",
		min = 0,
		max = 2,
		default = 0.5,
		interval = 0.01,
		flag = "whiz_volume",
		callback = function(arg1)
			r384.visuals.local_self.whiz_volume = arg1
			r354.update_whiz()
		end,
	})

	r175_1:splitter()

	r175_1:toggle({
		name = "Look Indicator",
		flag = "look_indicator",
		callback = function(s30)
			r362.update_menu(s30)
		end,
	}):colorpicker({
		name = "Text Color",
		flag = "look_text_color",
		color = r116(255, 98, 127),
		callback = function(arg1, arg2)
			r362.set_colors(arg1, nil, 1 - arg2, nil)
		end,
	}):colorpicker({
		name = "Outline Color",
		flag = "look_outline_color",
		color = r116(0, 0, 0),
		callback = function(arg1, arg2)
			r362.set_colors(nil, arg1, nil, 1 - arg2)
		end,
	})

	r175_1:slider({
		name = "Threshold",
		suffix = "%",
		min = 75,
		max = 100,
		default = 85,
		interval = 1,
		flag = "look_threshold",
		callback = function(s27)
			r362.update_threshold(s27)
		end,
	})

	r175_1:toggle({
		name = "Session Data",
		flag = "session_data",
		callback = function(s14)
			r361.update_visibility("outline", s14)
		end,
	}):keybind({
		name = "Session Data",
		flag = "session_data_bind",
		callback = function(s22)
			r361.update_visibility("outline", s22)
		end,
	})

	r175_1:dropdown({
		name = "Data Elements",
		flag = "data_elements",
		items = { "Player Count", "Server Time", "Weather", "KD", "Kills", "Deaths" },
		multi = true,
		default = { "KD", "Kills", "Deaths" },
		callback = function(s36)
			for _, s39 in r1_2, r384.session_data_map, nil do
				r361.update_visibility(s39, false)
			end

			for _, s37 in r1_2, s36, nil do
				local s1 = r384.session_data_map[s37]

				if s1 then
					r361.update_visibility(s1, true)
				end
			end
		end,
	})

	r175_1:toggle({
		name = "Spoof Client Data",
		flag = "spoof_client_data",
		callback = function(arg1)
			r384.visuals.data_spoofer.enabled = arg1
			r354.update_data()
		end,
	}):configuration({ name = "Data Options" }, function(s27)
		s27:dropdown({
			name = "Server Info Elements",
			flag = "client_info_elements",
			items = { "Version", "User ID", "Location", "Job ID" },
			default = { "User ID" },
			multi = true,
			callback = function(t20)
				r384.visuals.data_spoofer.server_info.spoof_version = r330(t20, "Version") ~= nil
				r384.visuals.data_spoofer.server_info.spoof_userid = r330(t20, "User ID") ~= nil
				r384.visuals.data_spoofer.server_info.spoof_location = r330(t20, "Location") ~= nil
				r384.visuals.data_spoofer.server_info.spoof_server = r330(t20, "Job ID") ~= nil
				r354.update_data()
			end,
		})

		s27:splitter({ offset = 1 })

		s27:dropdown({
			name = "Removals",
			flag = "client_info_removals",
			items = { "Network Data", "Client FPS", "Server FPS" },
			default = { "Network Data", "Client FPS" },
			multi = true,
			callback = function(t24)
				r384.visuals.data_spoofer.removals.hide_data = r330(t24, "Network Data") ~= nil
				r384.visuals.data_spoofer.removals.hide_client_fps = r330(t24, "Client FPS") ~= nil
				r384.visuals.data_spoofer.removals.hide_server_fps = r330(t24, "Server FPS") ~= nil
				r354.update_data()
			end,
		})
	end)

	r175_1:toggle({
		name = "Hide UI",
		flag = "hide_ui",
		callback = function(arg1)
			r384.visuals.ui_hide.enabled = arg1
			r354.update_ui()
		end,
	}):keybind({
		name = "Hide UI",
		flag = "hide_ui_bind",
		callback = function(s28)
			if not r384.visuals.ui_hide.enabled then
				return
			end
			r384.visuals.ui_hide.hide = s28
			r354.update_ui()
		end,
	})

	r175_1:dropdown({
		name = "Hide Elements",
		flag = "hide_elements",
		items = { "Main Gui", "Server Info" },
		multi = true,
		default = { "Main Gui", "Server Info" },
		callback = function(arg1)
			local s1 = { ["Main Gui"] = "MainGui", ["Server Info"] = "ServerInfo" }
			local s3 = {}

			for _, s37 in r1_2, arg1, nil do
				local s4 = s1[s37]

				if s4 then
					r327(s3, s4)
				end
			end

			r384.visuals.ui_hide.elements = s3
			r354.update_ui()
		end,
	})

	if r351.is_debug() then
		r337(0.1)
	end

	r176:toggle({
		name = "Enable Crosshair",
		flag = "crosshair",
		callback = function(arg1)
			r384.visuals.crosshair.enabled = arg1
			r354.update_crosshair()
		end,
	}):colorpicker({
		name = "Outer Gradient Color",
		flag = "crosshair_color_outer",
		color = r116(255, 98, 127),
		callback = function(arg1, s36)
			r384.visuals.crosshair.color_1 = arg1
			r384.visuals.crosshair.color_transparency_1 = 1 - s36
			r354.update_crosshair()
		end,
	}):colorpicker({
		name = "Inner Gradient Color",
		flag = "crosshair_color_inner",
		color = r116(255, 98, 127),
		callback = function(arg1, s7)
			r384.visuals.crosshair.color_2 = arg1
			r384.visuals.crosshair.color_transparency_2 = 1 - s7
			r354.update_crosshair()
		end,
	})

	r176:toggle({
		name = "Outline",
		default = true,
		flag = "crosshair_outline",
		callback = function(arg1)
			r384.visuals.crosshair.outline = arg1
			r354.update_crosshair()
		end,
	}):colorpicker({
		name = "Outline Color",
		flag = "crosshair_outline_color",
		color = r116(0, 0, 0),
		callback = function(arg1, s35)
			r384.visuals.crosshair.outline_color = arg1
			r384.visuals.crosshair.outline_transparency = 1 - s35
			r354.update_crosshair()
		end,
	})

	r176:dropdown({
		name = "Position",
		flag = "crosshair_position",
		items = { "Center", "Mouse", "Target" },
		default = { "Center" },
		callback = function(arg1)
			r384.visuals.crosshair.position = arg1
			r354.update_crosshair()
		end,
	})

	r176:slider({
		name = "Gap",
		min = 3,
		max = 100,
		default = 18,
		interval = 1,
		flag = "crosshair_gap",
		callback = function(arg1)
			r384.visuals.crosshair.gap = arg1
			r354.update_crosshair()
		end,
	})

	r176:slider({
		name = "Length",
		min = 1,
		max = 75,
		default = 37,
		interval = 1,
		flag = "crosshair_length",
		callback = function(s25)
			r384.visuals.crosshair.length = s25
			r354.update_crosshair()
		end,
	})

	r176:slider({
		name = "Width",
		min = 1,
		max = 4,
		default = 1,
		interval = 1,
		flag = "crosshair_width",
		callback = function(arg1)
			r384.visuals.crosshair.width = arg1
			r354.update_crosshair()
		end,
	})

	r176:slider({
		name = "Rotation",
		min = -180,
		max = 180,
		default = 0,
		interval = 1,
		flag = "crosshair_rotation",
		callback = function(arg1)
			r384.visuals.crosshair.rotation = arg1
			r354.update_crosshair()
		end,
	})

	r176:toggle({
		name = "Spin",
		flag = "crosshair_spin",
		callback = function(arg1)
			r384.visuals.crosshair.spin = arg1
			r354.update_crosshair()
		end,
	})

	r176:slider({
		name = "Spin Speed",
		min = -5,
		max = 5,
		default = 1,
		interval = 0.1,
		flag = "crosshair_spin_speed",
		callback = function(arg1)
			r384.visuals.crosshair.spin_speed = arg1
			r354.update_crosshair()
		end,
	})

	r176:toggle({
		name = "Resize",
		flag = "crosshair_resize",
		callback = function(arg1)
			r384.visuals.crosshair.animation.resize = arg1
			return
		end,
	}):configuration({ name = "Animation Options" }, function(s35)
		s35:toggle({
			name = "Animate Length",
			flag = "crosshair_animate_length",
			callback = function(arg1)
				r384.visuals.crosshair.animation.length.resize = arg1
			end,
		})

		s35:slider({
			name = "Value",
			min = 1,
			max = 75,
			default = 19,
			interval = 1,
			flag = "crosshair_length_value",
			callback = function(arg1)
				r384.visuals.crosshair.animation.length.value = arg1
			end,
		})

		s35:splitter({ offset = 1 })

		s35:toggle({
			name = "Animate Gap",
			flag = "crosshair_animate_gap",
			callback = function(arg1)
				r384.visuals.crosshair.animation.gap.resize = arg1
			end,
		})

		s35:slider({
			name = "Value",
			min = 3,
			max = 100,
			default = 36,
			interval = 1,
			flag = "crosshair_gap_value",
			callback = function(arg1)
				r384.visuals.crosshair.animation.gap.value = arg1
			end,
		})

		s35:splitter({ offset = 1 })

		s35:slider({
			name = "Speed",
			min = 0.01,
			max = 5,
			default = 1,
			interval = 0.01,
			flag = "crosshair_animation_speed",
			callback = function(arg1)
				r384.visuals.crosshair.animation.speed = arg1
			end,
		})
	end)

	r171:toggle({
		name = "Report Notifications",
		flag = "report_notify",
		callback = function(arg1)
			r384.misc.notifications.report.enabled = arg1
		end,
	}):configuration({ name = "Report Notification Options" }, function(s35)
		s35:toggle({
			name = "Sound",
			flag = "report_sound",
			callback = function(arg1)
				r384.misc.notifications.report.sound = arg1
			end,
		})

		s35:slider({
			name = "Volume",
			min = 1,
			max = 2,
			default = 1,
			interval = 0.1,
			flag = "report_volume",
			callback = function(arg1)
				r384.misc.notifications.report.volume = arg1
			end,
		})

		s35:toggle({
			name = "Flashing",
			flag = "report_flashing",
			callback = function(arg1)
				r384.misc.notifications.report.flashing = arg1
			end,
		})

		s35:slider({
			name = "Duration",
			min = 1,
			max = 10,
			default = 3,
			interval = 0.1,
			flag = "report_notification_duration",
			callback = function(arg1)
				r384.misc.notifications.report.duration = arg1
			end,
		})
	end)

	r171:button_holder({})

	r171:button({
		name = "Show Current Reports",
		tooltip = "Displays how many times you have been reported with a notification",
		callback = function()
			r354.update_report_count()
		end,
	})

	r171:splitter()

	if r351.is_debug() then
		r337(0.1)
	end

	r171:toggle({
		name = "Enable Join Notifications",
		flag = "join_notify",
		callback = function(arg1)
			r384.misc.notifications.join.enabled = arg1
		end,
	}):configuration({ name = "Join Notification Options" }, function(s19)
		s19:toggle({
			name = "Display KD",
			flag = "join_kd",
			callback = function(arg1)
				r384.misc.notifications.join.kd = arg1
			end,
		})

		s19:toggle({
			name = "Display Hours Played",
			flag = "join_time",
			callback = function(arg1)
				r384.misc.notifications.join.hours_played = arg1
			end,
		})

		s19:slider({
			name = "Duration",
			min = 1,
			max = 10,
			default = 3,
			interval = 0.1,
			flag = "join_notification_duration",
			callback = function(t7)
				r384.misc.notifications.join.duration = t7
				return
			end,
		})
	end)

	r171:toggle({
		name = "Enable Leave Notifications",
		flag = "leave_notify",
		callback = function(arg1)
			r384.misc.notifications.leave.enabled = arg1
		end,
	}):configuration({ name = "Leave Notification Options" }, function(arg1)
		arg1:slider({
			name = "Duration",
			min = 1,
			max = 10,
			default = 3,
			interval = 0.1,
			flag = "leave_notification_duration",
			callback = function(arg1)
				r384.misc.notifications.leave.duration = arg1
			end,
		})
	end)

	r171:toggle({
		name = "Flashing Notifications",
		flag = "player_notification_flashing",
		callback = function(arg1)
			r384.misc.notifications.flashing = arg1
		end,
	})

	r171:splitter()

	r171:toggle({
		name = "Flare Calls",
		flag = "flare_calls",
		callback = function(arg1)
			r384.visuals.world.notifications.flare_fired = arg1
		end,
	})

	r171:toggle({
		name = "Supply Drops",
		flag = "supply_drops",
		callback = function(arg1)
			r384.visuals.world.notifications.airdrop_dropped = arg1
		end,
	})

	r171:toggle({
		name = "Notification Sound",
		flag = "supply_sound",
		callback = function(arg1)
			r384.visuals.world.notifications.sound = arg1
		end,
	})

	r171:slider({
		name = "Notification Volume",
		min = 0.1,
		max = 2,
		default = 1,
		interval = 0.1,
		flag = "supply_volume",
		callback = function(arg1)
			r384.visuals.world.notifications.volume = arg1
		end,
	})

	r171:toggle({
		name = "Flashing Notifications",
		flag = "notification_flashing",
		callback = function(arg1)
			r384.visuals.world.notifications.flashing = arg1
		end,
	})

	r171:slider({
		name = "Notification Duration",
		min = 0.5,
		max = 3,
		default = 3,
		interval = 0.1,
		flag = "notification_duration",
		callback = function(arg1)
			r384.visuals.world.notifications.duration = arg1
		end,
	})
end

if r351.is_debug() then
	print("[backtrack.tech:project_delta] running init")
	r337(0.15)
end

r100.config_list_update()

for r15_3, r16_2 in r357.preset, nil, nil do
	pcall(function()
		r100:update_theme(r15_3, r16_2)
	end)
end

if r351.is_debug() then
	r337(0.1)
end

for r18, r19 in r1_2, r100.module_names, nil do
	if not r100.checks.modules[r18] then
		r337(0.25)
		local r59 = ("Caching asset '%s' for first-time import..."):format(r19)
		r100:notification({ text = r59, flashing = true, time = 4.5 })

		r100.output.create_output({
			text = r59,
			prefix = "WARN",
			color = r100.colors.warning,
		})
	end
end

if r351.is_debug() then
	r337(0.1)
end

r100.old_config = r100:get_config()
r337(0.1)

do
	local r173_2 = r178(0.6, r100.tweening_style, r100.tweening_direction)

	log_and_notify = function(s23, s24, s25, arg4)
		r100:notification({ text = s23, flashing = true, time = arg4 })
		r100.output.create_output({ text = s23, prefix = s24, color = s25 })
	end

	local r174_1 = r100:create("BlurEffect", { Parent = r124, Size = 0, Enabled = true })
	r179:Create(r174_1, r173_2, { Size = 32 }):Play()

	local r12_7 = r100:create("ScreenGui", {
		IgnoreGuiInset = true,
		Enabled = true,
		DisplayOrder = 999999,
		Parent = gethui(),
	})

	local r13_4 = r100:create("Frame", {
		AnchorPoint = r23(0.5, 0.5),
		Position = r22(0.5, 0, 0.5, 0),
		Size = r22(1, 0, 1, 0),
		BackgroundColor3 = r116(0, 0, 0),
		BackgroundTransparency = 1,
		ZIndex = 9999999,
		Parent = r12_7,
	})

	r179:Create(r13_4, r178(0.4, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 0.4 }):Play()

	local r14_3 = r100:create("ImageLabel", {
		AnchorPoint = r23(0.5, 0.5),
		Position = r22(0.5, 0, 1.2, 0),
		Image = r100.images.Logo,
		BackgroundTransparency = 1,
		Size = r22(0.6, 0, 0.6, 0),
		ImageColor3 = r116(255, 255, 255),
		ImageTransparency = 1,
		ZIndex = 9999999,
		Parent = r12_7,
	})

	r179:Create(r14_3, r178(0.9, r100.tweening_style, r100.tweening_direction), {
		Position = r22(0.5, 0, 0.5, 0),
	}):Play()

	local r19_1 = { ImageTransparency = 0 }
	r179:Create(r14_3, r178(0.7, r100.tweening_style, r100.tweening_direction), r19_1):Play()
	r11_2.set_menu_visibility(true)

	if r100.checks.first_time then
		log_and_notify("Initializing backtrack.tech for the first time...", "WARN", r100.colors.warning, 5)
	else
		log_and_notify("Initializing backtrack.tech...", "INFO", r100.colors.information, 5)
	end

	r100.output.create_output({
		text = "Initializing client bypass...",
		prefix = "WARN",
		color = r100.colors.warning,
	})

	r100.output.create_output({
		text = "Initialized client bypass successfully!",
		prefix = "SUCCESS",
		color = r100.colors.success,
	})

	r339(1.5, function()
		r179:Create(r174_1, r178(0.5, r100.tweening_style, r100.tweening_direction), { Size = 0 }):Play()
		r179:Create(r13_4, r178(0.3, r100.tweening_style, r100.tweening_direction), { BackgroundTransparency = 1 }):Play()

		r339(0.5, function()
			if r174_1 then
				r174_1:Destroy()
			end
		end)

		r179:Create(r14_3, r173_2, { ImageTransparency = 1 }):Play()

		r339(0.65, function()
			if r13_4 then
				r13_4:Destroy()
			end

			if r14_3 then
				r14_3:Destroy()
			end

			if r12_7 then
				r12_7:Destroy()
			end

			if r100.checks.first_time then
				log_and_notify("Successfully initialized backtrack.tech for the first time!", "SUCCESS", r100.colors.success, 7.5)
			else
				log_and_notify("Loaded backtrack.tech successfully!", "SUCCESS", r100.colors.success, 5.5)
			end

			r100.loading = false
		end)
	end)
end
