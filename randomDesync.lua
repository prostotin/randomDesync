-- made by prost
function random_desync()
local entity = entities.GetLocalPlayer();
if entity ~= nil then
    local alive = entity:IsAlive();
    local health = entity:GetHealth();
    if (alive == true and health > 0) then
      if(gui.GetValue("rbot_antiaim_enable")) then 
      gui.SetValue("rbot_antiaim_stand_desync", math.random(0,4));
      gui.SetValue("rbot_antiaim_move_desync", math.random(0,4));
      gui.SetValue("rbot_antiaim_edge_desync", math.random(0,4));
      end
    end
end
end
callbacks.Register('Draw', 'random_desync', random_desync)
