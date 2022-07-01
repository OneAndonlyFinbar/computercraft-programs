local stopItem = '';
while(true) do
    local has_block, data = turtle.inspect()
    if(has_block and data.name ~= stopItem) then
        turtle.dig()
        turtle.forward()
        while(turtle.detectUp()) do
            turtle.digUp()
            turtle.up()
        end
        while(not turtle.detectDown()) do
            turtle.down()
        end
    end
end
