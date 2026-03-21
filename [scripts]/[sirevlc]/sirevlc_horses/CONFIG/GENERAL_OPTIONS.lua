Config = Config or {}
 
-- VERSION 4.09 - 11.02.26
 
-- EXPORTS : 
-- exports.sirevlc_horses_v3.GET_PLAYER_HORSE() 			 -- THIS WILL RETURN THE PLAYER HORSE ENTITY CLIENT ID / WILL RETURN FALSE IF the PLAYER_HORSE DOESN'T EXIST
-- exports.sirevlc_horses_v3.GET_PLAYER_HORSE_SERVER_ID() 	 -- THIS WILL RETURN THE PLAYER HORSE ENTITY SERVER ID / WILL RETURN FALSE IF the PLAYER_HORSE DOESN'T EXIST
 
--------------------------------------------------
			-- FRAMEWORK SELECTION --
-------------------------------------------------- 
-- TURN YOUR FRAMEWORK TO TRUE AND ALL THE OTHERS TO FALSE

Config.REDEMRP2023REBOOT 				 = false
Config.VORP              				 = true
Config.RSG               				 = false
 
--------------------------------------------------
			-- GENERAL OPTIONS --
--------------------------------------------------  
Config.Debug                             = false    	    			-- THIS IS TO SHOW DEBUG PRINTS

-- BUCKETS 
-- BY DEFAULT INSTANCE #1000 TO INSTANCE #1100 ARE DEDICATED TO TRAININGS
Config.BUCKET_MIN 						 = 1000 					-- THIS WILL BE THE MINIMUM BUCKET INSTANCE NUMBER 
Config.BUCKET_MAX 						 = 1100 					-- THIS WILL BE THE MAX BUCKET INSTANCE NUMBER 

-- EXPANSION		
Config.HORSES_MISSIONS_USED              = false             		-- SET THIS TO TRUE IF YOU HAVE SIREVLC_HORSES_MISSIONS 

-- GENERAL 		
Config.INSTANCE_DELETE_DELAY	  		 = 100              		-- SET THE DELAY BEFORE REMOVING THE HORSE SERVER SIDE (ON SOME SERVERS DELAY MAY BE NEEDED BETWEEN INSTANCES TO RETURN THE CORRECT ENTITY ID VALUES) 
 	
Config.MENU_DISPLAY_FONT                 = 1                		-- THIS CAN BE CHANGED TO CHANGE THE FONT USED IN TRAINING CHECKPOINT DISPLAY BOX
 	
Config.MAX_HORSE_XP						 = 5000    					-- SET THE MAX AMOUNT OF XP A HORSE CAN HAVE 
Config.MAX_HORSE_XP_NOTIFICATION		 = true    					-- ENABLE / DISABLE MAX XP NOTIFICATION
 
Config.PLAYER_STABLE_PROTECTION          = true            		-- ENABLE / DISABLE PLAYER PROTECTION WHEN IN STABLE MENU 

Config.HIDE_PARENTS_MENU_AFTER_DURATION  = false					    -- IF TRUE IT WILL HIDE THE PARENTS MENU AFTER A CERTAIN AMOUNT OF TIME 
Config.HIDE_PARENTS_MENU_DURATION 	     = 5000					    -- AFTER THIS AMOUNT OF TIME THE PARENTS MENU WILL AUTOMATICALLY HIDE ITSELF FOR EACH MENU ELEMENT SCROLL

 
-- SPAWN OPTIONS	
Config.TACK_SPAWN_DELAY          		 = 200 						-- SPAWN DELAY FOR TACK SPAWN - INCREASE IT IF YOUR TACK DOESNT SPAWN PROPERLY	
Config.SPAWN_HORSE_BY_WHISTLING     	 = true    					-- ENABLE OR DISABLE HORSE SPAWN BY WHISTLING 
Config.SPAWN_HORSE_STABLES_ONLY          = false    	    		-- IF SET TO TRUE YOU'LL BE ABLE TO SPAWN YOUR HORSE ONLY FROM THE STABLES MENU
Config.SPAWN_DISTANCE           		 = 4.0    					-- MINIMAL SPAWN DISTANCE FOR YOUR HORSE (IT WILL AUTOMATICALLY ADJUST IF THE HORSE SPAWN COORD IS IN BUILDING)
Config.SPAWN_EVERYWHERE_METHOD           = true 					-- IF SET TO TRUE IT WILL SPAWN YOUR HORSE NEAR YOU NO MATTER THE CONDITIONS (BUILDINGS / ROADS)
		
Config.SPAWN_HORSE_BY_COMMAND            = false   					-- TURN THIS TO TRUE IF YOU WANT TO CALL YOUR HORSE BY COMMAND / YOU WILL HAVE TO USE THAT COMMAND AGAIN TO ASK IT TO FOLLOW YOU
Config.HORSE_CALLING_COMMAND             = "spawn_my_horse" 		-- SET THE DESIRED COMMAND TO SPAWN THE HORSE IF Config.SPAWN_HORSE_BY_COMMAND = true 
		
Config.FORCE_SPAWN_ZONE_ENABLED 		 = false 					-- IF TRUE IT WILL SCAN THE DEFINED ZONES IN Config.FORCE_SPAWN_ZONE and force the horse to spawn at these coords if the player distance is < to the distance param
Config.FORCE_SPAWN_ZONE = {
[1] = {label = "example_1", coords = {-350.12, 796.83, 116.19}, spawn_coords = {-363.62, 820.71, 116.13}, distance = 30.0 },
} 

Config.RESTRICT_SPAWN_ZONE_ENABLED		 = false 					-- IF TRUE IT WILL ENABLE SPAWN ZONE RESTRICTION
Config.RESTRICT_SPAWN_ZONE = {
	[1] = {label = "example_1", coords = {-352.19, 795.08, 116.22},  distance = 100.0 },   -- LABEL, CENTER COORDS OF THE AREA, DETECTION DISTANCE (PLAYER <-> ZONE CENTER)
} 
 
Config.HORSE_REVIVE_TIMER                = 60      					-- TIME IN SECONDS YOUR HORSE WILL REMAIN DOWNED IN A REVIVE STATE BEFORE IT DIES 
Config.MenuMusic                         = true			    		-- ENABLE / DISABLE MUSIC IN STABLE MENU
		
Config.CLASSIC_STABLES_RDO_CUTSCENES     = false   					-- ENABLE OR DISABLE THE CLASSIC RDO STYLE CUTSCENES WHEN ENTERING / EXITING THE STABLES
Config.EnableNotifications               = true					
		
Config.ENABLE_HORSE_PICKING 			 = true    					-- IF SET TO TRUE IT WILL ENABLE HORSE PICKING HERBS (YOU MUST OWN SIREVLC_HERBS FOR THIS TO WORK)
Config.FOLLOW_DISTANCE_OFFSET            = -5.0    					-- THE HORSE WILL AIM TO FOLLOW THIS DISTANCE BEHIND YOU
Config.NOTIFICATION_1_DURATION			 = 2000    					-- DURATION OF THE TYPE 1 NOTIFICATION 
Config.NOTIFICATION_2_DURATION			 = 2000    					-- DURATION OF THE TYPE 2 NOTIFICATION 
Config.NOTIFICATION_3_DURATION			 = 10000    				-- DURATION OF THE TYPE 3 NOTIFICATION 
		
Config.MIN_SCALE                         = 0.8              		-- SET THE MINIMUM SCALE THAT YOUR HORSE CAN HAVE WHEN CUSTOMIZING IT
Config.MAX_SCALE                         = 1.1              		-- SET THE MAXIMUM SCALE THAT YOUR HORSE CAN HAVE WHEN CUSTOMIZING IT / NOTE THAT OVER 1.1 ANIMATIONS CAN BE BROKEN FOR FEMALE CHARACTERS
		
Config.THROW_RIDER_LEVEL 				 = 3 						-- ABOVE THIS COURAGE STAT VALUE YOUR HORSE WILL STOP THROWING THE RIDER OFF WHEN NEAR PREDATORS (NO EFFECTS ON PERSONALITY ANIMAL FEAR)

 
Config.FILTER_HORSE_DISPLAY              = "GREYED" 				-- "GREYED" / "FILTERED" -  "GREYED": ALL HORSES ARE DISPLAYED BUT GREYED IF YOU CANT PURCHASE THEM / "FILTERED": YOU CANT SEE HORSES YOU CANT PURCHASE
Config.TACK_PRICE_DIVIDER                = 2 						-- WHEN SELLING YOUR TACK THE INITAL PRICE WILL BE DIVIDED BY THIS

Config.ENABLE_FLASH_PULSE 				 = false	                -- ENABLE OR DISABLE FLASH PULSE FX WHEN SENDING THE HORSE BACK TO THE STABLES	
 
Config.STABLE_FILTER_ENABLED             = false             		-- IF TRUE IT WILL DISPLAY A SOFT VISUAL FILTER
Config.REMOVE_CARGO_PROMPT               = true 		    		-- IF TRUE IT WILL DISABLED THE CARGO PROMPT YOU GET WHEN YOU ARE CLOSE TO YOUR HORSE 
 
-----------------------------------
	-- SHARED SADDLEBAGS --
------------------------------------  
Config.STASH_NAME                        = "Saddlebags"   -- THIS WILL BE THE NAME DISPLAYED WHEN OPENING HORSE SADDLEBAGS 
Config.SHARED_SADDLEBAGS	  			 = false           -- IF SET TO TRUE, ANYONE WITH THE JOB LISTED BELOW WILL BE ABLE TO ACCESS OTHER PLAYERS HORSES SADDEBLAGS
Config.SHARED_SADDLEBAGS_JOBS 			 = {
 "horsetrainer",
 "unemployed",
}
 
 
-----------------------------------
	-- HORSE LIMITS --
------------------------------------  
--MANDATORY TO AVOID HEAVY EVENTS + DB ISSUES
Config.OWNED_HORSE_LIMIT                			 = true     -- IF SET TO TRUE IT WILL SET AN OWNED HORSE LIMIT. DON'T FORGET TO SET EITHER ROLES OR PLAYERS METHOD TO TRUE 
Config.OWNED_HORSE_LIMIT_USE_ROLES                   = false 	-- IF SET TO TRUE IT WILL USE THE ROLE METHOD    / DONT USE ROLE AND PLAYER METHOD AT THE SAME TIME !!!
Config.OWNED_HORSE_LIMIT_USE_PLAYER                  = true 	-- IF SET TO TRUE IT WILL USE THE PLAYER METHOD  / DONT USE ROLE AND PLAYER METHOD AT THE SAME TIME !!!

Config.OWNED_HORSE_LIMIT_ROLES_JOBS = {
[1] = {DATABASE_JOB_LABEL = "OTHER_JOBS",    LIMIT = 10 }, 		-- EVERY OTHER JOB THAN THE ONES LISTED BELOW WILL HAVE THIS LIMIT IF Config.OWNED_HORSE_LIMIT = true 
--[2] = {DATABASE_JOB_LABEL = "horsetrainer",  LIMIT = 5 },
--[3] = {DATABASE_JOB_LABEL = "trapper"     ,  LIMIT = 5 },
--[4] = {DATABASE_JOB_LABEL = "doctor"      ,  LIMIT = 5 },
}
 
Config.OWNED_HORSE_LIMIT_ROLES_PLAYERS = {
[1] = {IDENTIFIER = "horsetrainerval",  CHARID = "horsetrainerval",  LIMIT = 20 },
[2] = {IDENTIFIER = "horsetrainerblk",  CHARID = "horsetrainerblk",  LIMIT = 20 },
[3] = {IDENTIFIER = "horsetrainersai",  CHARID = "horsetrainersai",  LIMIT = 20 },   -- EVERY OTHER PLAYER THAN THE ONES LISTED BELOW WILL HAVE THIS LIMIT IF Config.OWNED_HORSE_LIMIT = true 
[4] = {IDENTIFIER = "horsetrainertum",  CHARID = "horsetrainertum",  LIMIT = 20 },
[5] = {IDENTIFIER = "horsetrainerdew",  CHARID = "horsetrainerdew",  LIMIT = 20 },
[6] = {IDENTIFIER = "horsetrainermcf",  CHARID = "horsetrainermcf",  LIMIT = 20 },
[7] = {IDENTIFIER = "horsetrainerstr",  CHARID = "horsetrainerstr",  LIMIT = 20 },
[8] = {IDENTIFIER = "horsetrainerpro",  CHARID = "horsetrainerpro",  LIMIT = 20 },
[9] = {IDENTIFIER = 0,  CHARID = 0, LIMIT = 10 }, 											 
}
 
-----------------------------------
	-- TACK LIMIT --
-----------------------------------   
--MANDATORY TO AVOID HEAVY EVENTS + DB ISSUES
Config.OWNED_TACK_LIMIT                			 = true  
Config.OWNED_TACK_LIMIT_USE_ROLES                = true 	-- IF SET TO TRUE IT WILL USE THE ROLE METHOD    / DONT USE ROLE AND PLAYER METHOD AT THE SAME TIME !!!
Config.OWNED_TACK_LIMIT_USE_PLAYER               = false 	-- IF SET TO TRUE IT WILL USE THE PLAYER METHOD  / DONT USE ROLE AND PLAYER METHOD AT THE SAME TIME !!!
 
Config.OWNED_TACK_LIMIT_ROLES_JOBS = {
[1] = {DATABASE_JOB_LABEL = "OTHER_JOBS",    LIMIT = 5 }, -- EVERY OTHER JOB THAN THE ONES LISTED BELOW WILL HAVE THIS LIMIT IF Config.OWNED_TACK_LIMIT = true 
[2] = {DATABASE_JOB_LABEL = "horsetrainer",  LIMIT = 5 },
[3] = {DATABASE_JOB_LABEL = "trapper"     ,  LIMIT = 5 },
[4] = {DATABASE_JOB_LABEL = "doctor"      ,  LIMIT = 5 },
}

Config.OWNED_TACK_LIMIT_ROLES_PLAYERS = {
[1] = {IDENTIFIER = "OTHER_PLAYERS",  CHARID = "OTHER_PLAYERS",  LIMIT = 3 },   -- EVERY OTHER PLAYER THAN THE ONES LISTED BELOW WILL HAVE THIS LIMIT IF Config.OWNED_HORSE_LIMIT = true 
[2] = {IDENTIFIER = 0,  CHARID = 0, LIMIT = 5 }, 								 
}
 
--------------------------------------------------
			-- HORSE TAGS  --
--------------------------------------------------
Config.ENABLE_HORSE_TAG            		   = false             -- IF SET TO TRUE IT ENABLES THE HORSE TAG SYSTEM
Config.HORSE_TAG_NETWORKED            	   = false             -- HAVING THESE NETWORKED IS HEAVIER ON CLIENT <--> SERVER TRAFFIC ! IF SET TO TRUE TAGS WILL BE NETWORKED / IF FALSE ONLY THE CLIENT WILL SEE HIS OWN HORSE TAG 
Config.HORSE_TAG_NETWORKED_ONLY_NAMES      = false             -- IF TRUE IT WILL ONLY DISPLAY HORSE NAMES 
Config.HORSE_TAG_NETWORK_RANGE             = 40.0             -- ONLY SHOW NETWORKED HORSE TAGS WITHIN THIS DISTANCE (IN GAME UNITS)
Config.HORSE_TAG_DISPLAYED_ELEMENTS 	   = { 				-- ELEMENTS DISPLAYED ON HORSE TAG
"LOVE"         ,
"HUNGER"       ,
"THIRST"       ,
"BONDING_LEVEL",
"XP"           ,
"MAIN_TITLE"   ,
"SECOND_TITLE" ,
"PERSONALITY"  ,
"",
} 

Config.ENABLE_HORSE_TAG_CONTROL_SHOW     = 0x4BC9DABB 	 	-- WHAT CONTROL HASHKEY IS USED TO HIDE / SHOW THE TAG IF Config.ENABLE_HORSE_TAG = true 
Config.ENABLE_HORSE_TAG_CONTROL_CYCLE    = 0xD8F73058 		-- WHAT CONTROL HASHKEY IS USED TO CYCLE THROUGH THE METABOLISM INFOS 
 
Config.NAMES_BLACKLIST = { 				 -- BLACKLIST OF NAMES THAT CANT BE USED 
"example_1",
"example_2",
}
 
--------------------------------- 
--  VORP STASH OPTIONS --
--------------------------------- 
Config.acceptWeapons        				= true
Config.shared               				= true
Config.ignoreItemStackLimit 				= true
Config.whitelistItems       				= false
Config.UsePermissions       				= false
Config.UseBlackList         				= true
Config.whitelistWeapons     				= false
-- see https://docs.vorp-core.com/api-reference/inventory#registerinventory for official documentation 

----------------------------------- 
----------------------------------- 
 
--------------------------------------------------
	       -- DISCORD WEBHOOKS --
-------------------------------------------------- 
Config.WEBHOOKURL                       	 		= "https://discord.com/api/webhooks/1471343764835406066/JzYqP8UZWRBUmg7kcBLXX9IApzmqSrBDfp6bGO7zpct8YZPAlUklowRfg0KEYqpasmGT"
Config.WEBHOOKMAINTITLE                 	 		= "Stables"
Config.WEBHOOK_NAME        	 	 			 		= "HORSE NAME: 	"
Config.WEBHOOK_BREED_NAME        	 		 		= "BREED NAME: 	"
Config.WEBHOOK_COAT_NAME        	 		 		= "COAT NAME: 	"
Config.WEBHOOK_GENDER       	 			 		= "GENDER: 	"
Config.WEBHOOK_MALE       	 				 		= "Male"
Config.WEBHOOK_FEMALE      	 				 		= "Female"
Config.WEBHOOK_GELDED      	 				 		= "Gelded"
Config.WEBHOOK_ACTION        	 			 		= "ACTION: "
Config.WEBHOOK_GOLD              			 		= "Gold	"	
Config.WEBHOOK_SELLER              			 		= "SELLER:	"	
Config.WEBHOOK_BUYER              			 		= "BUYER:	"	
Config.WEBHOOK_PRICE              			 		= "PRICE:	"	
		
Config.WEBHOOK_HORSE_SELL_TO_STABLES         		= "Horse Stable Sell"
Config.WEBHOOK_HORSE_WILD_HORSE_ADOPTED      		= "Wild Horse Adoption"
Config.WEBHOOK_HORSE_WILD_HORSE_SOLD      			= "Wild Horse Sell"
Config.WEBHOOK_HORSE_PURCHASE_FROM_STABLES   		= "Horse Stable Purchase"
Config.WEBHOOK_HORSE_PURCHASE_FROM_PLAYER    		= "Horse Player Purchase"
Config.WEBHOOK_HORSE_DEATH					 		= "Horse Death"
Config.WEBHOOK_USE_BLACKLIST_NAME			 		= "Tried to use a blacklisted name"
Config.WEBHOOK_SPAYED                       		= "Spayed"

-- TURN TO TRUE IF YOU WANT TO USE THE DISCORD WEBHOOK FOR THESE EVENT:  
--
-- ADOPTED A WILD HORSE EVENT             
Config.WEBHOOK_HORSE_WILD_HORSE_ADOPTED_ENABLED      = false 
-- SOLD A WILD HORSE EVENT             
Config.WEBHOOK_HORSE_WILD_HORSE_SELL_ENABLED         = false  
 -- PURCHASE FROM STABLE EVENT                                
Config.WEBHOOK_HORSE_PURCHASE_FROM_STABLES_ENABLED   = false  
-- PURCHASE FROM PLAYER EVENT                                 
Config.WEBHOOK_HORSE_PURCHASE_FROM_PLAYER_ENABLED    = false  
-- SOLD HORSE TO STABLE                                       
Config.WEBHOOK_HORSE_SELL_TO_STABLES_ENABLED 		 = false  
-- TRIED TO USE A BLACKLISTED NAME                            
Config.WEBHOOK_BLACKLIST_REPORT  			 		 = false  
---------------------------------------------------------------------- 
----------------------------------------------------------------------  

-----------------------------------
	-- WEATHER SENSIBILITY --
------------------------------------  
 Config.WEATHER_DEBUG							 = false    -- ENABLE WEATHER DEBUG PRINTS
 Config.WEATHER_SENSIBILITY_ENABLED 			 = false  	-- ENABLE / DISABLE THE TEMPERATURE SENSIBILITY FOR HORSES
 
 Config.WEATHER_GALLOP_RESTRICTION 			 	 = false  	-- ENABLE / DISABLE THE GALLOP RESTRICTION IF THE HORSE ISN'T IN THE RIGHT ENVIRONMENT
 Config.WEATHER_AGITATION 			 	    	 = false  	-- ENABLE / DISABLE AGITATION IF THE HORSE ISN'T IN THE RIGHT ENVIRONMENT
 Config.WEATHER_SWEAT	 			 	    	 = false  	-- ENABLE / DISABLE SWEATING IF THE HORSE ISN'T IN THE RIGHT ENVIRONMENT
 
 Config.WEATHER_COLD_THRESHOLD 	 				 = 5 	 	-- UNDER THIS TEMPERATURE, WEATHER IS CONSIDERED AS COLD
 Config.WEATHER_HOT_THRESHOLD 	 				 = 30  	 	-- ABOVE THIS TEMPERATURE, WEATHER IS CONSIDERED AS HOT 
 
 Config.WEATHER_NOTIF_ENABLED                    = false
 Config.WEATHER_NOTIF_COOLDOWN_MINUTES           = 3
 
 Config.NOTIF_TEXT_HORSE_COLD                    = "Your horse feels cold"
 Config.NOTIF_TEXT_HORSE_HOT                     = "Your horse feels hot"


 Config.WEATHER_SENSIBILITY_STATS_DEBUFF = {
 [1] = {WEATHER = "HOT",   STATS_DEBUFF 	 = {HEALTH = 0, STAMINA = 0, COURAGE = 0, AGILITY = 0, SPEED = 0, ACCELERATION = 0}}, 
 [2] = {WEATHER = "COLD",  STATS_DEBUFF 	 = {HEALTH = 0, STAMINA = 0, COURAGE = 0, AGILITY = 0, SPEED = 0, ACCELERATION = 0}}, 
 }
 
 
 -------------------------------------
            -- PROMPTS --
------------------------------------- 
-- STP = SELL TO PLAYER
Config.PROMPT_HORSE_BRUSH          		 		= 0x7F8D09B8 	-- V
Config.PROMPT_HORSE_BRUSH_TEXT           		= "Brush"	
	
Config.PROMPT_HORSE_PAT          		 		= 0x5415BE48 	-- G
Config.PROMPT_HORSE_PAT_TEXT           			= "Pat"	
	
Config.PROMPT_HORSE_LEAD                  		= 0xCEFD9220 	-- E
Config.PROMPT_HORSE_LEAD_TEXT                   = "Lead"	
	
Config.PROMPT_HORSE_FEED                  		= 0x9959A6F0 	-- C
Config.PROMPT_HORSE_FEED_TEXT                   = "Feed" 	
	
Config.PROMPT_HORSE_SADDLEBAGS            		= `INPUT_FRONTEND_UP` 	-- UP ARROW
Config.PROMPT_HORSE_SADDLEBAGS_TEXT             = "Open Saddlebags" 

Config.PROMPT_HORSE_REMOVE_SADDLE         		= 0x8AAA0AD4 -- LALT
Config.PROMPT_HORSE_REMOVE_SADDLE_TEXT          = "Remove Saddle"

Config.PROMPT_HORSE_ADD_SADDLE            		= 0x8AAA0AD4 	-- LALT
Config.PROMPT_HORSE_ADD_SADDLE_TEXT             = "Put Saddle" 	

Config.PROMPT_HORSE_REVIVE        		  		= 0xD9D0E1C0 	-- SPACE
Config.PROMPT_HORSE_REVIVE_TITLE     	  	    = "Injured Horse"
Config.PROMPT_HORSE_REVIVE_TEXT           	    = "Revive" 

Config.PROMPT_HORSE_REVIVE_FORCE_DEATH    		= 0xC7B5340A  	 -- ENTER
Config.PROMPT_HORSE_REVIVE_FORCE_DEATH_TEXT     = "Send to stable"  
  
Config.PROMPT_WILD_HORSE_GROUP_NAME         	= "Wild Horse"
Config.PROMPT_WILD_HORSE_GOLD        			= "G" 

Config.PROMPT_WILD_HORSE_SELL             		= 0xC7B5340A 	-- ENTER 
Config.PROMPT_WILD_HORSE_SELL_TEXT          	= "Sell"
 
Config.PROMPT_WILD_HORSE_ADOPT            		= 0x9959A6F0 	-- C
Config.PROMPT_WILD_HORSE_ADOPT_TEXT      		= "Adopt" 

Config.PROMPT_STP_BUY            		  		= 0xC7B5340A 	-- ENTER
Config.PROMPT_STP_BUY_TEXT         				= "Purchase Horse" 

Config.PROMPT_MENU_OPEN                   		= 0xC7B5340A 	-- ENTER
Config.PROMPT_MENU_OPEN_TEXT            		= "Open Menu"

--
Config.PROMPT_TRAINING_LEADING_START            = `INPUT_FRONTEND_UP` 	    -- UP ARROW
Config.PROMPT_TRAINING_LEADING_START_TEXT       = "Leading"

Config.PROMPT_TRAINING_ONMOUNT_START            = `INPUT_FRONTEND_LEFT`     -- LEFT ARROW 
Config.PROMPT_TRAINING_ONMOUNT_START_TEXT       = "On Mount"

Config.PROMPT_TRAINING_BOTH_START           	= `INPUT_FRONTEND_RIGHT` 	-- RIGHT ARROW 
Config.PROMPT_TRAINING_BOTH_START_TEXT      	= "Leading + On Mount"

Config.PROMPT_TRAINING_LUNGING_START            = `INPUT_FRONTEND_DOWN` 	-- DOWN ARROW 
Config.PROMPT_TRAINING_LUNGING_START_TEXT       = "Lunging"
 
 
Config.SHORTCUT_BRUSHING_ENABLED 				= 0x4CC0E2FE -- IF ENABLED YOU'LL BE ABLE TO BRUSH YOUR HORSE WHEN PRESSING THIS KEY WHILE ON MOUNT | SET TO false TO DISABLE
Config.SHORTCUT_FEEDING_ENABLED  				= 0x8CC9CD42 -- IF ENABLED YOU'LL BE ABLE TO FEED YOUR HORSE WHEN PRESSING THIS KEY WHILE ON MOUNT  | SET TO false TO DISABLE

-----------------------------------------
		-- CAMERA SETTINGS -- 
-----------------------------------------
Config.CAMERA_KEY_CHANGE_TEXT              		= " CAMERA CONTROLS: \n Forward - W \n Backward - S \n Left - A \n Right - D \n Slide Forward - Q \n Slide Backwards - E \n Up - JUMP \n Down - SHIFT \n Speed Up - Mouse Wheel Up \n Speed Down - Mouse Wheel Down"
Config.CAMERA_KEY_NOTIF_DURATION            	= 3000

Config.MAX_SPEED 	  							= 0.12
Config.SPEED 	  								= 0.10
Config.SPEED_MIN 	  							= 0.01
Config.SPEED_INCREASE 							= 0.01
				
Config.SPEED_MIN_ADJUSTMENT 					= 0.001
Config.SPEED_MAX_ADJUSTMENT 					= 100.0
Config.SPEED_INCREASE_ADJUST 					= 0.001
Config.SPEED_ADJUST 							= 0.01
Config.SPEED_ROTATE 							= 1.0
				
Config.SPEED_INCREASE_KEY       				= {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`} -- PAGE UP, MOUSE WHEEL UP
Config.SPEED_DECREASE_KEY       				= {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`} -- PAGE DOWN, MOUSE WHEEL DOWN
Config.CONTROL_UP               				= `INPUT_JUMP`   			 				-- SPACEBAR
Config.CONTROL_DOWN             				= `INPUT_SPRINT` 			 				-- SHIFT
Config.CONTROL_FORWARD          				= `INPUT_MOVE_UP_ONLY`    	 				-- W
Config.CONTROL_BACKWARD         				= `INPUT_MOVE_DOWN_ONLY`  	 				-- S
Config.CONTROL_LEFT             				= `INPUT_MOVE_LEFT_ONLY`  	 				-- A
Config.CONTROL_RIGHT            				= `INPUT_MOVE_RIGHT_ONLY` 	 				-- D
Config.SLIDE_LEFT            					= `INPUT_DIVE`   							-- Q
Config.SLIDE_RIGHT            					= `INPUT_GAME_MENU_TAB_RIGHT`				-- E 
 	
 
--------------------------------------
      --HORSE BONDING LEVEL--
--------------------------------------

--REQUIRED HORSE XP FOR EACH BONDING LEVEL 
Config.BONDING_LEVEL_5 				= 5000 
Config.BONDING_LEVEL_4 				= 5000  
Config.BONDING_LEVEL_3 				= 3000
Config.BONDING_LEVEL_2 				= 1500
Config.BONDING_LEVEL_1 				= 650

-- HEALTH STAMINA COURAGE, AGILITY, SPEED, ACCELERATION
Config.BONDING_LEVEL_0_STAT_BONUS 	 = {HEALTH = 0, STAMINA = 0, COURAGE = 0, AGILITY = 0, SPEED = 0, ACCELERATION = 0}
Config.BONDING_LEVEL_1_STAT_BONUS 	 = {HEALTH = 0, STAMINA = 1, COURAGE = 0, AGILITY = 1, SPEED = 1, ACCELERATION = 1}
Config.BONDING_LEVEL_2_STAT_BONUS 	 = {HEALTH = 1, STAMINA = 2, COURAGE = 1, AGILITY = 2, SPEED = 2, ACCELERATION = 2}
Config.BONDING_LEVEL_3_STAT_BONUS 	 = {HEALTH = 2, STAMINA = 3, COURAGE = 2, AGILITY = 2, SPEED = 3, ACCELERATION = 3}
Config.BONDING_LEVEL_4_STAT_BONUS 	 = {HEALTH = 3, STAMINA = 3, COURAGE = 2, AGILITY = 2, SPEED = 3, ACCELERATION = 4}
Config.BONDING_LEVEL_5_STAT_BONUS 	 = {HEALTH = 3, STAMINA = 3, COURAGE = 2, AGILITY = 2, SPEED = 3, ACCELERATION = 4}
--------------------------------------------------
--------------------------------------------------

				--AGING SYSTEM--
	
--------------------------------------------------	
--------------------------------------------------
-- AGING V4.0 ADDITIONS
Config.AGING_ENABLED                     = true
Config.AGING_ENABLE_NOTIFICATIONS        = true 
Config.AGING_OFFLINE                    = true
Config.AGING_SERVER_EVENT_CHECK          = 1
Config.AGING_HOUR_OR_MINUTE              = "HOUR"
Config.AGING_IRL_TIME_HORSE_YEAR        = 1440  -- 60 days in hours
Config.AGING_MAX_HORSE_AGE               = 31
Config.AGING_HORSE_AGE_ON_PURCHASE       = math.random(10,13)
Config.AGING_HORSE_AGE_WILD_HORSE       = math.random(10,13)
 
--------------------------------------------------
--------------------------------------------------
				--HORSESHOE --	
--------------------------------------------------	
--------------------------------------------------
-- BONUS STATS :
-- STATS ARE FROM 1 TO 9
Config.SHOES_BONUS_ENABLED               = true
Config.SHOES_BONUS_STATS                 = {HEALTH = 1, STAMINA = 5, COURAGE = 1, AGILITY = 1, SPEED = 3, ACCELERATION = 3}

Config.SHOES_DURABILITY_OFFLINE           = true  -- Disable durability when offline
Config.SHOES_DURABILITY                   = true 
Config.SHOES_DURABILITY_CHECK            = 720        -- Check every 720 minutes (12 hours)
Config.SHOES_DURABILITY_HOUR_OR_MINUTE   = "MINUTE"    -- Can be "HOUR" or "MINUTE"
Config.SHOES_DURABILITY_TIMER             = 7200        -- Shoes last for 7200 minutes (5 days)
 
 
--------------------------------------------------
--------------------------------------------------
	-- AUTOMATICALLY SEND BACK HORSE OPTION --	
--------------------------------------------------	
-------------------------------------------------- 

Config.AUTOMATIC_HORSE_DELETE          = false -- IF DISTANCE IS SUPERIOR TO VALUE BELOW IT WILL AUTOMATICALLY DELETE YOUR HORSE
Config.AUTOMATIC_HORSE_DELETE_DISTANCE = 9999    
 
-----------------------------------------
-----------------------------------------
	-- SELL CALCULATION PRICE --	
-----------------------------------------	
----------------------------------------- 
-- FINAL_PRICE = ((PURCHASE * DOLLARS_MULTIPLIER) + (XP * XP_MULTIPLIER)) * STABLE_MULTIPLIER * BREED_MULTIPLIER

--  How the horse selling price is calculated:
--  We take the horse’s base value.
--  We add a bonus based on its experience (XP).
--  Then we apply the stable and breed multipliers.
-- For example:

-- If you bought a horse for $100, and it has 200 XP, with:
-- DOLLARS_MULTIPLIER = 0.5
-- XP_MULTIPLIER = 0.2
-- STABLE_MULTIPLIER = 1.0
-- BREED_MULTIPLIER = 1.0

-- Then the selling price is calculated like this:
-- Base value:
-- 100 × 0.5 = 50
-- XP bonus:
-- 200 × 0.2 = 40
-- Final price:
-- (50 + 40) × 1.0 × 1.0 = 90
-- 👉 Final selling price: $90
 
-- DOLLARS --
Config.DOLLARS_MULTIPLIER 			  = 0.9
Config.XP_MULTIPLIER      			  = 0.1

-- GOLD (ONLY FOR VORP) --
Config.GOLD_VORP_ENABLED              = false -- (FOR VORP ONLY) ENABLE OR DISABLE GOLD CURRENCY
Config.GOLD_XP_MULTIPLIER      		  = 0.2
Config.GOLD_MULTIPLIER  			  = 0.5
  
 