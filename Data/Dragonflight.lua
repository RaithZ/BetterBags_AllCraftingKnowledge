-- BetterBags - All Crafting Knowledge
-- Dragonflight (10.x) Profession Knowledge Items
-- Source: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
-- Note: Open-world treasures exist for crafting professions only; gathering professions
--       have no open-world treasure knowledge items in Dragonflight.

local _, ns = ...
ns.items = ns.items or {}
local items = ns.items

-- ============================================================
-- ARTISAN'S CONSORTIUM VENDOR BOOKS (sold by Rabul in Valdrakken)
-- Dusty / Rare / Ancient — +10 KP each, one-time purchase per character
-- ============================================================
local vendorBooks = {
    -- Alchemy
    [200974] = true, -- Dusty Alchemist's Research
    [201270] = true, -- Rare Alchemist's Research
    [201281] = true, -- Ancient Alchemist's Research
    -- Blacksmithing
    [200972] = true, -- Dusty Blacksmithing Research
    [201268] = true, -- Rare Blacksmithing Research
    [201279] = true, -- Ancient Blacksmithing Research
    -- Enchanting
    [200976] = true, -- Dusty Enchanting Research
    [201272] = true, -- Rare Enchanting Research
    [201283] = true, -- Ancient Enchanting Research
    -- Engineering
    [200977] = true, -- Dusty Engineering Research
    [201273] = true, -- Rare Engineering Research
    [201284] = true, -- Ancient Engineering Research
    -- Inscription
    [200973] = true, -- Dusty Inscription Research
    [201269] = true, -- Rare Inscription Research
    [201280] = true, -- Ancient Inscription Research
    -- Jewelcrafting
    [200978] = true, -- Dusty Jewelcrafting Research
    [201274] = true, -- Rare Jewelcrafting Research
    [201285] = true, -- Ancient Jewelcrafting Research
    -- Leatherworking
    [200979] = true, -- Dusty Leatherworking Research
    [201275] = true, -- Rare Leatherworking Research
    [201286] = true, -- Ancient Leatherworking Research
    -- Tailoring
    [200975] = true, -- Dusty Tailoring Research
    [201271] = true, -- Rare Tailoring Research
    [201282] = true, -- Ancient Tailoring Research
    -- Herbalism (gathering)
    [200980] = true, -- Dusty Herbalism Research
    [201276] = true, -- Rare Herbalism Research
    [201287] = true, -- Ancient Herbalism Research
    -- Mining (gathering)
    [200981] = true, -- Dusty Mining Research
    [201277] = true, -- Rare Mining Research
    [201288] = true, -- Ancient Mining Research
    -- Skinning (gathering)
    [200982] = true, -- Dusty Skinning Research
    [201278] = true, -- Rare Skinning Research
    [201289] = true, -- Ancient Skinning Research
}

-- ============================================================
-- DRACONIC TREATISES (crafted by Inscription, weekly use, +1 KP each)
-- ============================================================
local draconicTreatises = {
    [194697] = true, -- Draconic Treatise on Alchemy
    [198454] = true, -- Draconic Treatise on Blacksmithing
    [194702] = true, -- Draconic Treatise on Enchanting
    [198510] = true, -- Draconic Treatise on Engineering
    [194704] = true, -- Draconic Treatise on Herbalism
    [194699] = true, -- Draconic Treatise on Inscription
    [194703] = true, -- Draconic Treatise on Jewelcrafting
    [194700] = true, -- Draconic Treatise on Leatherworking
    [194708] = true, -- Draconic Treatise on Mining
    [201023] = true, -- Draconic Treatise on Skinning
    [194698] = true, -- Draconic Treatise on Tailoring
}

-- ============================================================
-- NIFFEN NOTEBOOKS (sold by Harlowe Marl, patch 10.1+, +1 KP each)
-- ============================================================
local niffenNotebooks = {
    [205353] = true, -- Niffen Notebook of Alchemy Knowledge
    [205352] = true, -- Niffen Notebook of Blacksmithing Knowledge
    [205351] = true, -- Niffen Notebook of Enchanting Knowledge
    [205349] = true, -- Niffen Notebook of Engineering Knowledge
    [205358] = true, -- Niffen Notebook of Herbalism Knowledge
    [205354] = true, -- Niffen Notebook of Inscription Knowledge
    [205348] = true, -- Niffen Notebook of Jewelcrafting Knowledge
    [205350] = true, -- Niffen Notebook of Leatherworking Knowledge
    [205356] = true, -- Niffen Notebook of Mining Knowledge
    [205357] = true, -- Niffen Notebook of Skinning Knowledge
    [205355] = true, -- Niffen Notebook of Tailoring Knowledge
}

-- ============================================================
-- OPEN-WORLD TREASURE / DROP KNOWLEDGE ITEMS
-- Found in Dragon Isles zone treasures and mob drops (crafting profs only)
-- Source: https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
-- ============================================================
local worldDrops = {
    -- Alchemy
    [198685] = true, -- Well-Insulated Mug
    [198663] = true, -- Frostforged Potion
    [198710] = true, -- Canteen of Suspicious Water
    [198599] = true, -- Experimental Decay Sample
    [198712] = true, -- Firewater Powder Sample
    [203471] = true, -- Tasty Candy
    [198697] = true, -- Contraband Concoction
    [205212] = true, -- Marrow-Ripened Slime
    [205211] = true, -- Nutrient Diluted Protofluid
    [205213] = true, -- Suspicious Mold
    [210185] = true, -- Splash Potion of Narcolepsy
    [210184] = true, -- Half-Filled Dreamless Sleep Potion
    [210190] = true, -- Blazeroot
    -- Blacksmithing
    [198791] = true, -- Glimmer of Blacksmithing Wisdom
    [201007] = true, -- Ancient Monument
    [201005] = true, -- Curious Ingots
    [201008] = true, -- Molten Ingot
    [201010] = true, -- Qalashi Weapon Diagram
    [201004] = true, -- Ancient Spear Shards
    [201009] = true, -- Falconer Gauntlet Drawings
    [201011] = true, -- Spelltouched Tongs
    [201006] = true, -- Draconic Flux
    [205987] = true, -- Brimstone Rescue Ring
    [205986] = true, -- Well-Worn Kiln
    [205988] = true, -- Zaqali Elder Spear
    [210465] = true, -- Deathstalker Chassis
    [210466] = true, -- Flamesworn Render
    [210464] = true, -- Amirdrassil Defender's Shield
    -- Enchanting
    [198798] = true, -- Flashfrozen Scroll
    [198675] = true, -- Lava-Infused Seed
    [201012] = true, -- Enchanted Debris
    [198799] = true, -- Forgotten Arcane Tome
    [201013] = true, -- Faintly Enchanted Remains
    [198694] = true, -- Enriched Earthen Shard
    [204990] = true, -- Lava-Drenched Shadow Crystal
    [205001] = true, -- Resonating Arcane Crystal
    [204999] = true, -- Shimmering Aqueous Orb
    [210231] = true, -- Everburning Core
    [210228] = true, -- Pure Dream Water
    [210234] = true, -- Essence of Dreams
    -- Engineering
    [201014] = true, -- Boomthyr Rocket
    [198789] = true, -- Intact Coil Capacitor
    [204475] = true, -- Busted Wyrmhole Generator
    [204471] = true, -- Defective Survival Pack
    [204853] = true, -- Discarded Dracothyst Drill
    [204850] = true, -- Handful of Khaz'gorite Bolts
    [204470] = true, -- Haphazardly Discarded Bomb
    [204480] = true, -- Inconspicuous Data Miner
    [204469] = true, -- Misplaced Aberrus Outflow Blueprints
    [204855] = true, -- Overclocked Determination Core
    [210194] = true, -- Insomniotron
    [210193] = true, -- Experimental Dreamcatcher
    [210197] = true, -- Unhatched Battery
    [210198] = true, -- Depleted Battery
    -- Inscription
    [198704] = true, -- Pulsing Earth Rune
    [198703] = true, -- Sign Language Reference Sheet
    [198693] = true, -- Dusty Darkmoon Card
    [198686] = true, -- Frosted Parchment
    [198669] = true, -- How to Train Your Whelpling
    [198659] = true, -- Forgetful Apprentice's Tome
    [201015] = true, -- Counterfeit Darkmoon Deck
    [206034] = true, -- Hissing Rune Draft
    [206035] = true, -- Ancient Research
    [206031] = true, -- Intricate Zaqali Runes
    [210458] = true, -- Winnie's Notes on Flora and Fauna
    [210460] = true, -- Primalist Shadowbinding Rune
    [210459] = true, -- Grove Keeper's Pillar
    -- Jewelcrafting
    [198687] = true, -- Closely Guarded Shiny
    [201017] = true, -- Igneous Gem
    [198670] = true, -- Lofty Malygite
    [198660] = true, -- Fragmented Key
    [198664] = true, -- Crystalline Overgrowth
    [201016] = true, -- Harmonic Crystal Harmonizer
    [198682] = true, -- Alexstraszite Cluster
    [198656] = true, -- Painter's Pretty Jewel
    [205219] = true, -- Broken Barter Boulder
    [205216] = true, -- Gently Jostled Jewels
    [205214] = true, -- Snubbed Snail Shells
    [210200] = true, -- Petrified Hope
    [210201] = true, -- Handful of Tiny Pebbles
    [210202] = true, -- Coalesced Dreamstone
    -- Leatherworking
    [198711] = true, -- Poacher's Pack
    [198696] = true, -- Wind-Blessed Hide
    [201018] = true, -- Well-Danced Drum
    [198658] = true, -- Decay-Infused Tanning Oil
    [198683] = true, -- Treated Hides
    [198690] = true, -- Decayed Scales
    [204986] = true, -- Flame-Infused Scale Oil
    [204987] = true, -- Lava-Forged Leatherworker's "Knife"
    [204988] = true, -- Sulfur-Soaked Skins
    [210215] = true, -- Dreamtalon Claw
    [210208] = true, -- Tuft of Dreamsaber Fur
    [210211] = true, -- Molted Faerie Dragon Scales
    -- Tailoring
    [198699] = true, -- Mysterious Banner
    [198702] = true, -- Itinerant Singed Fabric
    [198692] = true, -- Noteworthy Scrap of Carpet
    [201020] = true, -- Silky Surprise
    [198680] = true, -- Decaying Brackenhide Blanket
    [198662] = true, -- Intriguing Bolt of Blue Cloth
    [198684] = true, -- Miniature Bronze Dragonflight Banner
    [201019] = true, -- Ancient Dragonweave Bolt
    [206019] = true, -- Abandoned Reserve Chute
    [206030] = true, -- Exquisitely Embroidered Banner
    [206025] = true, -- Used Medical Wrap Kit
    [210461] = true, -- Exceedingly Soft Wildercloth
    [210463] = true, -- Snuggle Buddy
    [210462] = true, -- Plush Pillow
}

-- ============================================================
-- GATHERING NODE SIDE-ITEMS (+1 KP, drop from Dragon Isles nodes)
-- ============================================================
local gatheringNodeItems = {
    -- Herbalism
    [194041] = true, -- Driftbloom Sprout (+1 KP)
    [194054] = true, -- Dredged Seedling (+1 KP)
    [194055] = true, -- Primordial Soil (+1 KP)
    [194061] = true, -- Suffocating Spores (+1 KP)
    [194080] = true, -- Peculiar Bud (+1 KP)
    [194081] = true, -- Mutated Root (+1 KP)
    [200677] = true, -- Dreambloom Petal (+1 KP)
    [202014] = true, -- Infused Pollen (+1 KP)
    [200678] = true, -- Dreambloom (+3 KP)
    -- Mining
    [194039] = true, -- Heated Ore Sample (+1 KP)
    [194062] = true, -- Unyielding Stone Chunk (+1 KP)
    [194063] = true, -- Glowing Fragment (+1 KP)
    [194064] = true, -- Intricate Geode (+1 KP)
    [194078] = true, -- Perfect Draconium Scale (+1 KP)
    [194079] = true, -- Pure Serevite Nugget (+1 KP)
    [201300] = true, -- Iridescent Ore Fragments (+1 KP)
    [202011] = true, -- Elementally Charged Stone (+1 KP)
    [201301] = true, -- Iridescent Ore (+3 KP)
    -- Herbalism/Mining Field Notes
    [199115] = true, -- Herbalism Field Notes (+3 KP)
    [199122] = true, -- Mining Field Notes (+3 KP)
}

-- ============================================================
-- MOB DROP KNOWLEDGE ITEMS (+1 KP, drop from Dragon Isles mobs)
-- ============================================================
local mobDropItems = {
    -- Alchemy
    [193891] = true, -- Experimental Substance (+1 KP)
    [193897] = true, -- Reawakened Catalyst (+1 KP)
    [198963] = true, -- Decaying Phlegm (+1 KP)
    [198964] = true, -- Elementious Splinter (+1 KP)
    -- Blacksmithing
    [192131] = true, -- Valdrakken Weapon Chain (+1 KP)
    [192132] = true, -- Draconium Blade Sharpener (+1 KP)
    [198965] = true, -- Primeval Earth Fragment (+1 KP)
    [198966] = true, -- Molten Globule (+1 KP)
    -- Enchanting
    [193900] = true, -- Prismatic Focusing Shard (+1 KP)
    [193901] = true, -- Primal Dust (+1 KP)
    [198967] = true, -- Primordial Aether (+1 KP)
    [198968] = true, -- Primalist Charm (+1 KP)
    -- Engineering
    [193902] = true, -- Eroded Titan Gizmo (+1 KP)
    [193903] = true, -- Watcher Power Core (+1 KP)
    [198969] = true, -- Keeper's Mark (+1 KP)
    [198970] = true, -- Infinitely Attachable Pair o' Docks (+1 KP)
    -- Inscription
    [193904] = true, -- Phoenix Feather Quill (+1 KP)
    [193905] = true, -- Iskaaran Trading Ledger (+1 KP)
    [198971] = true, -- Curious Djaradin Rune (+1 KP)
    [198972] = true, -- Draconic Glamour (+1 KP)
    -- Jewelcrafting
    [193907] = true, -- Chipped Tyrstone (+1 KP)
    [193909] = true, -- Ancient Gem Fragments (+1 KP)
    [198973] = true, -- Incandescent Curio (+1 KP)
    [198974] = true, -- Elegantly Engraved Embellishment (+1 KP)
    -- Leatherworking
    [193910] = true, -- Molted Dragon Scales (+1 KP)
    [193913] = true, -- Preserved Animal Parts (+1 KP)
    [198975] = true, -- Ossified Hide (+1 KP)
    [198976] = true, -- Exceedingly Soft Skin (+1 KP)
    -- Tailoring
    [193898] = true, -- Umbral Bone Needle (+1 KP)
    [193899] = true, -- Primalweave Spindle (+1 KP)
    [198977] = true, -- Ohn'arhan Weave (+1 KP)
    [198978] = true, -- Stupidly Effective Stitchery (+1 KP)
}

-- ============================================================
-- FORBIDDEN REACH RARE DROPS (+1 KP each)
-- ============================================================
local forbiddenReachDrops = {
    [204222] = true, -- Conductive Ametrine Shard (+1 Jewelcrafting)
    [204224] = true, -- Speck of Arcane Awareness (+1 Enchanting)
    [204225] = true, -- Perfect Windfeather (+1 Tailoring)
    [204226] = true, -- Blazehoof Ashes (+1 Alchemy)
    [204227] = true, -- Everflowing Antifreeze (+1 Engineering)
    [204228] = true, -- Undigested Hochenblume Petal (+1 Herbalism)
    [204229] = true, -- Glimmering Rune of Arcantrix (+1 Inscription)
    [204230] = true, -- Dense Seaforged Javelin (+1 Blacksmithing)
    [204232] = true, -- Slyvern Alpha Claw (+1 Leatherworking)
    [204233] = true, -- Impenetrable Elemental Core (+1 Mining)
    [204632] = true, -- Tectonic Rock Fragment (+1 Mining)
}

-- ============================================================
-- PATRON ORDER KNOWLEDGE ITEMS (+2/+3 KP)
-- ============================================================
local patronOrderItems = {
    [198606] = true, -- Blacksmith's Writ (+3 KP)
    [198607] = true, -- Scribe's Glyphs (+3 KP)
    [198608] = true, -- Alchemy Notes (+3 KP)
    [198609] = true, -- Tailoring Examples (+3 KP)
    [198610] = true, -- Enchanter's Script (+3 KP)
    [198611] = true, -- Engineering Details (+2 KP)
    [198612] = true, -- Jeweler's Cuts (+3 KP)
    [198613] = true, -- Leatherworking Designs (+3 KP)
    [198667] = true, -- Spare Djaradin Tools (+3 KP)
    [201003] = true, -- Furry Gloop (+3 KP)
}

-- ============================================================
-- NOTEBOOK OF CRAFTING KNOWLEDGE (+5/+10 KP, weekly quest rewards)
-- ============================================================
local notebooksOfKnowledge = {
    [201706] = true, -- Notebook of Crafting Knowledge - Alchemy (+5 KP)
    [201708] = true, -- Notebook of Crafting Knowledge - Blacksmithing (+5 KP)
    [201709] = true, -- Notebook of Crafting Knowledge - Enchanting (+5 KP)
    [201710] = true, -- Notebook of Crafting Knowledge - Engineering (+5 KP)
    [201711] = true, -- Notebook of Crafting Knowledge - Inscription (+5 KP)
    [201712] = true, -- Notebook of Crafting Knowledge - Jewelcrafting (+5 KP)
    [201713] = true, -- Notebook of Crafting Knowledge - Leatherworking (+5 KP)
    [201715] = true, -- Notebook of Crafting Knowledge - Tailoring (+5 KP)
    [201705] = true, -- Notebook of Crafting Knowledge - Herbalism (+5 KP)
    [201700] = true, -- Notebook of Crafting Knowledge - Mining (+5 KP)
    [201717] = true, -- Notebook of Crafting Knowledge - Herbalism (+10 KP)
    [201716] = true, -- Notebook of Crafting Knowledge - Mining (+10 KP)
}

-- ============================================================
-- BARTERED NOTES (sold by Ponzo, 25 Barter Boulders, +5 KP each)
-- ============================================================
local barteredNotes = {
    [205428] = true, -- Bartered Alchemy Notes
    [205427] = true, -- Bartered Blacksmithing Notes
    [205426] = true, -- Bartered Enchanting Notes
    [205424] = true, -- Bartered Engineering Notes
    [205429] = true, -- Bartered Inscription Notes
    [205445] = true, -- Bartered Jewelcrafting Notes
    [205425] = true, -- Bartered Leatherworking Notes
    [205431] = true, -- Bartered Mining Notes
    [205432] = true, -- Bartered Herbalism Notes
    [205430] = true, -- Bartered Tailoring Notes
}

-- ============================================================
-- BARTERED JOURNALS (sold by Ponzo, 90 Barter Bricks, +5 KP each)
-- ============================================================
local barteredJournals = {
    [205439] = true, -- Bartered Alchemy Journal
    [205438] = true, -- Bartered Blacksmithing Journal
    [205437] = true, -- Bartered Enchanting Journal
    [205435] = true, -- Bartered Engineering Journal
    [205440] = true, -- Bartered Inscription Journal
    [205434] = true, -- Bartered Jewelcrafting Journal
    [205436] = true, -- Bartered Leatherworking Journal
    [205442] = true, -- Bartered Mining Journal
    [205443] = true, -- Bartered Herbalism Journal
    [205441] = true, -- Bartered Tailoring Journal
}

-- Register all items into shared namespace
for id in pairs(vendorBooks) do items[id] = true end
for id in pairs(draconicTreatises) do items[id] = true end
for id in pairs(niffenNotebooks) do items[id] = true end
for id in pairs(worldDrops) do items[id] = true end
for id in pairs(gatheringNodeItems) do items[id] = true end
for id in pairs(mobDropItems) do items[id] = true end
for id in pairs(forbiddenReachDrops) do items[id] = true end
for id in pairs(patronOrderItems) do items[id] = true end
for id in pairs(notebooksOfKnowledge) do items[id] = true end
for id in pairs(barteredNotes) do items[id] = true end
for id in pairs(barteredJournals) do items[id] = true end
