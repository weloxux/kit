require "butt" -- Buttons
require "config"

local function Proxy(f) -- Proxy function for audio
	return setmetatable({}, {__index = function(self, k)
		local v = f(k)
		rawset(self, k, v)
		return v
	end})
end

s = Proxy(function(k) return love.audio.newSource(love.sound.newSoundData("sample/"..k..".wav")) end)

function changesample(nsample)
	butt.func("love.audio.play(" .. tostring(nsample) .. ")")
end

function hit(sample, num)
	love.audio.stop(sample)
	love.audio.play(sample)
end

function love.load()
	print("Welcome to kit!")
	print("Samples should be in ./sample")

	width, height = love.graphics.getDimensions()

	pads = {}
	for k,v in pairs(instruments) do
		print(v.label)
		if v.active == true then
			table.insert(pads, v)
		end
	end
	count = #pads

	columns = count / 2
	rows = 2

	buttheight = height / 2
	buttwidth = width / columns

	for i=1,2 do
		local y = 0 + (buttheight * (i - 1))
		for j=1,columns do
			local num = ((i - 1) * columns) + j
			local x = 0 + (buttwidth * (j - 1))
			local pad = pads[num]
			butt.new(x,y, buttwidth,buttheight, pad.key .. "\n" .. pad.label, "hit(s." .. pad.wave .. ")", num, pad.key)
		end
	end
end

function love.update(dt)
	butt.update(dt)
end

function love.draw()
	butt.draw()
end
