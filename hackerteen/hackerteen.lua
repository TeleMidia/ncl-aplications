local deck, animation, player, cursor = {}, {}, {{},{}}, 1

-- draw card
local function draw ()
	return table.remove(deck)
end

-- game setup
function setup()
	local W, H = canvas:attrSize()
	math.randomseed( os.time() )
	player[1].hand = {}
	player[1].pos=1
	player[1].x=(-10*W)/1024
	player[1].y=(350*H)/768
	player[1].pic=canvas:new("pictures/yago/Yago1.png")
	player[2].hand={}
	player[2].pos=23
	player[2].x=(855*W)/1024
	player[2].y=(350*H)/768
	player[2].pic=canvas:new("pictures/impius/Impius1.png")
	-- deck building and shuffling
	deck = {}
	for i=1,5 do for j=1,5 do
		deck[ #deck+1 ] = j
	end end
	for i=1,300 do
		local j, k = math.random(#deck), math.random(#deck)
		deck[j], deck[k] = deck[k], deck[j]
	end
	-- draw starting hand
	for i=1,5 do
		player[1].hand[i], player[2].hand[i] = draw(), draw()
	end
end

-- draw screen
local cvs_fundo = canvas:new('pictures/fundo_final.gif')
local cvs_estrela = canvas:new('pictures/estrela.png')
local cvs_C = canvas:new('pictures/C.png')
local cvs_X = canvas:new('pictures/X.png')
local cvs_deck2 = canvas:new('pictures/deck2.png')
local cvs_pontos = {}
for i=0, 5 do
    cvs_pontos[i] = canvas:new('pictures/numbers/ponto' .. i .. '.gif' )
end
local cvs_cartas = {}
for i=1, 5 do
	cvs_cartas[i] = canvas:new('pictures/carta' .. i .. '.png')
end
local cvs_numbers = {}
for i=0, 15 do
    cvs_numbers[i] = canvas:new('pictures/numbers/' .. i .. '.png')
end

function redraw()
	local W, H = canvas:attrSize()
	canvas:attrColor(0, 0, 0, 0)
	canvas:drawRect('fill', 0, 0, W, H)
	canvas:compose(0,0, cvs_fundo)

	if player[1].score<3 and player[2].score<3 and player[1].hand[cursor] and player[1].pos + player[1].hand[cursor] <= player[2].pos then
		canvas:compose((player[1].pos + player[1].hand[cursor]-1)*((43*W)/1024), (520*H)/768, cvs_estrela)
	end

	if player[2].score<3 then canvas:compose(player[1].x, player[1].y, player[1].pic) end
	if player[1].score<3 then canvas:compose(player[2].x, player[2].y, player[2].pic) end

	canvas:compose((603*W)/1024, (159*H)/768, cvs_pontos[player[1].score])
	canvas:compose((710*W)/1024, (159*H)/768, cvs_pontos[player[2].score])

	if player[1].score<3 and player[2].score<3 then
		for i=1,5 do
			if player[1].hand[i] then
				canvas:compose( ((150*(i-1)+50)*W)/1024 , (635*H)/768, cvs_cartas[player[1].hand[i]] )
				if cursor==i then 
                    local cvs
					if player[1].pos+player[1].hand[i]<=player[2].pos then
						cvs = cvs_C
					else 
						cvs = cvs_X
					end
					canvas:compose( ((150*(i-1)+50)*W)/1024, (630*H)/768, cvs )
				end
			end
		end
		
		canvas:compose((830*W)/1024, (630*H)/768 , cvs_deck2)
		canvas:compose( (825*W)/1024, (580*H)/768, cvs_numbers[#deck])
	end
	canvas:flush()
end

-- event handler
function handler(evt)
	if evt.type=='presentation' and evt.class=='ncl' and evt.action=='start' then
		redraw()
	elseif evt.class=='user' then
		if player[1].lost then
			--print(' lost player 1 ')
			step(evt)
			setup()
			player[2].score = player[2].score + 1
			player[1].lost = nil
			redraw()
			if player[2].score>=3 then createAnimation(typingAnimation) end
		elseif player[2].lost then
			--print(' lost player 2 ')
			step(evt)
			setup()
			player[1].score = player[1].score + 1
			player[2].lost = nil
			redraw()
			if player[1].score>=3 then createAnimation(typingAnimation) end
		else
			step(evt)
			redraw()
		end
	elseif evt.class == 'key' and evt.type == 'press' then
		if player[1].score<3 and player[2].score<3 then
			if evt.key=='CURSOR_LEFT' then
				moveLeft()
			elseif evt.key=='CURSOR_RIGHT' then
				moveRight()
			elseif evt.key=='ENTER' then
				enter()
			elseif evt.key=='INFO' or evt.key=='RED' then
				event.post('out', {class='ncl', type='presentation', transition='stops'})
				animation = {}
			end
		end
		redraw()
	end
end

-- starting function called once
function start()
	setup()
	player[1].score = 0
	player[2].score = 0
	-- pictures moving
	player[1].moving = {}
	for i=1, 4 do player[1].moving[i] = canvas:new('pictures/yago/Yago' .. i .. '.png') end
	player[2].moving = {}
	for i=1, 4 do player[2].moving[i] = canvas:new('pictures/impius/Impius' .. i .. '.png') end
	-- pictures losing
	player[1].losing = {}
	for i=1, 13 do player[1].losing[i] = canvas:new('pictures/yago/YagoDuelo' .. i .. '.png') end
	player[2].losing = {}
	for i=1, 11 do player[2].losing[i] = canvas:new('pictures/impius/ImpiusDuelo' .. i .. '.png') end
	-- pictures running
	player[1].running = {}
	for i=1, 11 do player[1].running[i] = canvas:new('pictures/yago/YagoCasas' .. i .. '.png') end
	player[2].running = {}
	for i=1, 11 do player[2].running[i] = canvas:new('pictures/impius/ImpiusCasas' .. i .. '.png') end
	-- pictures typing
	player[1].typing = {}
	for i=1, 21 do player[1].typing[i] = canvas:new('pictures/yago/YagoDigitando' .. i .. '.png') end
	player[2].typing = {}
	for i=1, 7 do player[2].typing[i] = canvas:new('pictures/impius/ImpiusDigitando' .. i .. '.png') end
	event.register( handler )
end

-- moving animation
function moving(pl, mv, timing, pics)
	local dt, finalPosition = 0, pl.x+mv
	local X, index = {}, 1

	if pics==nil then pics = pl.moving end

	X[1] = pl.x + mv/#pics
	for i=2,#pics do X[i] = X[i-1] + mv/#pics end

	while true do
		pl.x = pl.x + (dt * mv) / timing
		pl.pic = pics[index]
		if (mv>0 and pl.x > X[index]) or (mv<0 and pl.x < X[index]) then index = index + 1 end

		if index > #pics then
			pl.x = finalPosition
			pl.pic = pl.moving[1]
			return true
		end
		dt = coroutine.yield()
	end
end

-- losing animation
function losing(pl)
	local W, H = canvas:attrSize()
	player[1].x = player[1].x - (43*W)/1024

	--if pl.x == player[2].x then player[2].x = player[2].x - (43*W)/1024 end
	for i=1,#pl.losing do
		pl.pic = pl.losing[i]
		local totalTime = 0
		while totalTime<300 do
			totalTime = totalTime + coroutine.yield()
		end
	end
	pl.pic = pl.moving[1]
	
	pl.lost = true
	coroutine.yield()
	
	player[1].x = player[1].x + (43*W)/1024
	return true
end

-- AI of Impius
function chooseCard()
	local hand = {}
	for i=1,5 do
		if player[2].pos - player[2].hand[i] >= player[1].pos then
			hand[#hand+1] = player[2].hand[i]
		end
	end
	if #hand==0 then return nil
	else
		-- Impius always play the highest card
		local maxCard = hand[1]
		for i=2,#hand do maxCard = math.max(maxCard, hand[i]) end
		return maxCard
	end
end

-- duell function
function duell(atk, dfs)
	local card = math.abs(atk.pos-dfs.pos)
	local atkForce, dfsForce = 0, 0
	for i=1,5 do
		atkForce = atkForce + ( (atk.hand[i]==card and 1) or 0 )
		atk.hand[i] = draw()
		dfsForce = dfsForce + ( (dfs.hand[i]==card and 1) or 0 )
	end
	
	if atkForce > dfsForce then return true end
	
	for i=1,5 do
		if dfs.hand[i]==card then
			dfs.hand[i] = draw()
			atkForce = atkForce - 1
			if atkForce==0 then break end
		end
	end
	
	if #atk.hand~=5 or #dfs.hand~=5 then
		if math.abs(12-atk.pos) < math.abs(12-dfs.pos) then return true
		else return false end
	end

	return nil
end

-- typing animation in the game over
function typingAnimation(pl)
	if not pl then 
		return (player[1].score>=3 and typingAnimation(player[1]))
				or typingAnimation(player[2])
	end
	for i=1,#pl.typing do
		pl.pic = pl.typing[i]
		local totalTime = 0
		while totalTime<200 do
			totalTime = totalTime + coroutine.yield()
		end
	end
	pl.pic = pl.moving[1]
	return true
end

-- animation of both avatars typing
function avatarsTyping()
	for i=1, math.min(#player[1].typing , #player[2].typing) do
		player[1].pic = player[1].typing[i]
		player[2].pic = player[2].typing[i]
		local totalTime = 0
		while totalTime<200 do
			totalTime = totalTime + coroutine.yield()
		end
	end
	player[1].pic = player[1].moving[1]
	player[2].pic = player[2].moving[1]
	return true
end

-- basic cycle logics
function run()
	local W, H = canvas:attrSize()
	local card = player[1].hand[ cursor ]
	if card + player[1].pos > player[2].pos then return true end
	
	if card + player[1].pos == player[2].pos then
		-- duelling
		avatarsTyping()
		
		local result = duell(player[1], player[2])
		if result then return losing(player[2])
		elseif result==false then return losing(player[1]) end
	else
		-- moving player[1]
		if card==1 then
			moving(player[1], (43*W)/1024, 800)
		else
			moving(player[1], ((43*card)*W)/1024, 400*card, player[1].running)
		end
		player[1].pos = player[1].pos + card
		
		--[[
		for i=1,card do
			moving(player[1], (43*W)/1024, 1000)
			player[1].pos = player[1].pos+1
		end
		--]]

		player[1].hand[ cursor ] = draw()
		if #player[1].hand~=5 then
			if player[1].pos > 22-player[2].pos then return losing(player[2])
			else return losing(player[1]) end
		end
	end

	card = chooseCard()
	if not card then return losing(player[2]) end	
	
	if player[2].pos - card == player[1].pos then
		-- duelling

		-- both avatars typing
		avatarsTyping()

		local result = duell(player[2], player[1])
		if result then return losing(player[1])
		elseif result==false then return losing(player[2]) end
	else
		-- moving player[2]
		if card==1 then
			moving(player[2], (-43*W)/1024, 800)
		else
			moving(player[2], ((-43*card)*W)/1024, 400*card, player[2].running)
		end
		player[2].pos = player[2].pos - card

		--[[
		for i=1,card do
			moving(player[2], (-43*W)/1024, 1000)
			player[2].pos = player[2].pos-1
		end
		--]]

		for i=1,5 do
			if player[2].hand[i]==card then
				player[2].hand[i] = draw()
				break
			end
		end
		if #player[2].hand~=5 then
			if player[1].pos > 22-player[2].pos then return losing(player[2])
			else return losing(player[1]) end
		end
	end
	
	-- checking if player[1] has any card to play
	for i=1,5 do
		if player[1].pos + player[1].hand[i] <= player[2].pos then
			return false
		end
	end
	return losing(player[1])
end

-- function called when user presses LEFT
function moveLeft()
	cursor = (cursor==1 and 5) or cursor-1
end

-- function called when user presses RIGHT
function moveRight()
	cursor = (cursor==5 and 1) or cursor+1
end

-- function to register animation
function createAnimation(f)
	local co = coroutine.create( f )
	animation[co] = true
	coroutine.resume( co )
	step{class='user', lastStep=event.uptime() }
end

-- basic step of animation
function step(evt)
	local now = event.uptime()
	for co in pairs(animation) do
		coroutine.resume( co, (evt.lastStep and now-evt.lastStep) or 0 )
		if coroutine.status( co )=='dead' then
			animation[co] = nil
		end
	end
	evt.lastStep = now
	if next(animation) then event.post('in', evt) end
end

-- function called when user presses ENTER
function enter()
	if not next(animation) then createAnimation(run) end
end

start()
