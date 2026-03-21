
-- create npcs that are optimized to render/de-render based on distance 
-- r is the render distance the player has to be to check for spawn/despawn
Config.npc = {

     {  -- this is just a template ! you can use it to create your own store npcs 
        npcmodel = `s_m_m_bankclerk_01`, 
        coords = {x=-816.1183,y=-1275.9175,z=42.6377,h =276.2422,r = 50},              
        grounded = false, -- helps find ground level (doesnt work well if the npc is under a roof set to false in that case)
    }, 

         {  -- this is just a template ! you can use it to create your own store npcs 
        npcmodel = `u_m_o_vhtexoticshopkeeper_01`, 
        coords = {x=-162.6537,y=1732.8873,z=169.7715,h =188.0406,r = 50},              
        grounded = false, -- helps find ground level (doesnt work well if the npc is under a roof set to false in that case)
    }, 
   
}
