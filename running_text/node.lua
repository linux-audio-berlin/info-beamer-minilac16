gl.setup(1920, 1080)

tux = resource.load_image('tux.png')

util.auto_loader(_G)

function feeder()
    return {"A Text", "Another Text"}
end

text = util.running_text{
    font = bold;
    size = 150;
    speed = 280;
    color = {0.2, 0.2, 0.2, 1};
    generator = util.generator(feeder)
}

function node.render()
    gl.clear(1,1,1,1)
    tux:draw(230, 700, 450, 1080, 0.9)
    text:draw(HEIGHT/2)
end
