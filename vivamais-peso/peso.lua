
--------------------------------------------------------------------------------
-- DRAWS: este trecho pode ser reaproveitado em outras aplicacoes
--------------------------------------------------------------------------------

local DX, DY = canvas:attrSize()         -- dimensoes da tela

local DRAWS = {}                         -- lista de desenhos

function redraw ()                       -- funcao de redesenho da lista
    for _, draw in ipairs(DRAWS) do
        draw:draw()
    end
    canvas:flush()
end

function drawRect (self)                 -- funcao para desenho de retangulos
    canvas:attrColor(self.color)
    canvas:drawRect('fill', self.x, self.y, self.dx, self.dy)
end

function drawText (self)                 -- funcao para desenho de textos
    canvas:attrColor(self.color)
    canvas:attrFont(self.face, self.dy)
    canvas:drawText(self.x, self.y, self.text)
end

function drawImage (self)                -- funcao para desenho de imagens
    canvas:compose(self.x, self.y, self.cvs)
end

--------------------------------------------------------------------------------
-- INICIO DO CODIGO DA APLICACAO
--------------------------------------------------------------------------------

local PADDING = 15
local APP
local HEIGHT = ''
local INPUT

-- fundo preto
DRAWS[#DRAWS+1] = {
    color = 'black',
    draw  = drawRect,
    x = 0, dx = DX,
    y = 0, dy = DY,
}

-- imagem de fundo
--[[
DRAWS[#DRAWS+1] = {
    cvs  = canvas:new('3dbox.png'),
    draw = drawImage,
    x = 0, y = 0,
}
]]

local END = false

function hdlr_enter (evt)
    if END then return end
	if evt.class ~= 'key'   then return end
	if evt.type  ~= 'press' then return end
	if evt.key == 'ENTER' then
		assert(coroutine.resume(APP))
	end
end

function hdlr_input (evt)
    if END then return end
	if evt.class ~= 'key'   then return end
	if evt.type  ~= 'press' then return end

    local key = evt.key
    if tonumber(key) then
        HEIGHT = HEIGHT .. key
    elseif key == 'CURSOR_LEFT' then
        HEIGHT = string.sub(HEIGHT, 1, -2)
    end
    INPUT.text = HEIGHT
    redraw()
end

APP = coroutine.create(
function()
	local message = {
	        text  = 'Entre com a sua altura (Ex 165):',
	        face  = 'vera',
	        color = 'white',
            draw  = drawText,
	        x = PADDING,
	        y = PADDING, dy = 20,
	    }
    DRAWS[#DRAWS+1] = message

	INPUT = {
	    text  = HEIGHT,
	    face  = 'vera',
	    color = 'white',
        draw  = drawText,
	    x  = message.x,
	    y  = message.y+message.dy+PADDING,
        dy = 20
	}
    DRAWS[#DRAWS+1] = INPUT
    redraw()

	event.register(hdlr_enter)
	event.register(hdlr_input)
    coroutine.yield()      -- espera o ENTER

    DRAWS[#DRAWS] = nil
    DRAWS[#DRAWS] = nil
    redraw()

	local answer
	if tonumber(HEIGHT) then
		answer = (HEIGHT/100)^2 * 25
		answer = "Seu peso maximo é "..string.format("%3.2f", answer)
	else
		answer = "Altura inválida!"
	end

	local message = {
	    text  = answer,
	    face  = 'vera',
	    color = 'white',
        draw  = drawText,
	    x = PADDING,
	    y = PADDING, dy = 20,
	}
    DRAWS[#DRAWS+1] = message
    redraw()

    coroutine.yield()      -- espera o ENTER
    event.post('out',
        { class='ncl', type='presentation', action='stop' })

    END = true
end)

event.register(function(evt)
	if evt.class ~= 'ncl' then return end
	if (evt.type == 'presentation') and (evt.action == 'start') then
		assert(coroutine.resume(APP))
	end
end)
