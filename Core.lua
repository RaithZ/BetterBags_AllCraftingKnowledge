-- BetterBags - All Crafting Knowledge
-- Registers a BetterBags category for all profession knowledge items.
-- Covers: Dragonflight, The War Within, and Midnight (placeholder).
-- Item data is loaded from Data/Dragonflight.lua, Data/TheWarWithin.lua, Data/Midnight.lua.

local addonName, ns = ...

local CATEGORY_NAME = "Profession Knowledge"

-- Plain-text name fragments to catch knowledge items not yet in the ID list.
-- Using plain matching (no regex) for speed.
local NAME_FRAGMENTS = {
    "Draconic Treatise",
    "Algari Treatise",
    "Thalassian Treatise",
    "Undermine Treatise",
    "Niffen Notebook",
    "Research Notes",
    "Ethereal Tome",
    "Crafting Knowledge",
    "Profession Knowledge",
}

local function isKnowledgeByName(name)
    if not name then return false end
    for i = 1, #NAME_FRAGMENTS do
        if name:find(NAME_FRAGMENTS[i], 1, true) then
            return true
        end
    end
    return false
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, name)
    if name ~= addonName then return end
    self:UnregisterEvent("ADDON_LOADED")

    -- BetterBags is guaranteed loaded first (listed in ## Dependencies)
    local ok, BetterBags = pcall(function()
        return LibStub("AceAddon-3.0"):GetAddon("BetterBags")
    end)

    if not ok or not BetterBags then
        print("|cffff4444[BetterBags - All Crafting Knowledge]|r: BetterBags not found. Please ensure BetterBags is installed.")
        return
    end

    -- silent=true so we get nil instead of an error if the module name ever changes
    local categories = BetterBags:GetModule("Categories", true)
    if not categories or not categories.RegisterCategoryFunction then
        print("|cffff4444[BetterBags - All Crafting Knowledge]|r: Incompatible BetterBags version — Categories module not found.")
        return
    end

    categories:RegisterCategoryFunction(addonName, function(itemData)
        if not itemData or not itemData.itemInfo then return end

        -- Primary check: curated item ID table (fast hash lookup)
        local itemID = itemData.itemInfo.itemID
        if itemID and ns.items[itemID] then
            return CATEGORY_NAME
        end

        -- Fallback: name fragment matching (catches new items not yet in the ID list)
        if isKnowledgeByName(itemData.itemInfo.itemName) then
            return CATEGORY_NAME
        end
    end)
end)
