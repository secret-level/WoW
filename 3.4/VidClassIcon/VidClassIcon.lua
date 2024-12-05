hooksecurefunc("UnitFramePortrait_Update", function(self)
  if self.portrait then
    --UnitClass at index [2] returns English uppercase
    if select(2, UnitClass(self.unit)) == "DRUID" then
      local i, isInForm, hasTreeBuff = 1, false, false
      while UnitBuff(self.unit, i) do
        --UnitBuff at index [2] returns the id of the buff, although API documentation says [11]
        local id = select(2, UnitBuff(self.unit, i))
        --ChatFrame1:AddMessage(i)
        --ChatFrame1:AddMessage(id)
        --ChatFrame1:AddMessage("***")
        if id == 132115 then -- Cat Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_CatForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif id == 132276 then -- Bear Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Racial_BearForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif id == 132144 then -- Travel Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TravelForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif id == 136036 then -- Moonkin Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\ability_druid_improvedmoonkinform")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif id == 132128 then -- Flight Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_FlightForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif id == 132112 then -- Aquatic Form
          SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_AquaticForm")
          self.portrait:SetTexCoord(0,1,0,1)
          isInForm = true
        elseif id == 132145 then -- Tree of Life (has the same id as the aoe buff, check twice)
          if hasTreeBuff then
            SetPortraitToTexture(self.portrait, "Interface\\ICONS\\Ability_Druid_TreeofLife")
            self.portrait:SetTexCoord(0,1,0,1)
            isInForm = true
          else
            hasTreeBuff = true
          end
        end
        i = i + 1
      end
      if not isInForm then -- Druid icon
        self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles")
        --why not self.portrait:SetTexCoord(0, 1, 0, 1)
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