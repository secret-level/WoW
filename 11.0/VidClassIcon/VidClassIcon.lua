hooksecurefunc("UnitFramePortrait_Update", function(self)
    if self.portrait then
        if select(2, UnitClass(self.unit)) == "DRUID" then
            local isInForm = false
            if self.unit == "player" then -- "player" API that handles travel form better
                local formId = GetShapeshiftFormID()
                if formId == 5 then -- Bear Form
                    SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Racial_BearForm")
                    self.portrait:SetTexCoord(0,1,0,1)
                    isInForm = true
                elseif formId == 1 then -- Cat Form
                    SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_CatForm")
                    self.portrait:SetTexCoord(0,1,0,1)
                    isInForm = true
                elseif formId == (31 or 32 or 33 or 34 or 35) then -- Moonkin Form (different races)
                    SetPortraitToTexture(self.portrait, "Interface\\ICONS\\ability_druid_improvedmoonkinform")
                    self.portrait:SetTexCoord(0,1,0,1)
                    isInForm = true
                elseif formId == 2 then -- Tree of Life
                    SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
                    self.portrait:SetTexCoord(0,1,0,1)
                    isInForm = true
                elseif formId == 36 then -- Treant Form
                    SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
                    self.portrait:SetTexCoord(0,1,0,1)
                    isInForm = true
                elseif formId == 3 then -- Ground Travel and Mount Form
                    SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TravelForm")
                    self.portrait:SetTexCoord(0,1,0,1)
                    isInForm = true               
                elseif formId == 27 then -- Swift Flight Form
                  SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_FlightForm")
                  self.portrait:SetTexCoord(0, 1, 0, 1)
                  isInForm = true
                elseif formId == 4 then -- Aquatic Form
                  SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_AquaticForm")
                  self.portrait:SetTexCoord(0, 1, 0, 1)
                  isInForm = true
                end
            else -- checking non-"player" for form buffs
                local i = 1
                while C_UnitAuras.GetBuffDataByIndex(self.unit, i) do
                    local id = C_UnitAuras.GetBuffDataByIndex(self.unit, i).spellId
                    -- ChatFrame1:AddMessage(i) ChatFrame1:AddMessage(id)
                    -- /dump C_UnitAuras.GetBuffDataByIndex("player", 1)
                    if id == 5487 then -- Bear Form
                        SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Racial_BearForm")
                        self.portrait:SetTexCoord(0,1,0,1)
                        isInForm = true
                    elseif id == 768 then -- Cat Form
                        SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_CatForm")
                        self.portrait:SetTexCoord(0,1,0,1)
                        isInForm = true
                    elseif id == 24858 then -- Moonkin Form
                        SetPortraitToTexture(self.portrait,"Interface\\ICONS\\ability_druid_improvedmoonkinform")
                        self.portrait:SetTexCoord(0,1,0,1)
                        isInForm = true
                    elseif id == 33891 then -- Tree of Life
                        SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
                        self.portrait:SetTexCoord(0,1,0,1)
                        isInForm = true
                    elseif id == 114282 then -- Treant Form
                        SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
                        self.portrait:SetTexCoord(0,1,0,1)
                        isInForm = true
                    elseif id == 783 then -- Travel Form (Cheetah, Aquatic, Flight)
                        SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TravelForm")
                        self.portrait:SetTexCoord(0,1,0,1)
                        isInForm = true
                    end
                    i = i + 1
                end
            end
            if not isInForm then -- Druid icon for non-player
                self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
                self.portrait:SetTexCoord(unpack(CLASS_ICON_TCOORDS.DRUID))
            end
        else -- other classes' icon
            local t = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
            if t then
                self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
                self.portrait:SetTexCoord(unpack(t))
            end
        end
    end
end)