# 🐄 RSG Core - Required Items for Ranch System

Welcome to the **RSG Core Ranch System**!  
This README provides everything you need to set up the required items, whether you're using **RSG Core** or **VORP** framework.

---

## 📦 Required Items (for RSG Core)

If you are using **RSG Core**, copy and paste the following items into your `shared/items.lua`:

```lua
['egg'] = {['name'] = 'egg', ['label'] = 'Egg',  ['weight'] = 1, ['type'] = 'item', ['image'] = 'egg.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['milk'] = {['name'] = 'milk', ['label'] = 'Milk', ['weight'] = 1, ['type'] = 'item', ['image'] = 'milk.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['wool'] = {['name'] = 'wool', ['label'] = 'Wool', ['weight'] = 1, ['type'] = 'item', ['image'] = 'wool.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['goat_milk'] = {['name'] = 'goat_milk', ['label'] = 'Goat Milk', ['weight'] = 1, ['type'] = 'item', ['image'] = 'goat_milk.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['donkey_milk'] = {['name'] = 'donkey_milk', ['label'] = 'Donkey Milk', ['weight'] = 1, ['type'] = 'item', ['image'] = 'donkey_milk.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['ranch_food']  = {['name'] = 'ranch_food', ['label'] = 'Ranch Food',   ['weight'] = 1, ['type'] = 'item', ['image'] = 'ranch_food.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['ranch_water']  = {['name'] = 'ranch_water', ['label'] = 'Ranch Water', ['weight'] = 1, ['type'] = 'item', ['image'] = 'ranch_water.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['empty_bucket']  = {['name'] = 'empty_bucket', ['label'] = 'Ranch Water', ['weight'] = 1, ['type'] = 'item', ['image'] = 'empty_bucket.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['sheep_meat'] = {['name'] = 'sheep_meat', ['label'] = 'Sheep Meat', ['weight'] = 1, ['type'] = 'item', ['image'] = 'sheep_meat.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['cow_meat'] = {['name'] = 'cow_meat', ['label'] = 'Cow Meat', ['weight'] = 1, ['type'] = 'item', ['image'] = 'cow_meat.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['chicken_meat'] = {['name'] = 'chicken_meat', ['label'] = 'Chicken Meat', ['weight'] = 1, ['type'] = 'item', ['image'] = 'chicken_meat.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['pork_meat'] = {['name'] = 'pork_meat', ['label'] = 'Pork Meat', ['weight'] = 1, ['type'] = 'item', ['image'] = 'pork_meat.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['goat_meat'] = {['name'] = 'goat_meat', ['label'] = 'Goat Meat', ['weight'] = 1, ['type'] = 'item', ['image'] = 'goat_meat.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['donkey_meat'] = {['name'] = 'donkey_meat', ['label'] = 'Donkey Meat', ['weight'] = 1, ['type'] = 'item', ['image'] = 'donkey_meat.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['corn_seed'] = {['name'] = 'corn_seed', ['label'] = 'Corn Seed', ['weight'] = 1, ['type'] = 'item', ['image'] = 'corn_seed.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['corn'] = {['name'] = 'corn', ['label'] = 'Corn', ['weight'] = 1, ['type'] = 'item', ['image'] = 'corn.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['berry_seed'] = {['name'] = 'berry_seed', ['label'] = 'Berry Seed', ['weight'] = 1, ['type'] = 'item', ['image'] = 'berry_seed.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['red_berry'] = {['name'] = 'red_berry', ['label'] = 'Red Berry', ['weight'] = 1, ['type'] = 'item', ['image'] = 'red_berry.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['sheep_fertilizer'] = {['name'] = 'sheep_fertilizer', ['label'] = 'Sheep Fertilizer', ['weight'] = 1, ['type'] = 'item', ['image'] = 'sheep_fertilizer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['cow_fertilizer'] = {['name'] = 'cow_fertilizer', ['label'] = 'Cow Fertilizer', ['weight'] = 1, ['type'] = 'item', ['image'] = 'cow_fertilizer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['chicken_fertilizer'] = {['name'] = 'chicken_fertilizer', ['label'] = 'Chicken Fertilizer', ['weight'] = 1, ['type'] = 'item', ['image'] = 'chicken_fertilizer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['pig_fertilizer'] = {['name'] = 'pig_fertilizer', ['label'] = 'Pig Fertilizer', ['weight'] = 1, ['type'] = 'item', ['image'] = 'pig_fertilizer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['goat_fertilizer'] = {['name'] = 'goat_fertilizer', ['label'] = 'Goat Fertilizer', ['weight'] = 1, ['type'] = 'item', ['image'] = 'goat_fertilizer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['donkey_fertilizer'] = {['name'] = 'donkey_fertilizer', ['label'] = 'Donkey Fertilizer', ['weight'] = 1, ['type'] = 'item', ['image'] = 'donkey_fertilizer.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'ranch'},
['ranch_book'] = {['name'] = 'ranch_book', ['label'] = 'Ranch Book', ['weight'] = 1, ['type'] = 'item', ['image'] = 'ranch_book.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Ranch book is used to open the ranch actions of your ranch'},
['animals_whistle'] = {['name'] = 'animals_whistle', ['label'] = 'Animals Whistle', ['weight'] = 1, ['type'] = 'item', ['image'] = 'animals_whistle.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true, ['description'] = 'Animals whistle usually used to call the animals if the owner does not see them'},
```

---

## 🧬 How to Add Items (RSG Core)

1. Open your server files and go to `resources/[core]/rsg-core/shared/items.lua`.
2. Paste the code above inside the items table.
3. Save the file.
4. Restart the server.

---

## 🗃️ Required Items (for VORP)

If you're using **VORP**, these items need to be inserted into your SQL database instead.

### 📥 SQL Query:

```sql
INSERT INTO items (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `useExpired`, `groupId`, `metadata`, `desc`, `degradation`, `weight`) VALUES
('egg', 'Egg', 10, 1, 'item_standard', 1, 0, 1, '{}', 'A fresh egg from a chicken.', 0, 0.25),
('milk', 'Milk', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh cow milk.', 0, 0.25),
('wool', 'Wool', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Soft wool sheared from sheep.', 0, 0.25),
('goat_milk', 'Goat Milk', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh goat milk.', 0, 0.25),
('donkey_milk', 'Donkey Milk', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh donkey milk.', 0, 0.25),
('ranch_food', 'Ranch Food', 10, 1, 'item_standard', 1, 0, 1, '{}', 'A mix of food for ranch animals.', 0, 0.25),
('ranch_water', 'Ranch Water', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Clean water for ranch animals.', 0, 0.25),
('empty_bucket', 'Empty Bucket', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Bucket item after feeding or watering.', 0, 0.25),
('sheep_meat', 'Sheep Meat', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh sheep meat.', 0, 0.25),
('cow_meat', 'Cow Meat', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh cow meat.', 0, 0.25),
('chicken_meat', 'Chicken Meat', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh chicken meat.', 0, 0.25),
('pork_meat', 'Pork Meat', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh pork meat.', 0, 0.25),
('goat_meat', 'Goat Meat', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh goat meat.', 0, 0.25),
('donkey_meat', 'Donkey Meat', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fresh donkey meat.', 0, 0.25),
('corn_seed', 'Corn Seed', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Seeds for growing corn.', 0, 0.25),
('corn', 'Corn', 10, 1, 'item_standard', 1, 0, 1, '{}', 'A fresh corn cob.', 0, 0.25),
('berry_seed', 'Berry Seed', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Seeds for growing berries.', 0, 0.25),
('red_berry', 'Red Berry', 10, 1, 'item_standard', 1, 0, 1, '{}', 'A ripe red berry.', 0, 0.25),
('sheep_fertilizer', 'Sheep Fertilizer', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fertilizer made from sheep waste.', 0, 0.25),
('cow_fertilizer', 'Cow Fertilizer', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fertilizer made from cow waste.', 0, 0.25),
('chicken_fertilizer', 'Chicken Fertilizer', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fertilizer made from chicken waste.', 0, 0.25),
('pig_fertilizer', 'Pig Fertilizer', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fertilizer made from pig waste.', 0, 0.25),
('goat_fertilizer', 'Goat Fertilizer', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fertilizer made from goat waste.', 0, 0.25),
('donkey_fertilizer', 'Donkey Fertilizer', 10, 1, 'item_standard', 1, 0, 1, '{}', 'Fertilizer made from donkey waste.', 0, 0.25),
('ranch_book', 'Ranch Book', 10, 1, 'item_standard', 1, 0, 1, '{}', 'A book containing ranching knowledge.', 0, 0.25),
('animals_whistle', 'Animals Whistle', 10, 1, 'item_standard', 1, 0, 1, '{}', 'A whistle used to call animals.', 0, 0.25);
```

> 💾 **Note**: Make sure to backup your database before running SQL queries.

---

## 🖼️ Item Images

To display these items in the inventory UI:

1. Upload the following images to your inventory image folder:
   - `berry_seed.png`
   - `corn_seed.png`
   - `corn.png`
   - `red_berry.png`
   - `egg.png`
   - `goat_milk.png`
   - `milk.png`
   - `pork.png`
   - `ranch_food.png`
   - `ranch_water.png`
   - `ranch_book.png`
2. Restart your inventory or server if needed.

---

## ✅ Final Setup Checklist

- [x] Items added in `shared/items.lua` (RSG Core) or SQL (VORP)  
- [x] Item images placed correctly  
- [x] Server restarted  

You're now all set to enjoy the Ranch System with full functionality!

Happy ranching! 🐐🥚🥛🐖