# xakra_jobs
# Requirements:
- [oxmysql](https://github.com/VORPCORE/oxmysql)
- [vorp_menu](https://github.com/VORPCORE/vorp_menu)
- [vorp_core](https://github.com/VORPCORE/vorp-core-lua)
- [vorp_inventory](https://github.com/VORPCORE/vorp_inventory-lua)
- Open source framework functions to adapt the script to any framework

# Description:
With this script, players will have access to various types of jobs, deliveries and contracts. To access jobs and delivery contracts it will be at different points, each with a different menu, where you can choose required jobs and share experience between locations.

Each type of job will have an experience system, which you can earn by doing a job, and unlock the following jobs, with more difficulty and more reward.

This script will allow you to edit many job options, such as ped models, ped animation, number of enemies, spawn location, etc.

In each job location you create you can assign it to a location, for example certain deliveries are only in Valentine.

Deliveries:
- Corn: Go to the indicated place and load bags of corn into the cart and return the cart.
- Supplies: Take the cart to the customer, deliver the supplies and return the cart. You can choose: Furniture, Oranges, Apples and Boxes
- Liquor: Deliver a car loaded with liquor, protect the car from bandits so that they do not damage the liquor.
- Explosives: Deliver a cart loaded with explosives, protect it from enemies and deliver it before time runs out.

Contracts:
- Escort: escorts the client to the delivery point; From time to time, enemies will come on horseback to kill the client.
- Kidnapping: Rescue the kidnapped person, in the place where some bandits are guarding him.
- Prisoner: Rescue a prisoner who is in a caged car, protected by guards, you must break the car lock and deliver the prisoner safely.
- Train: Get on a moving train, full of guards and horse guards who will attack you, you will have to steal a sack and deliver it. (3 train models to choose from)

# You can configure:
- The language (Spanish and English by default)
- Keys
- Webooks
- The color of mission blips and gps waypoints
- Color of the ground marking and color of the huds used
- Enable or disable blips from bandits or enemies
- Disables the cinematic camera while a job is in progress
- Enable or disable that the same job can be started at the same time
- Number of times a global and individual job can be completed
- Locations of the deliveries and contracts (name, blip, coordinates, npc, jobs, maximum experience, required experience and required items)
- Job locations (Locations where it will start, coordinates, experience, items and reward money, npcs, number of deliveries, train model, among other options specific to each job)
- Framework functions

# Instructions to incorporate script:
- Copy the script into a folder (to choose) from the 'resources' folder.
- Add 'ensure xakra_jobs' in the 'Resources.cfg' document.
- Check the 'config.lua' file and configure to adapt the script.

Video (with jobs with short distances): https://youtu.be/zFjZwrtPX00