gl.setup(1920, 1080)

local scramble = require "scramble"

tux = resource.load_image('tux.png')

util.auto_loader(_G)

function write(font, x, y, text, size, r, g, b, a)
    local s = scramble.scramble(text)
    return function()
        font:write(x, y, s(), size, r, g, b, a)
    end
end

local lines = {
    write(light, 600, 0 * 200 + 20, "M/I.N[I", 220, 0.9, 0.9, 0.9, 1),
    write(light, 600, 1 * 200 + 20, "L.A/C]2", 220, 0.9, 0.9, 0.9, 1),
    write(light, 600, 2 * 200 + 20, "0.1-6/M", 220, 0.9, 0.9, 0.9, 1),
    write(light, 600, 3 * 200 + 20, "I/N-I.L", 220, 0.9, 0.9, 0.9, 1),
}


function node.render()
    gl.clear(0.2, 0.5, 0.8,1)
    tux:draw(230, 700, 450, 1080, 0.9)
    for i = 1, #lines do
        lines[i]()
    end
    bold:write(600, 4 * 200 + 20, "miniLAC", 220, 1, 1, 1, 1)
end
