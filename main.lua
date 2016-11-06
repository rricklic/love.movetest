xloc = 400;
yloc = 300;
size = 25;
wDown = 0;
aDown = 0;
dDown = 0;
sDown = 0;
speed = 100;

function love.load()
end

function love.update(dt)
    if wDown == 1 then
        yloc = yloc - (speed*dt)
    end

    if aDown == 1 then
        xloc = xloc - (speed*dt)
    end

    if dDown == 1 then
        xloc = xloc + (speed*dt)
    end

    if sDown == 1 then
        yloc = yloc + (speed*dt)
    end

end

function love.draw()
    love.graphics.polygon("fill", xloc, yloc, xloc+size, yloc, xloc+size, yloc+size, xloc, yloc+size) 
    love.graphics.print("FPS: "..love.timer.getFPS(), 10, 20)
    love.graphics.print("speed: "..speed, 10, 40)
end

function love.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
end

function love.keypressed(key)
    if key == 'w' then
        wDown = 1;
    end;

    if key == 'a' then
        aDown = 1;
    end;  

    if key == 'd' then
        dDown = 1;
    end;

    if key == 's' then
        sDown = 1;
    end;

    if key == 'space' then
       speed = speed + 100;
    end;

    if key == 'b' then
       speed = speed - 100;
    end;

end

function love.keyreleased(key)
    if key == 'w' then
        wDown = 0;
    end;

    if key == 'a' then
        aDown = 0;
    end;

    if key == 'd' then
        dDown = 0;
    end;

    if key == 's' then
        sDown = 0;
    end;
end

function love.focus(f)
end

function love.quit()
end
